/*
    TODO: 这是你唯一允许编辑的文件，你可以对此文件作任意的修改，只要整个项目可以正常地跑起来。
*/

using System.IO;
using System.Collections.Generic;

namespace cminor
{
    /// <summary> 一个验证器，接受一个中间表示，判断其是否有效。 </summary>
    class Verifier
    {
        SMTSolver solver = new SMTSolver();
        TextWriter writer;

        List<Expression> VC = new List<Expression>();

        public Verifier(TextWriter writer)
        {
            this.writer = writer;
        }

        public Expression AndAllExpressions(List<Expression> expressions){
            Expression result = new BoolConstantExpression(true);
            foreach (Expression expression in expressions)
                result = new AndExpression(result, expression);
            return result;
        }

        public Expression OrAllExpressions(List<Expression> expressions){
            Expression result = new BoolConstantExpression(false);
            foreach (Expression expression in expressions)
                result = new OrExpression(result, expression);
            return result;
        }

        public Expression GetWeakestPreCondition(Expression preCondition, Statement statement){
            if (statement is VariableAssignStatement){
                VariableAssignStatement variableAssignStatement = (VariableAssignStatement)statement;
                return preCondition.Substitute(variableAssignStatement.variable, variableAssignStatement.rhs);
            }
            else if (statement is SubscriptAssignStatement){
                SubscriptAssignStatement subscriptAssignStatement = (SubscriptAssignStatement)statement;
                VariableExpression arrayExpression = new VariableExpression(subscriptAssignStatement.array);
                VariableExpression lengthExpression = new VariableExpression(subscriptAssignStatement.array.length);
                Expression updatedArray = new ArrayUpdateExpression(arrayExpression, subscriptAssignStatement.subscript, subscriptAssignStatement.rhs, lengthExpression);
                return preCondition.Substitute(subscriptAssignStatement.array, updatedArray);
            }
            else if (statement is AssertStatement){
                AssertStatement assertStatement = (AssertStatement)statement;
                return new AndExpression(preCondition, assertStatement.pred);
            }
            else if (statement is AssumeStatement){
                AssumeStatement assumeStatement = (AssumeStatement)statement;
                return new ImplicationExpression(assumeStatement.condition, preCondition);
            }
            else if (statement is FunctionCallStatement){
                FunctionCallStatement functionCallStatement = (FunctionCallStatement)statement;
                FunctionCallExpression functionCallExpression = functionCallStatement.rhs;
                Function function = functionCallExpression.function;
                List<LocalVariable> paramName = function.parameters;
                List<LocalVariable> paramValue = functionCallExpression.argumentVariables;
                List<LocalVariable> rvName = function.rvs;
                List<LocalVariable> rvValue = functionCallStatement.lhs;

                List<Expression> preConditions = function.entryLocation.conditions;
                List<Expression> postConditions = function.exitLocation.conditions;
                Expression funPreCondition = AndAllExpressions(preConditions);
                Expression funPostCondition = AndAllExpressions(postConditions);

                for (int i = 0; i < paramName.Count; ++i){
                    funPreCondition = funPreCondition.Substitute(paramName[i], new VariableExpression(paramValue[i]));
                    funPostCondition = funPostCondition.Substitute(paramName[i], new VariableExpression(paramValue[i]));
                }
                for (int i = 0; i < rvName.Count; ++i){
                    funPostCondition = funPostCondition.Substitute(rvName[i], new VariableExpression(rvValue[i]));
                }
                return new AndExpression(new ImplicationExpression(funPostCondition, preCondition), funPreCondition);
            }
            else
                return new BoolConstantExpression(true);
        }

        public void GetVCByPath(LinkedList<Location> locations, LinkedList<Statement> path, List<Expression> postConditions){
            Expression postCondition = AndAllExpressions(postConditions);
            Expression weakestPreCondition = postCondition;
            if (path.Last != null && locations.Last != null)
            {
                LinkedListNode<Statement> node = path.Last;
                LinkedListNode<Location> location = locations.Last;
                while(node != null && location != null){
                    weakestPreCondition = GetWeakestPreCondition(weakestPreCondition, node.Value);
                    
                    if (node.Previous != null && location.Previous != null){
                        node = node.Previous;
                        location = location.Previous;
                    }
                    else
                        break;
                }
            }
            if (locations.First == null) return;
            if (locations.First.Value is LoopHeadLocation)
            {
                LoopHeadLocation loopHeadStatement = (LoopHeadLocation)locations.First.Value;
                List<Expression> loopConditions = loopHeadStatement.invariants;
                Expression loopCondition = AndAllExpressions(loopConditions);
                VC.Add(new ImplicationExpression(loopCondition, weakestPreCondition));
            }
            else if (locations.First.Value is EntryLocation)
            {
                EntryLocation entryStatement = (EntryLocation)locations.First.Value;
                List<Expression> preConditions = entryStatement.conditions;
                Expression preCondition = AndAllExpressions(preConditions);
                VC.Add(new ImplicationExpression(preCondition, weakestPreCondition));
            }
        }

