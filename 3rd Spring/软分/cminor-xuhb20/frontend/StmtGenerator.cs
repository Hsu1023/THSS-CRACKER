using System.Diagnostics;
using System.Collections.Generic;

using Antlr4.Runtime.Misc;

namespace cminor
{
    partial class CFAGenerator : CMinorParserBaseVisitor<Expression?>
    {
        public override Expression? VisitExprStmt([NotNull] CMinorParser.ExprStmtContext context)
        {
            Debug.Assert(currentLocation != null);
            Debug.Assert(currentFunction != null);

            // 这里的表达式的返回值在对象语言中是可以为 void 的，
            // 也就是在元语言中可以为 null。
            Visit(context.expr());

            return null;
        }

        public override Expression? VisitIfStmt([NotNull] CMinorParser.IfStmtContext context)
        {
            Debug.Assert(currentLocation != null);
            Debug.Assert(currentFunction != null);

            // 先把 condition variable 算出来，如果是一个比较复杂的表达式的话，就加一个辅助变量作为 variable
            Expression conditionExpression = CompressedExpression(TypeConfirm(context.expr(), true, BoolType.Get()), counter.GetCondition);

            Location prevLocation = currentLocation;

            // then-branch
            Location thenLocation = new Location(currentFunction, currentLocation, new AssumeStatement
            {
                condition = conditionExpression
            });
            currentLocation = thenLocation;
            symbolTables.Push(new Dictionary<string, LocalVariable>());
            Visit(context.stmt()[0]);
            symbolTables.Pop();
            Location? visitedThenLocation = currentLocation;

            // else-location
            Location elseLocation = new Location(currentFunction, prevLocation, new AssumeStatement
            {
                condition = new NotExpression(conditionExpression)
            });
            currentLocation = elseLocation;
            if (context.stmt().Length == 2)
            {
                symbolTables.Push(new Dictionary<string, LocalVariable>());
                Visit(context.stmt()[1]);
                symbolTables.Pop();
            }
            Location? visitedElseLocation = currentLocation;

            // 在访问过之后，相应的 location 可能为空
            // 因为被 break 或者 return 了
            if (visitedThenLocation != null || visitedElseLocation != null)
            {
                currentLocation = new Location(currentFunction);
                if (visitedThenLocation != null)
                    Location.Merge(currentFunction, currentLocation, visitedThenLocation);
                if (visitedElseLocation != null)
                    Location.Merge(currentFunction, currentLocation, visitedElseLocation);
            }

            return null;
        }

        /* while (cond) { body }

               ...
                |
                * <--------
                |          |
         [cond calculator] |
                |          |
     ---------- *          |
     |          |          |
  [!cond]     [cond]       |
     |          |          |
     |          *          |
     |          |          |
     |        [body]       |
     |          |          |
     |          -----------
     |
      --------> *
                |
               ...
        */
        public override Expression? VisitWhileStmt([NotNull] CMinorParser.WhileStmtContext context)
        {
            Debug.Assert(currentLocation != null);
            Debug.Assert(currentFunction != null);

            // calculate condition
            LoopHeadLocation loopheadLocation = CalcLoopHeadLocation(context.loopAnnot());
            Location.Merge(currentFunction, loopheadLocation, currentLocation);
            currentLocation = loopheadLocation;
            Location? outerContLocation = contLocation;
            contLocation = loopheadLocation;

            Expression condition = CompressedExpression(TypeConfirm(context.expr(), true, BoolType.Get()), counter.GetCondition);
            Location afterConditionLocation = currentLocation;

            // 开一个新的作用域
            symbolTables.Push(new Dictionary<string, LocalVariable>());

            // 进入到 loop body
            currentLocation = new Location(currentFunction, currentLocation, new AssumeStatement
            {
                condition = condition
            });

            // 搞一个 exit loop location
            Location exitLoopLocation = new Location(currentFunction, afterConditionLocation, new AssumeStatement
            {
                condition = new NotExpression(condition)
            });
            Location? outerBreakLocation = breakLocation;
            breakLocation = exitLoopLocation;

            // 访问 body
            Visit(context.stmt());
            if (currentLocation != null)
            {
                Location.Merge(currentFunction, loopheadLocation, currentLocation);
            }

            // 结束循环
            symbolTables.Pop();
            currentLocation = breakLocation;
            breakLocation = outerBreakLocation;
            contLocation = outerContLocation;

            return null;
        }

