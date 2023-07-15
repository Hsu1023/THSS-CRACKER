﻿using System;
using System.IO;
using System.Collections.Generic;

using Antlr4.Runtime;
using Antlr4.Runtime.Misc;

using CommandLine;
using CommandLine.Text;

namespace cminor
{
    /// <summary> 整个验证工具的入口类 </summary>
    class Program
    {
        class Options
        {
            [Option("source",
                Required = true,
                HelpText = "The source file of CMinor language (recommended with filename extension '.c').")]
            public string sourcePath { get; set; } = default!;

            [Option("printCFA",
                Required = false,
                HelpText = "The file (or 'console') to which the control flow automata is printed.")]
            public string? CFAFile { get; set; } = null;

            [Usage(ApplicationAlias = "cminor")]
            public static IEnumerable<Example> Examples
            {
                get
                {
                    return new List<Example>()
                    {
                        new Example("The simplest usage to compile and verify a pi source file", new Options
                        {
                            sourcePath = "<path>"
                        })
                    };
                }
            }
        }

        /// <summary> 整个验证工具的入口函数 </summary>
        static void Main(string[] args)
        {
            CommandLine.Parser.Default.ParseArguments<Options>(args)
                .WithParsed(RunOptions);
        }

        /// <summary> 整个验证工具的主驱动函数 </summary>
        /// <remarks>
        /// 返回码的设计是这样的：
        /// <list type="bullet">
        ///     <item> 0 表示验证成功 </item>
        ///     <item> 1 表示验证失败 </item>
        ///     <item> 2 表示语义错误 </item>
        ///     <item> 3 表示语法错误 </item>
        /// </list>
        /// </remarks>
        static void RunOptions(Options opts)
        {
            try
            {
                // 首先，我们要生成 cfa！

                StreamReader reader = File.OpenText(opts.sourcePath);

                AntlrInputStream stream = new AntlrInputStream(reader);

                ITokenSource lexer = new CMinorLexer(stream);

                ITokenStream tokens = new CommonTokenStream(lexer);

                CMinorParser parser = new CMinorParser(tokens);

                // 由于现有的 error listener 或者 handler，
                // 要么不会终止 parse，要么连行号都不会打印出来……
                // 所以我们需要写一个新的 listener！
                parser.RemoveErrorListeners();
                parser.AddErrorListener(new ThrowingErrorListener());

                CMinorParser.MainContext tree = parser.main();
                CFAGenerator generator = new CFAGenerator();
                IRMain cfa = generator.Apply(tree);

                if (opts.CFAFile != null)
                {
                    // 输出 cfa
                    using (TextWriter writer = opts.CFAFile == "console"
                        ? Console.Out
                        : new StreamWriter(opts.CFAFile))
                    {
                        cfa.Print(writer);
                    }
                }

                Verifier verifier = new Verifier(Console.Out);

                int result = verifier.Apply(cfa);
                if (result > 0) Console.WriteLine("VERIFIED");
                else if (result == 0) Console.WriteLine("UNKNOWN");
                else if (result < 0) Console.WriteLine("UNVERIFIED");

                Environment.Exit(0);
            }
            catch (ParsingException e)
            {
                Console.Error.WriteLine($"semantic error: {e.Message}");
                Environment.Exit(1);
            }
            catch (ParseCanceledException e)
            {
                Console.Error.WriteLine($"syntax error: {e.Message}");
                Environment.Exit(1);
            }
        }
    }
}
