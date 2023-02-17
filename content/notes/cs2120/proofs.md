---
title: "Proofs"
weight: 3
---

A **proof** lets us demonstrate the reasoning between two statements in a rigorous manner.

The {{< katex >}}\equiv{{< /katex >}} symbol means that two statements are equivalent. This is the same as saying that they are both true, or both false.

Let's prove that {{< katex >}}(P \lor Q) \lor (R \lor Q) \equiv (P \lor Q) \lor R{{< /katex >}}.

|                       Statement                       |     Reason     |
| :---------------------------------------------------: | :------------: |
| {{< katex >}}(P \lor Q) \lor (R \lor Q){{< /katex >}} |     Given      |
| {{< katex >}}(P \lor Q) \lor (Q \lor R){{< /katex >}} | Commutativity  |
| {{< katex >}}((P \lor Q) \lor Q) \lor R{{< /katex >}} | Associativity  |
| {{< katex >}}(P \lor (Q \lor Q)) \lor R{{< /katex >}} | Associativity  |
|     {{< katex >}}(P \lor Q) \lor R{{< /katex >}}      | Simplification |

Some basic rules:

* {{< katex >}}\lnot\lnot P \equiv P{{< /katex >}} (**double negation**)
* {{< katex >}}\lnot \top \equiv \bot{{< /katex >}}
* {{< katex >}}P \land \bot \equiv \bot{{< /katex >}}
* {{< katex >}}P \land \top \equiv P{{< /katex >}}
* {{< katex >}}P \lor \bot \equiv P{{< /katex >}}
* {{< katex >}}P \lor \top \equiv \top{{< /katex >}}

Some more helpful equivalences:

* **Definition of implication**: {{< katex >}}P \rightarrow Q \equiv \lnot P \lor Q{{< /katex >}}
* **Associative property**
  * With {{< katex >}}\lor{{< /katex >}}: {{< katex >}}(A \lor B) \lor C \equiv A \lor (B \lor C){{< /katex >}}
  * With {{< katex >}}\land{{< /katex >}}: {{< katex >}}(A \land B) \land C \equiv A \land (B \land C){{< /katex >}}
  * With {{< katex >}}\oplus{{< /katex >}}: {{< katex >}}(A \oplus B) \oplus C \equiv A \oplus (B \oplus C){{< /katex >}}
  * With {{< katex >}}\leftrightarrow{{< /katex >}}: {{< katex >}}(A \leftrightarrow B) \leftrightarrow C \equiv A \leftrightarrow (B \leftrightarrow C){{< /katex >}}
* **Commutative property**
  * With {{< katex >}}\lor{{< /katex >}}: {{< katex >}}A \lor B \equiv B \lor A{{< /katex >}}
  * With {{< katex >}}\land{{< /katex >}}: {{< katex >}}A \land B \equiv B \land A{{< /katex >}}
  * With {{< katex >}}\oplus{{< /katex >}}: {{< katex >}}A \oplus B \equiv B \oplus A{{< /katex >}}
  * With {{< katex >}}\leftrightarrow{{< /katex >}}: {{< katex >}}A \leftrightarrow B \equiv B \leftrightarrow A{{< /katex >}}
* **Distributive property**
  * With {{< katex >}}\lor{{< /katex >}}: {{< katex >}}A \lor (B \lor C) \equiv A{{< /katex >}}
