# Compilers: Principles, Techniques, and Tools (The Dragon Book)

This repository contains notes and examples derived from the book *Compilers: Principles, Techniques, and Tools* by Alfred V. Aho, Monica S. Lam, Ravi Sethi, and Jeffrey D. Ullman, also known as the **Dragon Book**.

![book cover](https://m.media-amazon.com/images/I/5177VKlJfvL._AC_UF894,1000_QL80_.jpg)

You can buy the book [here](https://www.amazon.com/Compilers-Principles-Techniques-Tools-2nd-dp-0321486811/dp/0321486811/ref=dp_ob_title_bk).

---

## Notes Overview

The notes are structured chapter by chapter, summarizing key concepts, algorithms, and code implementations. Each chapter has a dedicated directory with:
- **`readme.md`**: Summary of concepts.
- **`examples/`**: Code snippets or algorithms from the chapter.
- **`exercises/`**: Solutions or practice implementations.
- **`assets/`**: Screenshots or diagrams related to the chapter.

### List of Chapters:
- [Chapter 1: Introduction](./chapter-1-introduction/readme.md)
- [Chapter 2: A Simple Syntax-Directed Translator](./chapter-2-simple-syntax-directed-translator/readme.md)
- [Chapter 3: Lexical Analysis](./chapter-3-lexical-analysis/readme.md)
- [Chapter 4: Syntax Analysis](./chapter-4-syntax-analysis/readme.md)
- [Chapter 5: Syntax-Directed Translation](./chapter-5-syntax-directed-translation/readme.md)
- [Chapter 6: Intermediate-Code Generation](./chapter-6-intermediate-code-generation/readme.md)
- [Chapter 7: Run-Time Environments](./chapter-7-run-time-environments/readme.md)
- [Chapter 8: Code Generation](./chapter-8-code-generation/readme.md)
- [Chapter 9: Machine-Independent Optimizations](./chapter-9-machine-independent-optimizations/readme.md)
- [Chapter 10: Instruction-Level Parallelism](./chapter-10-instruction-level-parallelism/readme.md)
- [Chapter 11: Optimizing for Parallelism and Locality](./chapter-11-optimizing-for-parallelism-and-locality/readme.md)
- [Chapter 12: Interprocedural Analysis](./chapter-12-interprocedural-analysis/readme.md)


---

## Setup for Notes Exploration

If you want to read the book
Each chapter folder is created as you progress through the book. Use the provided script to manage the directory and file structure.

### Usage:
1. Run the `update_chapter.sh` script.
2. Select the chapter to create its folder and base files.
3. Begin reading and documenting.

If you'd like to follow along and learn just as I am doing, you can start from the very beginning by cloning this repository at the first commit. This will provide you with just the `README.md` and the setup script to initialize your notes as you progress through the book.

```bash
git reset --hard $(git rev-list --max-parents=0 HEAD)
```

---

## Why This Book?

The Dragon Book is a comprehensive guide to understanding compiler theory and implementation. It’s a must-read for anyone interested in programming language design, systems programming, or software development in general.
