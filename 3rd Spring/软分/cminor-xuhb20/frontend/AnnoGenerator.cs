/*
    这里是生成 annotation 的逻辑，需要生成的 annotation 包括：
    - precondition
    - postcondition
    - ranking function
    - assertion
*/

using System.Linq;
using System.Diagnostics;
using System.Collections.Generic;

using Antlr4.Runtime.Misc;

namespace cminor
{
    partial class CFAGenerator : CMinorParserBaseVisitor<Expression?>
    {
        public override Expression? VisitAssertion([NotNull] CMinorParser.AssertionContext context)
        {
            Debug.Assert(currentFunction != null);
            Debug.Assert(currentLocation != null);

            // 尽管这里的类型应该是已经被 confirm 过一遍了，但多 confirm 一次是更加保险的选择
            Expression pred = TypeConfirm(context.pred(), false, BoolType.Get());
            currentLocation = new Location(currentFunction, currentLocation, new AssertStatement{ pred = pred });

            return null;
        }

        EntryLocation
        CalcEntryLocation([NotNull] CMinorParser.RequiresClauseContext[] requiresClauseContexts, CMinorParser.DecreasesClauseContext? decreasesClauseContext)
        {
            List<Expression> conditions = requiresClauseContexts.Select(
                        ctx => TypeConfirm(ctx.pred(), false, BoolType.Get())).ToList();
            List<Expression> rankingFunctions = decreasesClauseContext is null
                ? new List<Expression>()
                : decreasesClauseContext.arithTerm().Select(
                        arithTerm => TypeConfirm(arithTerm, false, IntType.Get())).ToList();
            return new EntryLocation
            {
                conditions = conditions,
                rankingFunctions = rankingFunctions
            };
        }

        LoopHeadLocation CalcLoopHeadLocation([NotNull] CMinorParser.LoopAnnotContext context)
        {
            Debug.Assert(currentFunction != null);

            List<Expression> invariants = new List<Expression>(
                context.pred().Select(
                    invariant => TypeConfirm(invariant, false, BoolType.Get())));
            List<Expression> rankingFunctions = new List<Expression>(
                context.arithTerm().Select(
                    arithTerm => TypeConfirm(arithTerm, false, IntType.Get())));
            return new LoopHeadLocation(currentFunction)
            {
                invariants = invariants,
                rankingFunctions = rankingFunctions
            };
        }

        ExitLocation CalcExitLocation([NotNull] CMinorParser.EnsuresClauseContext[] contexts, List<LocalVariable> rvs)
        {
            // 这里我们开一个只有 \result 的假作用域
            var scope = rvs.ToDictionary(rv => rv.name, rv => rv);
            symbolTables.Push(scope);

            List<Expression> conditions = new List<Expression>(contexts.Select(
                ctx => TypeConfirm(ctx.pred(), false, BoolType.Get())));

            symbolTables.Pop();

            return new ExitLocation
            {
                conditions = conditions
            };
        }
    }
}