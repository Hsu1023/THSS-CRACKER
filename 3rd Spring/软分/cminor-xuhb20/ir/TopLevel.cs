using System.IO;
using System.Collections.Generic;

namespace cminor
{
    /// <summary> IR 的最顶层，其中包含了若干函数定义和谓词定义。 </summary>

    class IRMain
    {
        public LinkedList<Function> functions = new LinkedList<Function>();
        public LinkedList<Predicate> predicates = new LinkedList<Predicate>();

        public void Print(TextWriter writer)
        {
            // writer.WriteLine("// predicates");
            foreach (Predicate p in predicates)
            {
                p.Print(writer);
                writer.WriteLine("");
            }
            // writer.WriteLine("");

            // writer.WriteLine("// functions");
            foreach (Function f in functions)
            {
                f.Print(writer);
                writer.WriteLine("");
            }
        }
    }

    /// <summary> 函数的主体是一个 CFA (control flow automata)，入口是 entry location，出口是 exit location。 </summary>
    class Function
    {
        // 注意，这个 type 在 CFG 中
        public FunType type = default!;

        public string name = default!;
        public List<LocalVariable> parameters = default!;

        public EntryLocation entryLocation = default!;
        public ExitLocation exitLocation = default!;

        // 我们把除了 entryLocation 和 exitLocation 之外的 location 都存在这里。
        // 其实也没啥必要，就是可能会用到，所以方便起见就存下来吧。
        public List<Location> locations = new List<Location>();

        // 如果是 void，那么就为空
        // 如果是 int, float, bool 或者 array，那么就只有一个
        // 如果是 struct 的话，就有 struct 的成员数量那么多个
        public List<LocalVariable> rvs = new List<LocalVariable>();

        public void Print(TextWriter writer)
        {
            writer.Write($"[function] (\\result: (");
            foreach (Type returnType in type.returnTypes)
                writer.Write(returnType);
            writer.WriteLine($")) {name} \n(");
            for (int i = 0; i < parameters.Count; ++i)
                writer.WriteLine($"\t({parameters[i].name}: {parameters[i].type}),");
            writer.WriteLine(")");

            entryLocation.Print(writer);
            writer.WriteLine("");
            foreach (Location location in locations)
            {
                location.Print(writer);
                writer.WriteLine("");
            }
            exitLocation.Print(writer);
        }
    }

    /// <summary> 谓词的主体就是一个逻辑表达式。 </summary>
    class Predicate
    {
        // a predicate can be regarded as a function,
        // of which the return value is bool and the body
        // is just one return statement.
        public PredType type = default!;
        public string name = default!;
        public List<LocalVariable> parameters = default!;
        public Expression expression = default!;

        public void Print(TextWriter writer)
        {
            writer.WriteLine($"[predicate] {name}\n(");
            for (int i = 0; i < parameters.Count; ++i)
                writer.WriteLine($"\t({parameters[i].name}: {parameters[i].type}),");
            writer.WriteLine(")");
            writer.Write("\t:= ");
            expression.Print(writer);
        }
    }
}