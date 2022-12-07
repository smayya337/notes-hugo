---
title: "Java"
weight: 2
---

# Java

## Compiling vs. Interpreting

A computer does not actually understand high-level code. Another program is required to translate our statements into something that the computer is capable of understanding and executing. There are a couple different approaches to this process.

**Compiling** involves passing the source code through another program (a compiler) before it can be run. The compiler creates an executable based on the source code, which is what actually gets run. This is the method used by languages including C, C++, and Rust, among others. Compiling means you never have to mess with machine code, which is nice. Plus, a lot of the time you won't need extra programs to actually run the executable, just to build it. Unfortunately, compiled code isn't always portable. If you have different versions of libraries that the code depends on, then it won't run. Different operating systems pose a problem with compiled code, as do different CPU architectures.

**Interpreting** means that a program (called the interpreter) converts your code into machine code and executes it in order as the program is running. This means you can "run" your source code, unlike the compiled code system where you have to run the machine code file. The disadvantage is that you need an interpreter on your system or else you can't run the code. Also, interpreted languages are often slower than compiled ones. Python and Ruby are examples of interpreted languages.

## Java Files

There are three main types of Java files:

* `.java` files: Java source code
* `.class` files: Java byte code (not machine code!)
* `.jar` files: executable Java binaries

## Commands

There are a few different commands commonly used with Java:

* `java [class]`: runs a Java class.
* `java --version`: prints out the Java version.
* `javac [class].java`: compiles a Java class.
* `jar cf [name].jar [classes]`: combines classes into a single executable `.jar` file.
* `java cfe [name].jar [mainclass] [classes]`: combines classes into a single executable `.jar` file, specifying a specific class to be run when the `.jar` is executed.
* `java -jar [name].jar`: runs a `.jar` file.

## How Java Works

When you compile a `.java` file, the **Java Development Kit (JDK)** turns it into a `.class` file, which is then run by your computer. Just like C! Except for one thing: Java byte code is portable. Like, actually portable. How does that work?

Well, the `.class` file isn't really run by the computer -- not directly, at least. It's actually run by a program called the **Java Runtime Environment (JRE)**. The JRE contains built-in classes and other libraries along with a **Java Virtual Machine (JVM)**, which simulates a system inside your system and actually interprets the byte code using the physical system resources.

Wait, but isn't interpreted code usually slower than compiled? It is, but Java's got a trick up its sleeve. Meet the **Just In Time (JIT) Compiler**, a part of the JVM that compiles the byte code into machine code. That code goes back to the JVM to be run. That means you're still actually running optimized machine code, unlike the "typical" interpreted setup.

The advantage to all of this is portability. When you pass byte code to the JRE, you are sending in something that has no dependence whatsoever on the system that it's running on (as opposed to C, where it depends on the libraries and architecture and all). The platform-specific stuff only comes in at the JVM level, where the JIT turns it into specific machine code and then the JVM runs it. This means you can pass around compiled code -- executables -- to anyone with the JRE installed and the code will work just fine on their system. You don't need to send source code for anything! This is obviously useful for software distribution.

## Benefits of the Java System

There are a number of benefits to using Java:

* Object orientation: software patterns are largely object-oriented, and so is Java.
* Visibility: Java is a very verbose language, which has its downsides but can be useful for making the code more readable and understandable.
* Support: Java is a well-established and popular language, making it easy to get help when things go wrong.
* Portability: Unlike some other languages, Java is easy to move between systems. Even the compiled code can be run on different systems because of how Java is set up under the hood.

## Java Packages

Java code is typically organized into a hierarchy of **packages**, with similar classes bundled together. Many of thses packages are not immediately available when coding in Java and need to be imported using the `import` statement. When writing Java software, it's a good idea to put your classes under packages so that you can avoid name conflicts in the **default namespace** (the zone that's used when you don't put your code in a package). Packages are also good for modularity and reusability, since it's easier to just detach and reuse a package than copy over and adjust a bunch of lines of code.
