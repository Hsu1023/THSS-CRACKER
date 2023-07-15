using System.IO;
using System.Collections.Generic;

using System.Diagnostics.Contracts;

namespace cminor
{
    /// <summary> 对 C 语言中的结构体的刻画 </summary>
    /// <remarks> 我们把 struct 相关的放在前端这边，因为它们不会出现在最后的 IR 里。 </remarks>
    class Struct
    {
        public StructType type;
        public string name;

        public SortedDictionary<string, MemberVariable> members;

        public Struct(string name, SortedDictionary<string, MemberVariable> members)
        {
            this.name = name;
            this.members = members;
            this.type = StructType.Get(this);
        }

        public void Print(TextWriter writer)
        {
            writer.WriteLine($"[struct] {name}\n{{");
            foreach (MemberVariable member in members.Values)
                writer.WriteLine($"\t{member.name}: {member.type};");
            writer.WriteLine("}}");
        }
    }

    /// <summary> 结构体类型 </summary>
    sealed class StructType : VarType
    {
        public Struct structDefinition;

        private static Dictionary<Struct, StructType> singletons = new Dictionary<Struct, StructType>();

        private StructType(Struct structDefinition)
        {
            this.structDefinition = structDefinition;
        }

        public static StructType Get(Struct structDefinition)
        {
            if (!singletons.ContainsKey(structDefinition))
            {
                singletons.Add(structDefinition, new StructType(structDefinition));
            }
            return singletons[structDefinition];
        }

        public override string ToString()
        {
            return $"struct {structDefinition.name}";
        }
    }

    /// <summary> 结构体变量 </summary>
    class StructVariable : LocalVariable
    {
        public SortedDictionary<string, LocalVariable> members = new SortedDictionary<string, LocalVariable>();

        [ContractInvariantMethod]
        void ObjectInvariant()
        {
            Contract.Invariant(this.type is StructType);
        }

        public StructVariable(StructType type, string name)
        {
            this.type = type;
            this.name = name;
            foreach (MemberVariable mv in type.structDefinition.members.Values)
            {
                if (mv.type is ArrayType)
                {
                    members.Add(mv.name, new ArrayVariable
                    {
                        type = mv.type,
                        name = $"{name}${mv.name}",
                        length = new LocalVariable
                        {
                            type = IntType.Get(),
                            name = CFAGenerator.Counter.GetLength(mv.name)
                        }
                    });
                }
                else
                {
                    members.Add(mv.name, new LocalVariable
                    {
                        type = mv.type,
                        name = $"{name}${mv.name}"
                    });
                }
            }
        }
    }
}