---
title: "Relations and Functions"
weight: 5
---

## Relations

A **relation** can be defined as a subset of a cross product:

{{< katex display >}}R(x, y) \subseteq X \times Y{{< /katex >}}

The relation is a set of ordered pairs. If {{< katex >}}a R b = R(a, b){{< /katex >}}, then {{< katex >}}(a, b) \in R{{< /katex >}}.

A **binary homogenous relation** is a relation where all the elements are from the same set, i.e. {{< katex >}}xRy{{< /katex >}} where {{< katex >}}R \subseteq A \times A{{< /katex >}}.

A binary relation {{< katex >}}R{{< /katex >}} on a set {{< katex >}}A{{< /katex >}} is **reflexive** iff {{< katex >}}aRa{{< /katex >}} for all {{< katex >}}a \in A{{< /katex >}}. Conversely, a binary relation is **irreflexive** iff {{< katex >}}\forall x \in A. \lnot(x R x){{< /katex >}}. A function is irreflexive iff its complement is reflexive. Note that a relation can still be reflexive even if objects are unequal and related.

A binary relation {{< katex >}}R{{< /katex >}} on a set {{< katex >}}A{{< /katex >}} is **symmetric** iff {{< katex >}}\forall x, y \in A. xRy \leftrightarrow yRx{{< /katex >}}. If a relation's adjacency matrix is equal to its transpose, then the relation is symmetric. A binary relation {{< katex >}}R{{< /katex >}} on a set {{< katex >}}A{{< /katex >}} is **asymmetric** iff {{< katex >}}\forall x, y \in A. xRy \rightarrow \lnot(yRx){{< /katex >}}. If a relation's adjacency matrix is not equal to its transpose, then the relation is asymmetric. A binary relation {{< katex >}}R{{< /katex >}} on a set {{< katex >}}A{{< /katex >}} is **antisymmetric** iff {{< katex >}}\forall x, y \in A. (xRy \land yRx) \rightarrow (x = y){{< /katex >}}. Essentially, if an antisymmetric relation gives the same answer both ways, then the arguments must be equal.

A binary relation {{< katex >}}R{{< /katex >}} is **transitive** iff {{< katex >}}\forall x, y, z \in A. (xRy \land yRz) \rightarrow xRz{{< /katex >}}.

A binary relation {{< katex >}}R{{< /katex >}} on a set {{< katex >}}A{{< /katex >}} is an **equivalence relation** iff it is reflexive, symmetric, and transitive. The equals sign is an example of an equivalence relation.

A binary relation {{< katex >}}R{{< /katex >}} on a set {{< katex >}}A{{< /katex >}} is a **partial order** iff it is antisymmetric and transitive. The less than sign is an example of a partial order.

## Functions

A **function** assigns an element of one set to another set. The notation {{< katex >}}f: A \rightarrow B{{< /katex >}} indicates that {{< katex >}}f{{< /katex >}} is a function with **domain** {{< katex >}}A{{< /katex >}} and **codomain** {{< katex >}}B{{< /katex >}}. The notation {{< katex >}}f(a) = b{{< /katex >}} indicates that {{< katex >}}f{{< /katex >}} assigns the element {{< katex >}}b \in B{{< /katex >}} to a specific argument {{< katex >}}a \in A{{< /katex >}}. {{< katex >}}b{{< /katex >}} is the **value** of {{< katex >}}f{{< /katex >}} at **argument** {{< katex >}}a{{< /katex >}}.

A function does not have to be defined for every element in its domain. Such functions are called **partial functions**. A **total function** is defined for every element in its domain. A function also does not need to return every element in its codomain. The **range** of the function is the set of all values that the function returns.

A **surjective function** is a function that returns every element in its codomain. A **injective function** is a function that returns a unique value for every argument. A **bijective function** is a function that is both surjective and injective.