        /* for ( var := init ; cond ; iter) { body }
        
               ...
                |
                *
                |
              [init]
                |
                *----------
                |          |
        [cond calculator]  |
                |          |
     ---------- *          |
     |          |          |
  [!cond]     [cond]    [iter]
     |          |          |
     |          *          |
     |          |          |
     |        [body]       |
     |          |          |
     |          *-----------
     |
     *----------|
                |
               ...
        */
        public override Expression? VisitForStmt([NotNull] CMinorParser.ForStmtContext context)
        {
            Debug.Assert(currentLocation != null);
            Debug.Assert(currentFunction != null);

            // 开一个新的作用域
            symbolTables.Push(new Dictionary<string, LocalVariable>());

            if (context.forInit() != null)
            { // declaration and possible initialization
                if (context.forInit().localVar() != null)
                {
                    LocalVariable localVariable = CalcLocalVar(context.forInit().localVar());
                    if (context.forInit().expr() != null)
                        Assign(localVariable, context.forInit().expr());
                }
                else
                {
                    Debug.Assert(context.forInit().assign() != null);
                    Visit(context.forInit().assign());
                }
            }

            // loop head location
            LoopHeadLocation loopheadLocation = CalcLoopHeadLocation(context.loopAnnot());
            Location.Merge(currentFunction, loopheadLocation, currentLocation);
            currentLocation = loopheadLocation;

            // condition
            Expression condition = context.expr() == null
                ? new BoolConstantExpression(true)
                : CompressedExpression(TypeConfirm(context.expr(), true, BoolType.Get()), counter.GetCondition);
            
            Location afterConditionLocation = currentLocation;

            // 开一个 body location，以 loop condition 作为 assume 语句的条件
            currentLocation = new Location(currentFunction, afterConditionLocation, new AssumeStatement
            {
                condition = condition
            });

            // 开一个 exit loop location，其中其实只有一条 assume 语句
            Location? outerBreakLocation = breakLocation;
            breakLocation = new Location(currentFunction, afterConditionLocation, new AssumeStatement
            {
                condition = new NotExpression(condition)
            });

            // 访问 body
            Visit(context.stmt());

            // cont (iter) location
            Location? outerContLocation = contLocation;
            contLocation = currentLocation;
            if (context.forIter() != null)
            {
                if (context.forIter().expr() != null)
                {
                    // 对于 iterExpr，其实我们可以无需理会它的返回表达式，
                    // 因为事实上唯一有副作用的是 function call，
                    // 而我们会为 function call 自动生成语句。
                    Visit(context.forIter());
                }
                else
                {
                    // 也可能放到 iteration 位置上的不是 expr，而是一个 assign
                    Debug.Assert(context.forIter().assign() != null);
                    Visit(context.forIter().assign());
                }
            }
            Location.Merge(currentFunction, loopheadLocation, currentLocation);

            // 结束循环
            symbolTables.Pop();
            currentLocation = breakLocation;
            breakLocation = outerBreakLocation;
            contLocation = outerContLocation;

            return null;
        }

