---
title: "Building Programs"
weight: 1
---

## Linking

You have a program that requires the header file `stdio.h`. How do you make sure `stdio.h` is used while compiling your program?

There are a couple different ways to approach this issue. One way is to have the compiler pull in `stdio.h`, then compile it and include it with your program. This method, called **static linking**, has the advantage of ensuring that your program runs as long as the OS understands the instructions, but it uses up more disk space and memory. Sure, `stdio.h` isn't much on its own, but what if you're using dozens or hundreds of system libraries in each of several different programs? All those duplicated libraries add up fast.

The other way to do it is to assume that `stdio.h` is available on the system running the program. If you know that, you can just load in the file at runtime and do the linking then. This method is known as **dynamic linking**. It's a little slower than static linking since you have to make sure everything is loaded up before running the program, but it's significantly easier on memory since you only have a library loaded once. Of course, if the library isn't available on the system running the program, the program won't run. Most programs nowadays use dynamic linking and use a package manager or other checks to ensure that required libraries are available on the system.

## Libraries

First, a quick overview of different file types:

|           Extension           |                         Description                          |
| :---------------------------: | :----------------------------------------------------------: |
|             `.c`              |                        C source code                         |
|             `.h`              |                        C header file                         |
|       `.s` (or `.asm`)        |                        assembly file                         |
|       `.o` (or `.obj`)        |               object file (binary of assembly)               |
|      (none) (or `.exe`)       |                       executable file                        |
|       `.a` (or `.lib`)        |     statically linked library (collection of `.o` files)     |
| `.so` (or `.dll` or `.dylib`) | dynamically linked library (also known as a "shared object") |

To create a **static library**, perform the following steps:

1. Create object files: `for i in *.c; do clang -c $i; done`
2. Turn the object files into an archive: `ar rcs libfoo.a *.o`

Your static library is now located at `libfoo.a`! You can use it by calling your compiler with the argument `-lfoo`. (Note the use of `foo` instead of `libfoo`! Drop the `lib` prefix!) If the library isn't located in a standard library location, also add the flag `-L/path/to/lib`, replacing `/path/to/lib` with the directory where `libfoo.a` is located.

To create a **shared library**, perform the following steps:

1. Compile object files: `for i in *.c; do clang -c -fPIC $i; done` -- the `-fPIC` forces **position-independent code**, which makes sure code can be properly executed no matter where in memory it is loaded
2. Put the object files together into a shared library using the `-shared` compiler flag

You can use shared libraries when compiling basically the same way as static libraries. The problem is, the compiler doesn't (by default, at least) configure the program to look for your library in non-standard locations, so if your library isn't in a standard location it'll break the program. There are a couple ways around this:

* Set the `LD_LIBRARY_PATH` environment variable to the directory containing your custom library before running the program so that the linker looks in the right place
* While compiling, add the flags `-Wl,-rpath /path/to/lib` -- `-Wl` stands for "pass this to the linker" and `-rpath` specifies where to find the library needed -- so that the compiler adds information to the program telling the linker where to look for libraries

The second option is more permanent than the first.

## Make

`make` is a tool that helps build programs. It uses a file, called a `Makefile`, to determine what needs to be run to update the project. `make` is useful because it checks file modification time to avoid recompiling files that haven't changed.

The key component of a makefile is a **rule**, with three parts:

* A **target**, the file being created
* **Dependencies**, the files that the target depends on
* **System commands**, the commands to create the target

If the target is missing or older than at least one dependency, the system commands are run.

If you run `make` by itself, it runs the first rule listed in the makefile. If you specify a target, it runs that rule instead. You can also make **phony targets** -- targets that don't represent files -- and have them perform tasks like building everything or cleaning up the workspace. You just write the line `.PHONY: all clean`, then use `all` and `clean` like any other target.

`make` comes with a lot of patterns to make writing all those rules easier. Here are a few of them:

* `%.o`: matches any file ending in `.o`
* `$@`: the target
* `$<`: the first dependency
* `$^`: all dependencies

You can also define macros in a makefile. Macros are useful for defining things like:

* `$(CC)`: the C compiler
* `$(CFLAGS)`: flags to pass to the C compiler
* `$(LDFLAGS)`: flags to pass to the linker
* `$(LIBS)`: flags representing libraries for the compiler

You define a macro by writing `MACRO := value`.
