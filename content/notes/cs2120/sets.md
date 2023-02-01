---
title: "Sets"
weight: 1
---

## Sets

A **set** is an unordered collection of **members** or **elements**. It has no other properties besides the elements it contains.

A set is written with curly braces: {{< katex >}}\{1, 2, 3\}{{< /katex >}}. It has no duplicates: {{< katex >}}\{1, 2, 2, 3\}{{< /katex >}} is not a valid set. It has no order: {{< katex >}}\{1, 2, 3\}{{< /katex >}} is equal to{{< katex >}} \{3, 2, 1\}{{< /katex >}}.

Sets can be members of other sets! {{< katex >}}\{\{1, 2\}, 1, 2\}{{< /katex >}} is a valid set. The **empty set** is a set with no members: {{< katex >}}\{\}{{< /katex >}} or {{< katex >}}\emptyset{{< /katex >}}.

**Cardinality** is the number of elements in a set. {{< katex >}}|\{1, 2, 3\}| = 3{{< /katex >}}. The cardinality of the empty set is 0: {{< katex >}}|\emptyset| = 0{{< /katex >}}. Note that the cardinality of {{< katex >}}\{\emptyset\}{{< /katex >}} is still 1! The empty set *is* still a set, after all.

The **universal set** is just everything. It's the set of all sets. It's usually written with a capital {{< katex >}}\mathbb{U}{{< /katex >}}. The cardinality of the universal set is infinite.

A **sequence** is a collection of objects with that has an order and a length instead of cardinality. Both sets and sequences can contain anything, including other sets and sequences, and are immutable -- they cannot be modified.

## Comparing Sets

* {{< katex >}}\in{{< /katex >}} means "is an element of": {{< katex >}}A \in B{{< /katex >}} means {{< katex >}}A{{< /katex >}} is an element of {{< katex >}}B{{< /katex >}}.
* {{< katex >}}\subseteq{{< /katex >}} means "is a subset of": {{< katex >}}A \subseteq B{{< /katex >}} means all elements of {{< katex >}}A{{< /katex >}} are in {{< katex >}}B{{< /katex >}}.
  * Think of it as the {{< katex >}}\le{{< /katex >}} of sets.
* {{< katex >}}\subset{{< /katex >}} means "is a proper subset of": {{< katex >}}A \subset B{{< /katex >}} means all elements of {{< katex >}}A{{< /katex >}} are in {{< katex >}}B{{< /katex >}} and {{< katex >}}A{{< /katex >}} is not equal to {{< katex >}}B{{< /katex >}}.
  * Think of it as the {{< katex >}}<{{< /katex >}} of sets.
* {{< katex >}}\supseteq{{< /katex >}} means "is a superset of": {{< katex >}}A \supseteq B{{< /katex >}} means all elements of {{< katex >}}B{{< /katex >}} are in {{< katex >}}A{{< /katex >}}.
  * Think of it as the {{< katex >}}\ge{{< /katex >}} of sets.
* {{< katex >}}\supset{{< /katex >}} means "is a proper superset of": {{< katex >}}A \supset B{{< /katex >}} means all elements of {{< katex >}}B{{< /katex >}} are in {{< katex >}}A{{< /katex >}} and {{< katex >}}A{{< /katex >}} is not equal to {{< katex >}}B{{< /katex >}}.
  * Think of it as the {{< katex >}}>{{< /katex >}} of sets.

## Set Operations

* {{< katex >}}\cup{{< /katex >}} means "**union**": {{< katex >}}A \cup B{{< /katex >}} means the set of all elements in {{< katex >}}A{{< /katex >}} or {{< katex >}}B{{< /katex >}}.
  * {{< katex >}}A \cup \emptyset = A{{< /katex >}}
  * {{< katex >}}A \cup \mathbb{U} = \mathbb{U}{{< /katex >}}
  * {{< katex >}}A \cup A = A{{< /katex >}}
  * {{< katex >}}A \cup B = B \cup A{{< /katex >}}
* {{< katex >}}\cap{{< /katex >}} means "**intersection**": {{< katex >}}A \cap B{{< /katex >}} means the set of all elements in {{< katex >}}A{{< /katex >}} and {{< katex >}}B{{< /katex >}}.
  * {{< katex >}}A \cap \mathbb{U} = A{{< /katex >}}
  * {{< katex >}}A \cap \emptyset = \emptyset{{< /katex >}}
  * {{< katex >}}A \cap A = A{{< /katex >}}
  * {{< katex >}}A \cap B = B \cap A{{< /katex >}}
* {{< katex >}}\setminus{{< /katex >}} means "**set difference**": {{< katex >}}A \setminus B{{< /katex >}} means the set of all elements in {{< katex >}}A{{< /katex >}} but not in {{< katex >}}B{{< /katex >}}.
* {{< katex >}}\bar{A}{{< /katex >}} means "**complement** of {{< katex >}}A{{< /katex >}}": it's all the elements in the universe that don't belong to {{< katex >}}A{{< /katex >}}.
* {{< katex >}}A \times B{{< /katex >}} is the **Cartesian product** of the two sets: it's the set of all possible **ordered pairs** (sequence of two elements) where the first item in the pair is from {{< katex >}}A{{< /katex >}} and the second is from {{< katex >}}B{{< /katex >}}.

## Set-Builder Notation

**Set-builder notation** often takes this form:

{{< katex display >}}S = \{x \in A|x > 5\}{{< /katex >}}

The first half means "the set of all {{< katex >}}x{{< /katex >}} in {{< katex >}}A{{< /katex >}}". The vertical bar means "such that". The second half means "{{< katex >}}x{{< /katex >}} is greater than 5". Putting it all together, we get "the set of all {{< katex >}}x{{< /katex >}} in {{< katex >}}A{{< /katex >}} such that {{< katex >}}x{{< /katex >}} is greater than 5".

Our formal set operators in set-builder notation are:

* {{< katex >}}\land{{< /katex >}} for "and"
* {{< katex >}}\lor{{< /katex >}} for "or"
* {{< katex >}}\neg{{< /katex >}} for "not"

We could formally define {{< katex >}}S \cap T{{< /katex >}} in set-builder notation as {{< katex >}}\{x \in \mathbb{U} | x \in S \land x \in T\}{{< /katex >}}.

The **power set** of a set {{< katex >}}A{{< /katex >}} is the set of all possible subsets of {{< katex >}}A{{< /katex >}}. It's denoted {{< katex >}}\mathbb{P}(A){{< /katex >}}. In set-builder notation, it's expressed as {{< katex >}}\{x | x \subseteq A\}{{< /katex >}}. For example, {{< katex >}}\mathbb{P}(\{1, 2\}) = \{\emptyset, \{1\}, \{2\}, \{1, 2\}\}{{< /katex >}}.

Two sets are **disjoint** if their intersection is the empty set. For example, {{< katex >}}\{\text{New York, Washington}\}{{< /katex >}} is disjoint with {{< katex >}}\{3, 4\}{{< /katex >}}. The empty set is disjoint with every set, including itself.