        /* do { body } while (cond)
           
                 * -------
                 |        |
              [body]   [cond]
                 |        |
        [cond calculator] |
                 |        |
                 * -------
                 |
              [!cond]
                 |
                 *
         */
        public override Expression? VisitDoStmt([NotNull] CMinorParser.DoStmtContext context)
        {
            Debug.Assert(currentLocation != null);
            Debug.Assert(currentFunction != null);

            // calculate condition
            LoopHeadLocation loopheadLocation = CalcLoopHeadLocation(context.loopAnnot());
            Location.Merge(currentFunction, loopheadLocation, currentLocation);
            currentLocation = loopheadLocation;
            Location? outerContLocation = contLocation;
            contLocation = loopheadLocation;

            // 开一个新的作用域
            symbolTables.Push(new Dictionary<string, LocalVariable>());

            // 开一个 exit loop location
            Location? outerBreakLocation = breakLocation;
            breakLocation = new Location(currentFunction);

            // 访问 body
            Visit(context.stmt());
            Expression condition = CompressedExpression(TypeConfirm(context.expr(), true, BoolType.Get()), counter.GetCondition);

            // 循环条件满足，循环继续执行
            Location.AddEdge(currentLocation, loopheadLocation, new AssumeStatement
            {
                condition = condition
            });

            // exit loop location 里面其实只有一条语句，就是 assume not condition
            Location.AddEdge(currentLocation, breakLocation, new AssumeStatement
            {
                condition = new NotExpression(condition)
            });

            // 结束循环
            symbolTables.Pop();
            currentLocation = breakLocation;
            breakLocation = outerBreakLocation;
            contLocation = outerContLocation;

            return null;
        }

        public override Expression? VisitBreakStmt([NotNull] CMinorParser.BreakStmtContext context)
        {
            Debug.Assert(currentFunction != null);
            Debug.Assert(currentLocation != null);

            if (breakLocation == null)
                throw new ParsingException(context, "a break statement is not within loop.");

            Location.Merge(currentFunction, breakLocation, currentLocation);
            currentLocation = null;

            return null;
        }

        public override Expression? VisitContStmt([NotNull] CMinorParser.ContStmtContext context)
        {
            Debug.Assert(currentFunction != null);
            Debug.Assert(currentLocation != null);

            if (contLocation == null)
                throw new ParsingException(context, "a break statement is not within loop.");

            Location.Merge(currentFunction, contLocation, currentLocation);
            currentLocation = null;

            return null;
        }

        public override Expression? VisitReturnStmt([NotNull] CMinorParser.ReturnStmtContext context)
        {
            Debug.Assert(currentLocation != null);
            Debug.Assert(currentFunction != null);

            if (context.expr() == null)
            {
                // 如果没有返回值的话，函数的返回类型也必须是 void
                if (currentFunction.type.returnTypes.Count > 0)
                    throw new ParsingException(context, $"return-statement with no value, in function returning '{currentFunction.type.returnTypes}'");
            }
            else
            {
                if (currentFunction.rvs.Count == 0)
                    throw new ParsingException(context, $"return-statement with a value, in function returning 'void'");
                Debug.Assert(currentFunction.rvs.Count == 1);
                Assign(currentFunction.rvs[0], context.expr());
            }

            Location.Merge(currentFunction, currentFunction.exitLocation, currentLocation);
            currentLocation = null;

            return null;
        }

        public override Expression? VisitBlockStmt([NotNull] CMinorParser.BlockStmtContext context)
        {
            symbolTables.Push(new Dictionary<string, LocalVariable>());
            foreach (var child in context.children)
                if (child is CMinorParser.StmtContext stmt)
                    Visit(stmt);
                else if (child is CMinorParser.DeclContext decl)
                    Visit(decl);
            symbolTables.Pop();
            return null;
        }

        public override Expression? VisitVarAssign([NotNull] CMinorParser.VarAssignContext context)
        {
            Debug.Assert(currentLocation != null);

            string name = context.IDENT().GetText();
            LocalVariable variable = FindVariable(context, name);
            Assign(variable, context.expr());

            return null;
        }

