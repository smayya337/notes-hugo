---
title: "Defensive Programming"
weight: 5
---

# Defensive Programming

**Defensive programming** is programming with the expectation that people will do the wrong thing and cause problems. Your job as a defensive programmer is to be prepared for these bumps in the road and be able to respond effectively. In general:

* A user should never see a programmer error. The program should work properly.
* If the user messes up, they should know.

We need to ensure that any **client** using a class in our program is using the class correctly. If they are not, they should know that they are in the wrong. Our class should not be capable of being misused to provide an invalid state. If we don't detect an erroneous state until after performing some operation, then we should roll back the changes before throwing an exception to make sure nothing problematic can be created from this weirdness.

## Throwing Exceptions

Throwing exceptions seems like a bad thing, but it's really not A lot of the time, we actually want to throw Exceptions -- for instance, when a precondition or postcondition of our function is violated. The `assertThrows()` method from JUnit 5 comes in quite handy here, since it allows us to check if a function is actually throwing an exception or not. In addition, we also want to make sure that any state changes are rolled back before throwing an exception, so we should write assertions to check for that.

## Handling Exceptions

We handle exceptions using a `try {} catch {}` syntax structure. However, we don't always want to do that! It's important to keep in mind what we plan to do with the exception. If you have no idea what to do once you've caught an exception, then don't bother catching it! Handling is best served for when you know what to do. The exception to this is when you have a **checked exception**, which forces you to handle it at some point. In those cases, you don't have a choice but to handle the exception. If you're working with a standard **unchecked exception**, though, then don't worry about it.

## Custom Exceptions

Custom exceptions are neat because you can make it clearer what actually went wrong. Sure, you could always just throw a `RuntimeException` if something happens... or you can make your own exception class extending `RuntimeException` that brings focus to the specific mistake made by the user so that the issue can be resolved.

## Using Classes Correctly

The goal of a class is to hide implementation details. Therefore, it is important that we break stuff into classes and encapsulate properly.

The core of using classes correctly is the **Single Responsibility Principle**, which effectively says that "a class should only have one reason to change." We don't want to keep messing with a class whenever a new change comes by. Instead, we should make several classes that each handle different behaviors.

We should also consider two things reagarding classes:

* What is its purpose?
* What is its interface?

We can also use an abstract class and polymorphism to combine similar behaviors.

## The `AssertionError`

An `AssertionError` appears whenever an `assert` statement fails. You can run `java` with the `-ea` flag to activate assertions.