        public void CheckHeadLocationRanking(HeadLocation h){
            Expression preCondition = new BoolConstantExpression(true);
            if (h is EntryLocation) 
                preCondition = AndAllExpressions(((EntryLocation)h).conditions);
            else if (h is LoopHeadLocation)
                preCondition = AndAllExpressions(((LoopHeadLocation)h).invariants);

            for (int i = 0; i < h.rankingFunctions.Count; ++i)
            {
                Expression nonNegative = new GEExpression(h.rankingFunctions[i], new IntConstantExpression(0));
                VC.Add(new ImplicationExpression(preCondition, nonNegative));
            }
        }

        public void GetTerminationVCByPath(LinkedList<Location> locations, LinkedList<Statement> path, List<Expression> postRankingFunctions)
        {
            if (locations.First == null) return;

            HeadLocation first = (HeadLocation)locations.First.Value;            

            Expression preCondition = new BoolConstantExpression(true);
            if (locations.First.Value is EntryLocation) 
                preCondition = AndAllExpressions(((EntryLocation)locations.First.Value).conditions);
            else if (locations.First.Value is LoopHeadLocation)
                preCondition = AndAllExpressions(((LoopHeadLocation)locations.First.Value).invariants);

            List<Expression> postRank = new List<Expression>(postRankingFunctions);
            List<Expression> rankingFunctions = ((HeadLocation)locations.First.Value).rankingFunctions;
            List<Expression> preRank = new List<Expression>(rankingFunctions);
            if (postRank.Count == 0 || preRank.Count == 0) return;
            List<Expression> rankingConditions = new List<Expression>();

            Expression equalCondition = new BoolConstantExpression(true);

            Dictionary<LocalVariable, LocalVariable> variableMap = new Dictionary<LocalVariable, LocalVariable>();
            for (int i = 0; i < rankingFunctions.Count; ++i)
            {
                HashSet<LocalVariable> freeVariables = preRank[i].GetFreeVariables();
                // rename free variables
                foreach (LocalVariable variable in freeVariables)
                {
                    
                    if (!variableMap.ContainsKey(variable))
                    {
                        LocalVariable newVariable = new LocalVariable();
                        newVariable.name = variable.name + "_NEW";
                        newVariable.type = variable.type;
                        variableMap.Add(variable, newVariable);
                        preRank[i] = preRank[i].Substitute(variable, new VariableExpression(newVariable));
                    }
                    else
                        preRank[i] = preRank[i].Substitute(variable, new VariableExpression(variableMap[variable]));
                }
                rankingConditions.Add(new AndExpression(equalCondition, new GTExpression(preRank[i], postRank[i])));
                equalCondition = new AndExpression(equalCondition, new EQExpression(preRank[i], postRank[i]));
            }
            Expression rankingCondition = OrAllExpressions(rankingConditions);

            if (path.Last != null && locations.Last != null)
            {
                LinkedListNode<Statement> node = path.Last;
                LinkedListNode<Location> location = locations.Last;
                while (node != null && location != null)
                {
                    rankingCondition = GetWeakestPreCondition(rankingCondition, node.Value);
                    
                    if (node.Previous != null && location.Previous != null)
                    {
                        node = node.Previous;
                        location = location.Previous;
                    }
                    else
                        break;
                }
            }
            foreach (KeyValuePair<LocalVariable, LocalVariable> pair in variableMap)
                rankingCondition = rankingCondition.Substitute(pair.Value, new VariableExpression(pair.Key));
            rankingCondition = new ImplicationExpression(preCondition, rankingCondition);
            VC.Add(rankingCondition);
        }