        public override Expression? VisitSubAssign([NotNull] CMinorParser.SubAssignContext context)
        {
            Debug.Assert(currentFunction != null);
            Debug.Assert(currentLocation != null);

            LocalVariable lv = FindVariable(context, context.IDENT().GetText());
            if (lv is ArrayVariable av)
            {
                VariableExpression subscript = CompressedExpression(TypeConfirm(context.expr()[0], true, IntType.Get()), counter.GetSub);

                // runtime assertion: subscript >= 0
                currentLocation = new Location(currentFunction, currentLocation, new AssertStatement()
                {
                    pred = new LEExpression(new IntConstantExpression(0), subscript)
                });
                // runtime assertion: subscript < length
                if (av.length != null)
                {
                    currentLocation = new Location(currentFunction, currentLocation, new AssertStatement()
                    {
                        pred = new LTExpression(subscript, new LengthExpression(new VariableExpression(av)))
                    });
                }

                Expression rhs = TypeConfirm(context.expr()[1], true, ((ArrayType)(av.type)).atomicType);

                currentLocation = new Location(currentFunction, currentLocation, new SubscriptAssignStatement
                {
                    array = av,
                    subscript = subscript,
                    rhs = rhs
                });
            }
            else
                throw new ParsingException(context, "request for an element in a non-array variable.");
            return null;
        }

        public override Expression? VisitMemAssign([NotNull] CMinorParser.MemAssignContext context)
        {
            Debug.Assert(currentFunction != null);
            Debug.Assert(currentLocation != null);

            string structName = context.IDENT()[0].GetText();
            string memberName = context.IDENT()[1].GetText();
            Variable structVariable = FindVariable(context, structName);
            if (structVariable is StructVariable sv)
            {
                if (!((StructType)(sv.type)).structDefinition.members.ContainsKey(memberName))
                    throw new ParsingException(context, $"'struct {structName}' has no member named '{memberName}'.");
                Debug.Assert(sv.members.ContainsKey(memberName));

                LocalVariable variable = sv.members[memberName];

                // 求出右边的表达式
                Expression rhs = TypeConfirm(context.expr(), true, variable.type);

                // 把赋值语句加到基本块里
                currentLocation = new Location(currentFunction, currentLocation, new VariableAssignStatement
                {
                    variable = variable,
                    rhs = rhs
                });
            }
            else
                throw new ParsingException(context, $"request for member '{memberName}' in '{structName}', which is of non-struct type '{structVariable.type}'.");
            return null;
        }

        // utils only for statement generator

        void Assign(LocalVariable lhsVariable, [NotNull] CMinorParser.ExprContext rhsContext)
        {
            Debug.Assert(currentFunction != null);
            Debug.Assert(currentLocation != null);

            Expression rhs = TypeConfirm(rhsContext, true, lhsVariable.type);

            switch (rhs.type)
            {
                case StructType st:
                    Debug.Assert(lhsVariable is StructVariable);
                    StructVariable ls = (StructVariable)lhsVariable;

                    // 如果右边的表达式的类型是一个 struct 的话，
                    // 那么它一定是 VariableExpression
                    Debug.Assert(rhs is VariableExpression);
                    Debug.Assert(((VariableExpression)rhs).variable is StructVariable);
                    StructVariable rs = (StructVariable)(((VariableExpression)rhs).variable);

                    // 为每一个成员单独赋值
                    foreach (MemberVariable mv in st.structDefinition.members.Values)
                    {
                        Debug.Assert(ls.members.ContainsKey(mv.name));
                        Debug.Assert(rs.members.ContainsKey(mv.name));
                        Debug.Assert(ls.members[mv.name].type == mv.type);
                        Debug.Assert(ls.members[mv.name].type == mv.type);

                        currentLocation = new Location(currentFunction, currentLocation, new VariableAssignStatement
                        {
                            variable = ls.members[mv.name],
                            rhs = new VariableExpression(rs.members[mv.name])
                        });
                    }
                    break;
                default:
                    currentLocation = new Location(currentFunction, currentLocation, new VariableAssignStatement
                    {
                        variable = lhsVariable,
                        rhs = rhs
                    });
                    break;
            }
        }
    }
}