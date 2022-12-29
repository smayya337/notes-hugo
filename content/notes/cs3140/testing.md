---
title: "Testing"
weight: 4
---

## Primary Purposes

How do we know whether our software is ready to release? Well, that depends on two things:

* **Verification**: does the code meet the specification? Did you build the thing right?
* **Validation**: does the software fulfill its intended purpose? Did you build the right thing?

All software is prone to these types of problems:

* **Defects**: existing problems according to the specification
* **Failures**: things that keep the software from fulfilling its function
* **Mistakes**: human errors that produce something incorrect
* **Errors**: differences between the current state and the correct state (compare with percentage error in chemistry!)

The primary purpose of **testing** is to find defects early before the issue gets worse. That means you need to check a variety of circumstances, not just ones where the code will work. You need to see what can cause things to go wrong and fix it.

It's worth noting that a test can never completely prove your code is bug-free. There could be something that you never tested with the potential to mess everything up.

## Writing Tests

A test **passes** if the actual and expected values of something match, and it **fails** if they do not.

Unit (and sometimes integration) tests are written using **JUnit 5**, a testing framework. The way this works is that you'll have a class full of only tests. Each test has the `@Test` flag before the method signature. A test must be `public void` and take no arguments.

An *assertion* is a statement that makes sure a condition is valid. If it isn't, the assertion throws an `AssertionError`. JUnit5 has several different types of assertions to use:

* `assertEquals`: makes sure that two values are equal
* `assertArrayEquals`: makes sure that two arrays are equal
* `assertTrue`: makes sure that something is true
* `assertFalse`: makes sure that something is false
* `assertNull`: makes sure that something is null
* `assertNotNull`: makes sure that something is not null
* `assertThrows`: makes sure that something throws an exception

For doubles, you can also specify a tolerance within which `assertEquals` passes to avoid floating point imprecision.

The `@DisplayName` tag can be used to explain what a test is checking for. You can also add custom fail messages for assertions to give more information on what went wrong.

When writing a unit test, you only want to call the method being tested once! This way, you don't have to worry about which instance of the call caused the defect to appear.

Making code easy to test has the side effect of also making it more modular, which is good. Tests should also serve as a form of documentation: who needs comments when you have unit tests showing what should and shouldn't work?

## Types of Tests

There are three types of **verification testing**:

* **Unit testing** is the smallest-scale type of verification testing, involving checking the behavior of individual modules or functions. The advantage here is that you can quickly isolate the specific module or function where a defect is located. In addition, unit testing is very easy to automate, which makes running the test suite quick and easy.
* **Integration testing** is the next level up. Here, you check modules in conjunction with one another. For example, you may be testing one operation within your program that involves functions from different modules working together. Integration testing can also usually be automated, but may require more work than unit testing, so unit testing is generally preferable for finding bugs.
* **System testing** is the largest-scale form of verification testing. This involves checking out the functionality of the software as a whole from a user's perspective. This is important for making sure the whole package works as intended, but it's not great for finding bugs since you're theoretically running every line of code in the program so you don't know where the defect is. If a defect is first found in system testing, you should go back and write unit and integration tests to determine the source of the defect and fix it. System testing often follows a script.

It is important to test your code as you write it! This way, you'll catch defects as soon as they come into existence.

Keep your old tests around. This is called *regression testing*, and it helps since it makes sure we don't reintroduce old defects or break already-working parts of our code.

**Acceptance testing** is testing for validation, i.e. making sure the software meets the client's needs. Types of acceptance testing include:

* **Alpha testing**: this is carried out by the developers pretending to be users and messing around with the software to see what goes wrong.
* **Beta testing**: here, the developers find people who would be likely to use the software after release and have them mess around with the software. Their actions are monitored for the purpose of swiftly finding and fixing bugs.

## Test Plans

So what exactly are we testing? And how many tests do we write? This where coming up with a **test plan** comes in. There's no perfect number of tests to write, and we certainly can't test every possible input, so we need to determine what different types of inputs we might have and what sorts of tests will broadly cover everything.

Here are a few types of test cases:

* **Equivalence test cases** are the "normal" type of test case. These show how the software behaves under typical usecases.
* **Boundary test cases** involve something unique that separate them from an equivalence case, such as a notable state change or an unusual input.
* **Exception test cases** are specifically designed to break your code. These should throw exceptions.
* **Robustness test cases** are technically valid but pointless in practice.

If you can't determine which type of test case you're dealing with, you should probably get your specification clarified.

How many tests do you write? The answer is... it depends. You want to be thorough enough that you're confident in the corectness of your code, but testing for its own sake is pointless so you don't want to waste time on unnecessary tests.

Some test plan strategies:

* **Black-box testing**: we're testing the interface, not the implementation. We're less concerned about what the function is doing behind the scenes than what we get out of it.
* **White-box testing**: we're looking at what exactly the code is doing and making sure that everything is running smoothly behind the scenes.
* **Equivalence partitioning**: we don't need to test everything under the sun, so we're putting inputs into groups based on how the program is expected to behave for each one.

White-box testing uses **code coverage** -- basically, the extent to which the code is being tested. This can be measured in a few different ways:

* **Statement coverage** -- which statements have been tested?
* **Branch coverage** -- which conditional branches have been tested?
* **Conditional coverage** -- for the conditionals in a statement, have we tested all possible permutations of conditionals?

## Test-Driven Development

**Test-driven development** is the practice of writing tests that lay out what your code is supposed to do before actually writing the main code. This way, you clearly know where things can go wrong and work around them.

Steps:

1. Write a **stub** -- a placeholder method signature so that everything compiles.
2. Write a test, including a call to your method and one or more assertions.
3. Commit your test to Git.
4. Write just enough code in the actual method to make sure that the test passes.
5. Commit your code to Git.
6. Repeat steps 2-5, making sure that you're testing different partitions of inputs.
7. At some point, start over with a new method.
