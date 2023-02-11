---
title: "Proofs"
weight: 3
---

A **proof** lets us demonstrate the reasoning between two statements in a rigorous manner.

The {{< katex >}}\equiv{{< /katex >}} symbol means that two statements are equivalent. This is the same as saying that they are both true, or both false.

Let's prove that {{< katex >}}(P \lor Q) \lor (R \lor Q) \equiv (P \lor Q) \lor R{{< /katex >}}.

|                       Statement                       |    Reason     |
| :---------------------------------------------------: | :-----------: |
| {{< katex >}}(P \lor Q) \lor (R \lor Q){{< /katex >}} |     Given     |
| {{< katex >}}(P \lor Q) \lor (Q \lor R){{< /katex >}} | Commutativity |
| {{< katex >}}((P \lor Q) \lor Q) \lor R{{< /katex >}} | Associativity |
| {{< katex >}}(P \lor (Q \lor Q)) \lor R{{< /katex >}} | Associativity |
|     {{< katex >}}(P \lor Q) \lor R{{< /katex >}}      | Simplication  |

Some basic rules:

* {{< katex >}}\lnot\lnot P \equiv P{{< /katex >}} (**double negation**)
* {{< katex >}}\lnot \top \equiv \bot{{< /katex >}}
* {{< katex >}}P \land \bot \equiv \bot{{< /katex >}}
* {{< katex >}}P \land \top \equiv P{{< /katex >}}
* {{< katex >}}P \lor \bot \equiv P{{< /katex >}}
* {{< katex >}}P \lor \top \equiv \top{{< /katex >}}
