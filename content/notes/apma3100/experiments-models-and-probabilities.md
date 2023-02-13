---
title: "Experiments, Models, and Probabilities"
weight: 1
---

## Set Theory

Probability is based around **set theory**, or the mathematics of sets. A **set** is a collection of objects, called **elements**. There is no order to the elements in a set, and no duplicates. Sets are denoted by capital letters, and written using curly braces.

A **subset** is a set whose elements are all in another set. A superset is a set that contains all the elements of another set. A **proper subset** is a subset that is not equal to the original set. A **proper superset** is a superset that is not equal to the original set. Two sets are equal if they are subsets of one another.

Some symbols for sets:

* {{< katex >}}\in{{< /katex >}} means "is an element of"
* {{< katex >}}\notin{{< /katex >}} means "is not an element of"
* {{< katex >}}\subseteq{{< /katex >}} means "is a subset of"
* {{< katex >}}\superseteq{{< /katex >}} means "is a superset of"
* {{< katex >}}\subset{{< /katex >}} means "is a proper subset of"
* {{< katex >}}\superset{{< /katex >}} means "is a proper superset of"

We can often use mathematical notation to describe sets. For example, {{< katex >}}\{x^2|x = 1, 2, 3, 4, 5\}{{< /katex >}} means "the set containing the squares of 1, 2, 3, 4, and 5", or {{< katex >}}\{1, 4, 9, 16, 25\}{{< /katex >}}.

The **null set** is a set with nothing inside. It is denoted by {{< katex >}}\emptyset{{< /katex >}}.

The **universal set** is the set containing all possible elements. It is denoted by {{< katex >}}S{{< /katex >}}. Every set is a subset of the universal set.

The **complement** of a set is the set of all elements that are not in the original set. It is denoted by {{< katex >}}A^c{{< /katex >}}.

The **union** of two sets is the set containing all elements in either set. It is denoted by {{< katex >}}A \cup B{{< /katex >}}.

The **intersection** of two sets is the set containing all elements in both sets. It is denoted by {{< katex >}}A \cap B{{< /katex >}}.

The **difference** of two sets is the set containing all elements in the first set that are not in the second set. It is denoted by {{< katex >}}A \setminus B{{< /katex >}}.

Two sets are **disjoint** or **mutually exclusive** if they have no elements in common (that is, {{< katex >}}A \cap B = \emptyset{{< /katex >}}).

A collection of sets is **collectively exhaustive** if the union of all the sets is equal to the universal set (that is, {{< katex >}}\bigcup_{i=1}^n A_i = S{{< /katex >}}).

A collection of sets is a **partition** if it is both mutually exclusive and collectively exhaustive.

**De Morgan's law** says that {{< katex >}}(A \cup B)^c = A^c \cap B^c{{< /katex >}}.

## Applying Set Theory to Probability

The basic model for studying probability is an **experiment**, which consists of a **procedure** and **observations**.

An **outcome** of an experiment is any possible observation of that experiment.

The **sample space** of an experiment is the finest-grain partition of all possible outcomes.

An **event** is a set of outcomes of an experiment.

## Probability Axioms

## Conditional Probability

## Partitions and the Law of Total Probability

## Independence
