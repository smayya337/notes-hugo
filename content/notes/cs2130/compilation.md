---
title: "Compilation"
weight: 8
---

There are a number of steps to the C compilation process.

1. **Write code.** Obviously.
2. **Preprocess.** A preprocessor removes comments, expands macros, and includes header files.
3. **Lex.** A lexer converts the source code into a sequence of tokens.
4. **Parse.** A parser converts the sequence of tokens into an **abstract syntax tree** (**AST**).
5. **Type check.** A type checker annotates the AST with the type of every expression and variable.
6. **Generate code.** A code generator converts the AST into assembly code.
   1. Turn the AST into assembly-like code with infinite registers.
   2. Add a variety of optimizations.
   3. Allocate registers and memory locations.
   4. Assemble the results.
7. **Link.** A linker connects the assembly code with the libraries and system calls it needs to function.
8. **Load.** A loader loads the executable into memory.
