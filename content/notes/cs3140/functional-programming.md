---
title: "Functional Programming"
weight: 7
---

## Lambda Functions

A **lambda function** is a quick and easy unnamed function defined by some variables. They often take the syntax `(var1, var2) -> {do something here}`.

## Functional Interface

A **functional interface** is an interface that consists of one **single abstract method (SAM)**. The goal here is to ensure that every class implementing the interface has that specific capability, such as shorting or doing something in a multithreaded context. Unfortunately, this can lead to an awful lot of classes, which is why we often also use **anonymous classes** and lambda functions instead of functional interfaces.

## Java Streams

A `Stream` is like an actual stream -- it spits stuff out and you take it as it comes. You can pass a stream into a bunch of functions like `filter()`, which takes a predicate (criterion) and, well, filters everything in the `Stream`; `sorted()`, to sort stuff using lambda functions; `map()`, which returns the output of another function for each stream item; `limit()`, which only takes the first `n` elements from the stream; `distinct()`, which removes duplicates; and `collect()`, which gathers all the items togetner into some collection.

`Predicate` is used in `filter()`, `Comparator` is used in `sorted()`, `Consumer` is used in `foreach`, and `Function` is used in `map()`.
