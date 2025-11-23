# Exercises for Section 1.1

### Exercise 1.1.1

What is the difference between a compiler and an interpreter?

> A compiler is a program that can read and translate a source program into an equivalent target program that can be executed on user input to produce an output.
> An interpreter on the other hand is a program that execute source program on user input to produce an output.

### Exercise 1.1.2

What are the advantages of (a) a compiler over and interpreter (b) an interpreter over a compiler?

> a. The machine language program produced by a compiler is much faster than the interpreter at mapping inputs to outputs.
> b. An interpreter is better at finding errors and code diagnostic since it execute the source program statement by statement.

### xercise 1.1.3

What advantages are there to a language-pro cessing system in which the compiler pro duces assembly language rather than machine language?

> Easy to debug
> Easy to read, inspect the output
> Less complexity
> Better with large codebase (split in chunks)

### Exercise 1.1.4

A compiler that translates a high-level language into another high-level language is called a source-to-source translator. What advantages are there to using C as a target language for a compiler?

> Because C is a low-level language with a wide range of fast compilers!
> Is portable to everywhere!

### Exercise 1.1.5

Different tasks an assembler needs to perform.

> Translate assembly instructions into machine code
> Replace labels with actual memory addr
> Compute addresses (jumps, branches, data refs)
> Error handling
> Directive handling (.data, .text, .equ)