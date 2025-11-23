# Chapter 1: Introduction

![gf-vs-gcc](https://preview.redd.it/8w91lgz8u7541.jpg?width=640&crop=smart&auto=webp&s=2adcb7fd8a99b54db6b5650953f985c400725364)

Programming languages are notations for describing computations to p eople and to machines. The world as we know it depends on programming languages, because all the software running on all the computers was written in some programming language. But, before a program can be run, it first must be translated into a form in which it can be executed by a computer.

The software systems that do this translation are called compilers.


## Language processors

Simply stated; a compiler is a program that can read a program in one language -- the `source` language -- and translate it into an equivalent program in another language -- the `target` language. An important role of the compiler is to report any error in the source program that it detects during the translation process.

```text
                    |""""""""""|
Source program ---> | Compiler | ---> Target program
                    |__________|
```

If the target program is an executable machine-language program, it can the be called by the user to process input and produce output.

```text
           |""""""""""""""""|
Input ---> | Target program | ---> Output
           |________________|
```

An interpreter is another common kind of language processor. Instead of producing a target program as a translation, an interpreter appears to directly execute the operations specified in the source program on inputs supplied by the user.


```text
Source program ---> |"""""""""""""|
                    | Interpreter | ---> Output
         Input ---> |_____________|
```

The machine-language target program produced by a compiler is usually much faster than an interpreter at mapping inputs to outputs. An interpreter, however, can usually give better error diagnostics than a compiler, because it executes the source program statement by statement.

Java language processors combine compilation and interpretation. The output of the translator is a `bytecode` which is executed by the JVM on inputs supplied by the user.

In order to achieve faster processing of inputs to outputs, some Java compilers, called `just-in-time` compilers, translate the bytecodes into machine language immediately before they run the intermediate program to process the input.

![hybrid-compiler](https://dengking.github.io/compiler-principle/1-Introduction/1.1-Language-Processors/Figure1.4A-hybrid-compiler.jpg)

A source program may be divided into modules stored in separate files. The task of collecting the source program is sometimes entrusted to a separate program called a `preprocessor`.

For example in `main.c`, `#include "circle.h"` tells the preprocessor to find the file `circle.h` and literally paste its contents into `main.c` at that location. The same happens for `#include "rectangle.h"`.

The modified source program is then fed to a compiler. The compiler may produce an assembly-language program as its output. The assembly-language is then processed by a program called an `assembler` that produces relocatable machine code as its output.

For example `main.c`, `circle.c` and `rectangle.c` are converted into assembly `main.s`, `circle.s` and `rectangle.s`. Then we can use the `assembler` to convert into machine code `main.o`, `circle.o`, `rectangle.o`. And finally use a `linker` to put together all of them into one program.

[exercices 1.1.1](exercises/exercices-1-1-1.md)


## The structure of a Compiler

Looking inside of a compiler we can see that there's two major parts: the analysis and synthesis.

The analysis part also called frontend, detects errors and collects information about the source program and stores in a data structure called a `symbol table`. This symbol table along with the intermediate representation is passed to the synthesis part.

The synthesis part (also called backend) constructs the desired target program from the intermediate repr and informations in the symbol table.

There's lots of phases when we look deep inside a compiler.

![phases-of-compiler](https://www.tutorialspoint.com/compiler_design/compiler_design_phases_of_compiler.htm)

