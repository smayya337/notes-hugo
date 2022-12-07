---
title: "Clean Code"
weight: 6
---

# Clean Code

**Clean code** is not just understandable code. It's code that's easy to work with and update over time.

Software also falls prey to **entropy**. As a project ages, it gets increasingly more difficult to maintain. We can't completely stop entropy, but we do want to slow it down as much as possible, which is why it's important to keep our code clean.

**Code smells** are bad practices in design and structure. Some examples:

* Long methods. They should be small, and smaller than that. Break them up into multiple functions.
* Large classes. Split them up into several smaller classes with easy-to-use interfaces.
* Lots of parameters. It's better to make lots of one-parameter calls than one gazillion-parameter call.
* Boolean parameters. Just make two functions. You can even consider using polymorphism to create another class for your special case.
* Tons of primitives. Move related primitives into another class and just use an object of the new class.
* Repeated code. Don't repeat yourself.
* Long chains. That's not readable. Just use multiple lines. It's not the end of the world.

## Analyzability

**Analyzability** is key to maintainability and basically breaks down into two parts:

* **Readability**: how well can we read the literal code?
* **Understandability**: how well can we understand what the code does?

Tips for readability:

* Use spacing. There's no need to stuff everything in one line.
* Make variable names human-readable and human-pronounceable.
* Make variable names distinct enough that they can't be confused for one another.

Tips for understandability:

* Use your variable names to communicate intent. Make it clear what the purpose of each variable is.
* Magic numbers are bad. Don't have random numbers hard-coded in. Assign them to constants with descriptive names and use those names instead so it's clear what you're trying to do.
* Encapsulate your code. This way, you can avoid showing the ugly implementation of stuff everywhere in your codebase and restrict it to one little area while making it easier to see what's going on. As a bonus, it's easier to change the implementation since you only have to fix things once.

## Refactoring

**Refactoring** is changing internal software quality while not changing the functionality. Refactoring is essential to keeping code clean, since no one writes clean code the first time. By refactoring, we can get closer and closer to clean code.

Tests are very helpful when refactoring. Since tests are checking the function's behavior, we can ensure that the behavior of the program isn't actually changing when we refactor.

Examples of refactoring operations:

* Extracting constants. Remember those magic numbers? Just make them constants!
* Renaming identifiers and classes. Make them easier to understand.
* Moving classes between packages. Sometimes a class fits best in another part of your codebase.
* Changing method signatures. We can rearrange argument order into something more sensible.
* Replacing arrays with objects. Encapsulation at work!
* Inlining variables.
* Simplifying abstract conditional logic.
* Inverting booleans.
* Replacing error codes with exceptions.
* Preserving whole objects.
* Creating safe copies of mutable return types to avoid accidental state changes.
* Copying collections.

## Comments

We actually don't want comments. Ideally, they should be completely pointless! Your code should be perfectly capable of explaining itself. If you need comments, that means your code isn't as readable and understandable as it should be.

## Technical Debt

**Technical debt** is accrued by not actively taking steps to ensure your code is clean. Laziness now comes back to bite you down the line -- and it often takes more time to fix later than if you had just done it to begin with.
