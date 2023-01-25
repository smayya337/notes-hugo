---
title: "What are the Real Numbers?"
weight: 1
---

This course is centered around the real numbers. But what *are* the real numbers?

Here's what we know about {{< katex >}}\mathbb{R}{{< /katex >}}, the set of real numbers:

* They contain {{< katex >}}\mathbb{Q}{{< /katex >}}, the set of rational numbers.
* They are a **field**. Operations like addition, subtraction, multiplication, and division are valid on this set.
* They're **ordered**. For any {{< katex >}}a, b \in \mathbb{R}{{< /katex >}}, {{< katex >}}a \le b{{< /katex >}} or {{< katex >}}b \le a{{< /katex >}}. We can also use the transitive property: if {{< katex >}}x \le y{{< /katex >}} and {{< katex >}}y \le z{{< /katex >}}, then {{< katex >}}x \le z{{< /katex >}}.
* They are an **ordered field**. Mind-blowing, I know. This shows that the order of operations will play nicely here.
* They are **complete**. Every subset of {{< katex >}}\mathbb{R}{{< /katex >}} that is bounded above has a **least upper bound**, or **supremum** -- the smallest number that is greater than or equal to every value in the subset.

## Proof: The Archimedean Property

### Theorem

1. Given any {{< katex >}}x \in \mathbb{R}{{< /katex >}}, there exists an {{< katex >}}n \in \mathbb{N}{{< /katex >}} such that {{< katex >}}n \ge x{{< /katex >}}.
2. Given any {{< katex >}}y > 0{{< /katex >}}, there exists an {{< katex >}}n \in \mathbb{N}{{< /katex >}} such that {{< katex >}}\frac{1}{n} < y{{< /katex >}}.

### Proof

Proving point 1 of the theorem uses a **proof by contradiction**: we'll assume the opposite is true and work until we come to an irreconcilable situation.

1. Suppose that there exists an{{< katex >}}x \in \mathbb{R}{{< /katex >}} such that for all {{< katex >}}n \in \mathbb{N}{{< /katex >}}, {{< katex >}}n < x{{< /katex >}}.
2. By definition, {{< katex >}}x{{< /katex >}} is an upper bound for {{< katex >}}\mathbb{N}{{< /katex >}}. In this case, there must be a least upper bound for {{< katex >}}\mathbb{N}{{< /katex >}}, which we'll call {{< katex >}}s{{< /katex >}}.
3. If {{< katex >}}s{{< /katex >}} exists, then {{< katex >}}s - 1{{< /katex >}} exists. {{< katex >}}s - 1 < s{{< /katex >}}. Therefore, {{< katex >}}s - 1{{< /katex >}} cannot be an upper bound for {{< katex >}}\mathbb{N}{{< /katex >}}.
4. There exists a natural number {{< katex >}}k > s - 1{{< /katex >}}. We know from this that {{< katex >}}k + 1 > s{{< /katex >}}, and that {{< katex >}}k + 1 \in \mathbb{N}{{< /katex >}}.
5. However, we said earlier that {{< katex >}}s{{< /katex >}} is the least upper bound of {{< katex >}}\mathbb{N}{{< /katex >}}. This contradicts that statement, since {{< katex >}}k + 1{{< /katex >}} is a natural number greater than {{< katex >}}s{{< /katex >}}. This proves point 1 of the theorem.

To prove point 2, we'll take the proof we just did and try to find a value of {{< katex >}}n{{< /katex >}} that meets the conditions.

1. Assume {{< katex >}}y \in \mathbb{R}{{< /katex >}} and {{< katex >}}y > 0{{< /katex >}}. We will also assume that {{< katex >}}\frac{1}{y} > 0{{< /katex >}}.
2. By the last proof, there is a {{< katex >}}n \in \mathbb{N}{{< /katex >}} such that {{< katex >}}n > \frac{1}{y}{{< /katex >}}.
3. We can subtract {{< katex >}}\frac{1}{y}{{< /katex >}} from both sides to get {{< katex >}}n - \frac{1}{y} > 0{{< /katex >}}. Next, multiply both sides by {{< katex >}}n{{< /katex >}} to get {{< katex >}}yn - 1 > 0{{< /katex >}}. Divide both sides by {{< katex >}}n{{< /katex >}} to get {{< katex >}}y - \frac{1}{n} > 0{{< /katex >}}, and add {{< katex >}}\frac{1}{n}{{< /katex >}} to both sides to get {{< katex >}}y > \frac{1}{n}{{< /katex >}}. This can also be represented as {{< katex >}}\frac{1}{n} < y{{< /katex >}}, proving point 2 of the theorem.

