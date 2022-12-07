---
title: "Polymorphism"
weight: 8
---

<!-- markdownlint-disable-next-line MD025 -->
# Polymorphism

## Interfaces

An **interface** is essentially a list of methods to implement. An interface cannot do anything on its own; its only purpose is for classes to implement the methods in the interface. In Java, when you want to use an interface in your class you use the `implements` keyword in your class declaration. This means that your class has to implement the methods listed in the interface -- it will not compile otherwise.

The advantage of an interface is that it helps with reusability. If a class implements an interface, you know the class will always have the methods defined in the interface, so you don't have to worry about custom implementations for stuff.

## Inheritance

**Inheritance** is an "is a" relationship. A **subclass** extends a **superclass**, coming with all the methods and attributes of the superclass and possibly adding some of its own. Note that inheritance is asymmetrical -- if class `Car` is a subclass of class `Vehicle`, then `Car` is a `Vehicle` but `Vehicle` is not a `Car`!

In contrast to inheritance, **aggregation** is a "has a" relationship. A `Car` is a `Vehicle` (inheritance) that has an `Engine` (aggregation).

A subclass can access `public` fields and methods of its superclass. It can even access `protected` fields and methods. It cannot access `private` fields and methods.

Any instance of a subclass is an instance of a superclass. Therefore, we can do stuff like `Vehicle v = new Car();` since `Car` is a subclass of `Vehicle`.

To create a subclass, you use the `extends` keyword in the class declaration. To interact with the superclass's stuff, use the `super` keyword. The superclass's constructor is called by `super();` and must be the first statement in the subclass's constructor if used.

You can also create **abstract classes**, which have fields as well as unimplemented methods. The difference between an abstract class and an interface is the presence of fields and constructors in abstract fields. (Interfaces technically have fields, but they are `public static final` so you can't actually do much with them.) You can implement as many interfaces as you want, but only extend one class.

## Interface vs. Implementation

What's nice about polymorphism is that you can separate the interface from the implementation. By interface, I mean the description of the behaviors of a class, which is not just the Java `interface` keyword. Here, we're talking both the syntax and the intended abstract behavior -- that is, what exactly we expect to do here. Both the Java interface and abstract class types can be used to express this. We want to ideally hide the implementation behind the easy-to-understand interface and the intended abstract behavior.

The implementation is the messy stuff. It's the actual handling of the behaviors communicated via the interface. The implementation should not be visible from the interface. Polymorphism allows us to hide these details from most of the system, only communicating via the nice little interface while keeping the implementation stuff behind the scenes.

## Runtime Polymorphism

**Runtime polymorphism** is when the JVM figures out the object type during runtime and uses that to run the correct version of a method. In Java, this is accomplished via **method overriding** -- having the same method do different things in a subclass and superclass. (The subclass's version takes priority.)
