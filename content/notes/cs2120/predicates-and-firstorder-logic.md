---
title: "Predicates and First-Order Logic"
weight: 4
---

Simple statements are nice and all, but sometimes you just need more. What if you want to say, "All files that are larger than 1,000 blocks are to be moved to backup provided that they have not been referenced within the last 100 days and that they are not system files."? That's a lot of information to pack into a single statement. This is where **predicates** come in.

A predicate is a function that evaluates to true or false. It's kind of like a proposition missing the nouns -- almost like a proposition template of sorts. For example, if we have the statement "Sam loves Diane", the predicate would be "  \_\_\_ loves \_\_\_" and the **arguments** would be "Sam" and "Diane". If we express "Sam loves Diane" `L(x, y)` where `x` is "Sam" and `y` is "Diane", then we can say that `L(Sam, Diane)` is true. If we say `L(Diane, Sam)`, then we can say that `L(Diane, Sam)` is false. We can also say that `L(Sam, Sam)` is false. This is because the predicate is not symmetric.

{{< katex >}}\forall{{< /katex >}} is the **universal quantifier**. It means "for each element in the set". If `L(x) = "x loves Raymond"`, then {{< katex >}}\forall x. L(x){{< /katex >}} means "everybody loves Raymond".

{{< katex >}}\exists{{< /katex >}} is the **existential quantifier**. It means "there exists". It expresses that a propositional function can be satisfied by at least one member of the domain. If `L(x) = "x loves Raymond"`, then {{< katex >}}\exists x. L(x){{< /katex >}} means "somebody loves Raymond".

What about when your domain is the empty set? {{< katex >}}\forall x \in \emptyset. L(x) = \top{{< /katex >}} and {{< katex >}}\exists x \in \emptyset. L(x) = \bot{{< /katex >}}.
