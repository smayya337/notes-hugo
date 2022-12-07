---
title: "Design Patterns"
weight: 14
---

# Design Patterns

A **design pattern** is, well... a pattern that you use when designing a system. The trick behind design patterns is that they help you with functional independence and information hiding -- if you know the pattern, you can figure out how the interface works. It's also easier to understand something if it follows a pattern.

Design patterns are useful if they solve a design problem you are trying to solve. If you apply a pattern where it's not needed or apply the wrong pattern, you will probably just dig yourself further into a hole of bad design. However, if you apply the right pattern under the right circumstances, it can go a long way towards making your code cleaner and more understandable.

There are three main types of design patterns: **creational patterns**, **structural patterns**, and **behavioral patterns**.

## Creational Patterns

Creational patterns handle creating objects. A lot of times, objects may have contrived processes for creation, requiring explanations for how to create them. If we explain the process, though, we're not exactly following the principle of information hiding. What do we do? Well, we can use creational patterns to simplify the creation process.

A **Singleton** is a creational pattern where you can only have one instance of an object at a time. You call a method, and if no object exists it'll create a new one and give it to you. After that, whenever you call the method the Singleton class will just return that same object.

```java
public class Singleton {
    public static Singleton getInstance() {
        if (instance == null) {
            instance = new Singleton();
        }
        return instance;
    }
}
```

Here's another scenario: Imagine you have an abstract class and a number of concrete classes extending that abstract class. Based on user input, you need to pick a concrete class and return a new object of that class. How do you do it? You use the **Factory** pattern, of course! A Factory class contains a method which handles the logic of choosing a class. The method than instantiates an object in that class and returns the object.

```java
public class ConcreteClassFactory {
    public static ConcreteClass getObject(String requested) {
        switch (requested) {
            case "ConcreteClass1":
                return new ConcreteClass1();
            case "ConcreteClass2":
                return new ConcreteClass2();
            default:
                throw new IllegalArgumentException("Not a valid choice!");
        }
    }
}
```

You can actually increase the abstraction on Factory classes by making... wait for it... an **AbstractFactory**. The idea here is basically, "What if you had a Interface for Factories?" Concrete implementations of your AbstractFactory will have methods returning specific objects. The return types on those methods are all abstract classes, but the actual objects returned will be instances of concrete classes extending those abstract classes. It's abstraction all the way down.

```java
public interface AbstractFactory {
    public static ProductA createProductA();
    public static ProductB createProductB();
}

public class ConcreteFactory1 implements AbstractFactory {
    public static ProductA createProductA() {
        return new ConcreteProductA1();
    }

    public static ProductB createProductB() {
        return new ConcreteProductB1();
    }
}

public class ConcreteFactory2 implements AbstractFactory {
    public static ProductA createProductA() {
        return new ConcreteProductA2();
    }

    public static ProductB createProductB() {
        return new ConcreteProductB2();
    }
}

public abstract class ProductA {
    // logic
}

public abstract class ProductB {
    // logic
}

public class ConcreteProductA1 extends ProductA {
    // logic
}

public class ConcreteProductB1 extends ProductB {
    // logic
}

public class ConcreteProductA2 extends ProductA {
    // logic
}

public class ConcreteProductB2 extends ProductB {
    // logic
}
```

## Structural Patterns

Structural patterns help bring objects together. Using structural patterns lets you work around mismatches while keeping those linking modules nice and flexible.

An **adapter** pattern is the most basic structural pattern. Imagine your data provider gives you XML but your analytics library only works in JSON. What do you do? You write an adapter to switch your XML to JSON, of course! The Adapter class extends one of the affected classes and provides the same interface as the class it's extending, but it changes up the implementation so that everything works correctly.

```java
public class RoundHole {
    private int radius;

    public RoundHole(int radius) {
        this.radius = radius;
    }

    public int getRadius() {
        return radius;
    }

    public boolean fits(RoundPeg peg) {
        return peg.getRadius() <= radius;
    }
}

public class RoundPeg {
    private int radius;

    public RoundPeg(int radius) {
        this.radius = radius;
    }

    public int getRadius() {
        return radius;
    }
}

public class SquarePegAdapter extends RoundPeg {
    private SquarePeg peg;

    public SquarePegAdapter(SquarePeg peg) {
        this.peg = peg;
    }

    public int getRadius() {
        return peg.getWidth * Math.sqrt(2) / 2;
    }
}

public class SquarePeg {
    private int width;

    public SquarePeg(int width) {
        this.width = width;
    }

    public int getWidth() {
        return width;
    }
}
```

Systems can get pretty complex and contain a lot of moving parts, and the interface can get hard to use as a result. A **Facade** pattern lets us hide fancy, convoluted interfaces behind a nice and easy one. It may not have every feature, but it has most of the stuff that the user cares about, and that's what matters.

Let's say you have a huge object that takes tons of resources to use, but you only need it from time to time. In this scenario, you should use a **Proxy** pattern! A Proxy class goes in front of your service object and provides the same interface as the object. Before spinning up the lumbering beast that is your service object, you can run some logic inside the Proxy. Maybe the Proxy is a cache, and it already has what you need stored in the cache. Maybe it's checking whether you have the right permissions to access what you want. Whatever it is, if the Proxy determines you need to access the service object, it'll start that up, reducing your dependence on the service object.

We can use a **Bridge** pattern to separate dimensions of an object, preventing us from having to make tons and tons of subclasses. For example, let's say you have a `Shape` class and want to make a color property. Instead of making, for example, a `RedSquare` subclass and a `BlueCircle` subclass and stuff, you can make a `Color` class, have `Red` and `Blue` extend that, and then include `Color color` as a field of `Shape`. That way, you don't have to touch anything on the shape side if you want to include a color.

Another way to handle lots of combinations of subclasses is via a **Decorator** pattern, where you may have different combinations of properties and need to do specific actions depending on those properties. For example, maybe you need to push notifications to any of Slack, Facebook, Twitter, and SMS depending on what a user has selected. You can create decorators that wrap an object. All of the decorators extend the object's base class, so by the end of all the wrapping you'll still have something with the same interface as the initial object. When you call the method to send notifications, each of the decorators gets its turn to do whatever it wants on top of the base functionality, ensuring you get your notifications on all the right platforms.

The Decorator pattern is taken to almost an extreme with the **Entity-Component-System** architecture, which is popular in game development. Every item in your game world is an **entity**, which is basically just a blob with no data or methods or anything. All of the entity's properties are applied by stacking **components** on top. All of the behaviors are handled by specific **systems**, which are each responsible for one section of the game (e.g. animation, physics, AI, etc.)

## Behavioral Patterns

Behavioral patterns let you dynamically select specific system behaviors.

Imagine something just happened in your system, and you need to notify a bunch of different objects. You could just call a method on each of them, but that's a lot of work. A **Observer** pattern lets you register objects as observers of a subject, and then when the subject changes, it notifies all of its observers. The observers can then do whatever they want with the information.

Let's say you have a bunch of ways of doing the same thing. Instead of calling a handler on each one, which is awkward and brittle, you can send all the request information to a **Command**, which actually does the work. The Command can then be passed around and executed at a later time, or even undone.

What if you have multiple algorithms and you need to select one at runtime? You can use a **Strategy** pattern! A Strategy class has a method that takes in a parameter and returns a result. You can then create a bunch of different classes that implement the Strategy interface, and then you can select which one to use at runtime.

Finally, there's the one we know best: The **Iterator** is a behavioral pattern for letting us work with each item of a collection in order without having to know how the collection is implemented.