## Proof: The Square Root of 2

### Theorem

There exists a real number {{< katex >}}\alpha \in \mathbb{R}{{< /katex >}} satisfying {{< katex >}}\alpha^2 = 2{{< /katex >}}.

### Proof

1. Let {{< katex >}}A{{< /katex >}} be the set {{< katex >}}\{r \in \mathbb{R}: r > 0 \text{ and } r^2 < 2\}{{< /katex >}}. We know that the set is not empty: 1 is in the set, for example. It is also bounded from above: for example, the number 100 is a number in {{< katex >}}\mathbb{R}{{< /katex >}} that is an upper bound of {{< katex >}}A{{< /katex >}}.
   1. A proof inside the proof! Let {{< katex >}}x \in A{{< /katex >}}. Suppose {{< katex >}}x > 100{{< /katex >}}. Then, {{< katex >}}100x > 10000{{< /katex >}}.
   2. Since {{< katex >}}x \in A{{< /katex >}}, {{< katex >}}x > 0{{< /katex >}}. We know that {{< katex >}}100x^2 > 10000x{{< /katex >}}.
   3. From here, divide by 100 on both sides. {{< katex >}}x^2 > 100x{{< /katex >}}.
   4. {{< katex >}}x^2 > 100x{{< /katex >}} and {{< katex >}}100x > 10000{{< /katex >}}, so {{< katex >}}x^2 > 10000{{< /katex >}}. {{< katex >}}x^2{{< /katex >}} is not less than 2, which is a contradiction. Therefore, 100 is an upper bound of {{< katex >}}A{{< /katex >}}, meaning that {{< katex >}}A{{< /katex >}} is bounded from above.
2. By the axiom of completeness, there is a supremum {{< katex >}}s{{< /katex >}} of {{< katex >}}A{{< /katex >}}. We will claim that {{< katex >}}s^2 \ge 2{{< /katex >}}.
   1. Suppose {{< katex >}}s^2 < 2{{< /katex >}}. Let's find an {{< katex >}}n \in \mathbb{N}; n \ne 0{{< /katex >}} such that {{< katex >}}\frac{1}{n} < \sqrt{2} - s{{< /katex >}}.
   2. {{< katex >}}(s + \frac{1}{n})^2 = s^2 + \frac{2s}{n} + \frac{1}{n^2}{{< /katex >}}. Since {{< katex >}}n > 0{{< /katex >}}, {{< katex >}}s^2 + \frac{2s}{n} + \frac{1}{n^2} \le s^2 + \frac{2s}{n} + \frac{1}{n} = s^2 + \frac{2s + 1}{n}{{< /katex >}}.
   3. We would like {{< katex >}}s^2 + \frac{2s + 1}{n} < 2{{< /katex >}}. This is possible when {{< katex >}}\frac{1}{n} < \frac{2 - s^2}{2s + 1}{{< /katex >}}, so we'll pick a value of {{< katex >}}n{{< /katex >}} meeting that requirement.
   4. We've found an {{< katex >}}n{{< /katex >}} where {{< katex >}}s^2 + \frac{2s + 1}{n} < 2{{< /katex >}}, which means we've found an {{< katex >}}n{{< /katex >}} where {{< katex >}}(s + \frac{1}{n})^2 < 2{{< /katex >}} since {{< katex >}}(s + \frac{1}{n})^2 < s^2 + \frac{2s + 1}{n}{{< /katex >}}. We know in this case that {{< katex >}}0 < 1 \le s < s + \frac{1}{n}{{< /katex >}}, since {{< katex >}}n \in \mathbb{N}{{< /katex >}}. Since {{< katex >}}(s + \frac{1}{n})^2 < 2{{< /katex >}}, {{< katex >}}s + \frac{1}{n}\in A{{< /katex >}}. However, {{< katex >}}s + \frac{1}{n} > s{{< /katex >}}. Keeping in mind that {{< katex >}}s{{< /katex >}} is defined as the supremum of {{< katex >}}A{{< /katex >}} meaning that no element of {{< katex >}}A{{< /katex >}} is greater than {{< katex >}}s{{< /katex >}}, this is a contradiction. Therefore, {{< katex >}}s^2 \ge 2{{< /katex >}}.
