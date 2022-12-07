---
title: "Integration Testing"
weight: 9
---

# Integration Testing

We can't just be satisfied knowing our modules work. We also need to ensure that they work *together*. That's where integration comes in.

**Integration testing** is a specific type of testing that involves making sure modules work together. We can often do this using JUnit, though there are more tools for this as well.

There are different ways to approach integration testing:

* **Big-bang** integration is just testing stuff at random. This is bad because you can't scale it.
* **Bottom-up** integration is probably the most intuitive testing strategy. You start by making sure the lowest-level modules in your code work, and work your way up to the highest-level parts of your codebase. This system allows you to test as you write.
* **Top-down** integration is the reverse of bottom-up testing. Here, you start with your highest-level modules and integrate increasingly lower-level code. This isn't as easy for prototyping, but it helps you ensure that you're still following good design principles.

Top-down lets you make sure that the high-level ideas are in good order and that you have a good design, but it's not as easy to test a user interface as a helper and mocking low-level components can be a challenge. Bottom-up makes sure your implementations are in shape and lets you identify faults quickly, but neglects higher-level ideas that make your code easy to work with. What if you could combine them to make some kind of super-testing strategy?

Enter **sandwich integration**. Pick a target layer -- any layer! -- and work your way outward from there, using bottom-up integration to check higher-level class and top-down integration to test low-level classes. Sandwich testing is useful in large application, since it makes it easy to separate the user interface from other stuff and test. It's also quite scalable. The disadvantage is that sandwich testing doesn't work well with lots of interdependent classes, since isolating a class becomes very difficult.

## Mockito Unit Testing

The problem with integration testing, particularly the top-down variety, is that you need the dependencies of a class to work in order to test that class. What do you do? What if you simulated the dependencies?

That's where **Mockito** comes in. Using Mockito, you can simulate the behavior of a class by creating on-the-fly **stubs** -- hard-coded implementations that mock the behavior of a class. Starting out in your **driver** -- the class that the testing is run from -- you can specify the value you want Mockito to return when a method is called.

To mock a class `MockedClass`, you write the following:

```java
MockedClass mockedObject = mock(MockedClass.class);
```

Let's say that we have a certain method in `MockedClass`:

```java
// ...
public int calculateSomething() {
    // TODO: implement this method
    return 0;
}
// ...
```

We haven't implemented `calculateSomething()` yet, but we need the method during testing. We can use Mockito to mock the method:

```java
when(mockedObject.calculateSomething()).thenReturn(42);
```

Now, let's say we have another method in `MockedClass` that calls `calculateSomething()`, like so:

```java
// ...
public void doSomething() {
    int result = calculateSomething();
    // TODO: do something with result
}
// ...
```

How do we make sure that `calculateSomething()` is called? Using Mockito, of course!

```java
mockedObject.doSomething();
verify(mockedObject).calculateSomething();
```

We can also make sure that a method is called a certain number of times:

```java
verify(mockedObject, times(3)).calculateSomething();
```

Or that it's never called:

```java
verify(mockedObject, never()).calculateSomething();
```

If you want to ensure that, say, any item is added to a list, you can use the `any()` method:

```java
List<String> list = new ArrayList<>();
list.add("Hello");
list.add("World");
verify(list).add(any());
```
