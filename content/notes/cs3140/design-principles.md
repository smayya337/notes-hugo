---
title: "Design Principles"
weight: 10
---

So, uh, how exactly do you design good code?

## Modularity

**Modularity** is building your software out of many small pieces (aka modules). In object-oriented languages, modules often take the form of classes, while in other languages they tend to be groups of related functions. Modularity makes your code easier to understand, test, and maintain.

We can achieve modularity through **decomposition**, which is the process of breaking complex stuff down into simpler parts. When doing so, we really want to consider the **cohesion** of the module -- that is, how much elements of the module are related to each other. Tighter cohesion means that the internals of the module will work extremely well together toward one functional purpose.

## Types of Cohesion

These types are awful:

* **Coincidental cohesion**: The elements of the module are related to each other by chance.
* **Logical cohesion**: The elements of the module are related to each other by a common purpose, but that purpose is not the module's purpose.
* **Temporal cohesion**: The elements of the module are related to each other because they do things around the same time (e.g. all at startup).

These are a little better, but still not great:

* **Procedural cohesion**: The elements of the module are related to each other because they are all part of the same procedure.
* **Communicational cohesion**: The elements of the module are related to each other because they interact with the same data, but they're doing different things with the data.

This one's pretty good:

* **Sequential cohesion**: The elements of the module are related to each other because the output of one method serves as the input for the next. (The input-output pipeline is the key difference between procedural and sequential cohesion.)

These are the best:

* **Functional cohesion**: The elements of the module are related to each other because they describe a single functional behavior.
* **Data cohesion**: The elements of the module combine to create one data structure.

Functional cohesion is nice -- your public interface basically gives you the module's purpose, and everything on the inside works smoothly to fulfill that task.

## Functional Independence

Even though we want all the elements of a module to work together, we don't want whole modules to be joined at the hip. **Functional independence** is the idea that modules should be able to be changed without affecting other modules. This means having loose **coupling**, or connection between modules.

Functional independence is often achieved by minimizing the amount of information exposed to the world. This is possible through **abstraction** -- designing a program around its interface rather than its implementation -- and only providing information on an as-needed basis. This way, we have neat interfaces that are easy to use and understand, and we can change the implementation of a module without affecting anything outside of the module.

## Types of Coupling

* **Content coupling**: This is where one class directly uses the data of another class. If you change how that data is stored, you'll have to change the other class as well.
* **Common coupling**: This is where two classes share global data.
* **Control coupling**: This is where one class passes a flag to another class to tell it what to do.
* **Stamp coupling**: This is where one class sends another class more data than it needs (e.g. via an unnecessarily complex data structure).
* **Temporal coupling**: This is where you have to do one thing before another or else things break. You want to set up your code so that you can't ever achieve an incorrect state.
* **Data coupling**: This is where the only interaction between two classes is through data (passing through arguments and return statements). This is what we want.

If you're working with mutable data structures like lists, you might want to return a new instance of the structure rather than modifying the original. This way, you don't mess with the original data, which might need to be used as-is somewhere else.

## Generic Design Principles

Some basic design principles that apply to all programming languages:

* **DRY**: Don't Repeat Yourself. If you find yourself repeating code, you should probably abstract it out into a method or class.
* **KISS**: Keep It Simple, Stupid. Don't overcomplicate things.
* **YAGNI**: You Ain't Gonna Need It. Don't write code that you don't need.

## SOLID

The term **SOLID** is an acronym for five design principles that help you write good code:

* **Single Responsibility Principle**: A class should have one, and only one, reason to change. If a class has multiple reasons to change, it's not achieving its purpose of being a single unit of functionality.
* **Open/Close Principle**: Classes should be open for extension, but closed for modification. You shouldn't need to edit existing code to add new functionality.
* **Liskov Substitution Principle**: Subclasses should be able to replace their parent classes without breaking the program. In practice, this means that parent and child classes should have the same interface.
* **Interface Segregation Principle**: Don't make clients depend on interfaces they don't use. Don't group different behaviors into the same interface, because then everything that needs one of the behaviors in that interface will have to pull in all the functionality for the other stuff.
* **Dependency Inversion Principle**: Depend on abstractions, not on concrete classes. This means that you should use interfaces and abstract classes to define the behavior of a class, rather than using concrete classes and implementations.