        public void BFS(Function function)
        {
            Queue<Location> locationQueue = new Queue<Location>();
            Queue<LinkedList<Location>> pathQueue = new Queue<LinkedList<Location>>();
            Queue<LinkedList<Statement>> statementQueue = new Queue<LinkedList<Statement>>();
            EntryLocation entryLocation = function.entryLocation;
            List<Expression>preCondition = entryLocation.conditions;

            HashSet<Location> visited = new HashSet<Location>();
            CheckHeadLocationRanking(function.entryLocation);
            // AndAllExpressions(preCondition).Print(writer);
            locationQueue.Enqueue(entryLocation);
            pathQueue.Enqueue(new LinkedList<Location>());
            statementQueue.Enqueue(new LinkedList<Statement>());
            while (locationQueue.Count > 0){
                Location currentLocation = locationQueue.Dequeue();
                LinkedList<Statement> currentStatement = statementQueue.Dequeue();
                LinkedList<Location> currentPath = pathQueue.Dequeue();
                if (currentStatement.Last != null && currentStatement.Last.Value is FunctionCallStatement){
                    FunctionCallStatement functionCallStatement = (FunctionCallStatement)currentStatement.Last.Value;
                    FunctionCallExpression functionCallExpression = functionCallStatement.rhs;
                    Function functionCall = functionCallStatement.rhs.function;
                    //GetTerminationVCByPath(LinkedList<Location> locations, LinkedList<Statement> path, List<Expression> postRankingFunctions)
                    
                    List<LocalVariable> paramName = functionCall.parameters;
                    List<LocalVariable> paramValue = functionCallExpression.argumentVariables;
                    List<Expression> rankingFunctions = new List<Expression>(functionCall.entryLocation.rankingFunctions);
                    for (int i = 0; i < rankingFunctions.Count; ++i)
                    {
                        for (int j = 0; j < paramName.Count; ++j)
                            rankingFunctions[i] = rankingFunctions[i].Substitute(paramName[j], new VariableExpression(paramValue[j]));
                    }
                    GetTerminationVCByPath(currentPath, currentStatement, rankingFunctions);
                }
                if (currentLocation is ExitLocation)
                {
                    ExitLocation exitLocation = (ExitLocation)currentLocation;
                    List<Expression> postCondition = exitLocation.conditions;
                    GetVCByPath(currentPath, currentStatement, postCondition);
                }
                else if (currentLocation is LoopHeadLocation){
                    LoopHeadLocation loopHeadLocation = (LoopHeadLocation)currentLocation;
                    List<Expression> loopCondition = loopHeadLocation.invariants;
                    GetVCByPath(currentPath, currentStatement, loopCondition);
                    CheckHeadLocationRanking((LoopHeadLocation)currentLocation);
                    GetTerminationVCByPath(currentPath, currentStatement, loopHeadLocation.rankingFunctions);

                    if (visited.Contains(currentLocation)){
                        continue;
                    }
                    visited.Add(currentLocation);
                    for (int i = 0; i < currentLocation.succLocations.Count; ++i)
                    {
                        Location nextLocation = currentLocation.succLocations[i];
                        LinkedList<Statement> nextStatement = new LinkedList<Statement>();
                        nextStatement.AddLast(currentLocation.succStatements[i]);
                        LinkedList<Location> nextPath = new LinkedList<Location>();
                        nextPath.AddLast(currentLocation);
                        locationQueue.Enqueue(nextLocation);
                        statementQueue.Enqueue(nextStatement);
                        pathQueue.Enqueue(nextPath);
                    }
                }
                else
                {
                    for (int i = 0; i < currentLocation.succLocations.Count; ++i)
                    {
                        Location nextLocation = currentLocation.succLocations[i];
                        LinkedList<Statement> nextStatement = new LinkedList<Statement>(currentStatement);
                        nextStatement.AddLast(currentLocation.succStatements[i]);
                        LinkedList<Location> nextPath = new LinkedList<Location>(currentPath);
                        nextPath.AddLast(currentLocation);
                        locationQueue.Enqueue(nextLocation);
                        statementQueue.Enqueue(nextStatement);
                        pathQueue.Enqueue(nextPath);
                    }
                }
            }
            // return true;
        }

        /// <summary> 应用此验证器 </summary>
        /// <param name="cfg"> 待验证的控制流图 </param>
        /// <returns> 验证结果 </returns>
        /// <list type="bullet">
        ///     <item> “&gt; 0” 表示所有的 specification 都成立 </item>
        ///     <item> “&lt; 0” 表示有一个 specification 不成立 </item>
        ///     <item> “= 0” 表示 unknown </item>
        /// </list>
        public int Apply(IRMain cfg)
        {
            foreach (Predicate predicate in cfg.predicates){
                solver.definePredicate(predicate);
            }
            foreach (Function function in cfg.functions)
            {
                VC = new List<Expression>();
                BFS(function);
                foreach (Expression expression in VC){
                    if (solver.CheckValid(expression) != null){
                        return -1;
                    }
                }
            }
            return 1;
        }
    }
}