3. TBD

## Proof: De Morgan's Laws

### Theorem

There are two parts to this theorem. For sets {{< katex >}}A{{< /katex >}} and {{< katex >}}B{{< /katex >}}:

1. {{< katex >}}(A \cap B)^c = A^c \cup B^c{{< /katex >}}
2. {{< katex >}}(A \cup B)^c = A^c \cap B^c{{< /katex >}}

### Proof

We'll use an example to prove point 1.

1. Let's prove that {{< katex >}}(A \cap B)^c \subseteq A^c \cup B^c{{< /katex >}}.
   1. Let's say there is some {{< katex >}}x \in (A \cap B)^c{{< /katex >}}.
   2. If {{< katex >}}x{{< /katex >}} is absent from the intersection of the two sets, then either {{< katex >}}x \notin A{{< /katex >}} or {{< katex >}}x \notin B{{< /katex >}}. We can also write this as {{< katex >}}(x \in A^c) \cup (x \in B^c){{< /katex >}} thanks to the definition of a complement.
   3. Finally, just reorganize the statement, distributive-property style, by moving {{< katex >}}x{{< /katex >}} outside of the rest of the expression: {{< katex >}}x \in A^c \cup B^c{{< /katex >}}. This works for any {{< katex >}}x \in (A \cap B)^c{{< /katex >}}, meaning that {{< katex >}}(A \cap B)^c \subseteq A^c \cup B^c{{< /katex >}}.
2. Now let's prove that {{< katex >}}A^c \cup B^c \subseteq (A \cap B)^c{{< /katex >}}.
   1. Let's say there is some {{< katex >}}x \in A^c \cup B^c{{< /katex >}}.
   2. If {{< katex >}}x{{< /katex >}} is present in the union of the complement of the two sets, then either {{< katex >}}x \notin A{{< /katex >}} or {{< katex >}}x \notin B{{< /katex >}}.
   3. Since {{< katex >}}x{{< /katex >}} is missing from one of the two sets, {{< katex >}}x \notin (A \cap B){{< /katex >}}.
   4. By definition of the complement, {{< katex >}}x \in (A \cap B)^c{{< /katex >}}. This works for any {{< katex >}}x \in A^c \cup B^c{{< /katex >}}, meaning that {{< katex >}}A^c \cup B^c \subseteq (A \cap B)^c{{< /katex >}}.
3. If both {{< katex >}}(A \cap B)^c \subseteq A^c \cup B^c{{< /katex >}} and {{< katex >}}A^c \cup B^c \subseteq (A \cap B)^c{{< /katex >}}, then {{< katex >}}A^c \cup B^c = (A \cap B)^c{{< /katex >}}, which proves point 1.

For point 2, we can use the fact that {{< katex >}}(A^c)^c = A{{< /katex >}} for any set {{< katex >}}A{{< /katex >}} to our advantage.

1. We have the region defined by {{< katex >}}A^c \cap B^c{{< /katex >}}. If we take the complement, according to the first point of the theorem (which we proved) {{< katex >}}(A^c \cap B^c)^c = (A^c)^c \cup (B^c)^c = A \cup B{{< /katex >}}.
2. Taking the complement of {{< katex >}}A \cup B{{< /katex >}} obviously gives us {{< katex >}}(A \cup B)^c{{< /katex >}}. However, since {{< katex >}}(A^c \cap B^c)^c = A \cup B{{< /katex >}}, {{< katex >}}((A^c \cap B^c)^c)^c = (A \cup B)^c{{< /katex >}}.
3. We know that {{< katex >}}((A^c \cap B^c)^c)^c = A^c \cap B^c{{< /katex >}}, so therefore {{< katex >}}A^c \cap B^c = (A \cup B)^c{{< /katex >}}, proving the second point of the theorem.
