---
title: "Propositions and Connectives"
weight: 2
---

## Propositions

A **proposition** is a statement that is either true or false. For example, the statement "The sky is blue" is a proposition. "True" or "false" is considered the **truth value** of the proposition. In the case of "The sky is blue", the truth value is "true". In the case of "The sky is green", the truth value is "false".

The truth value "true" is represented by `true` in Java, `True` in Python, and {{< katex >}}\top{{< /katex >}} in formal logic. The truth value "false" is represented by `false` in Java, `False` in Python, and {{< katex >}}\bot{{< /katex >}} in formal logic.

## Connectives

A **connective** is a symbol that connects two propositions. For example, the connective "and" connects two propositions. Examples include:

|   Connective   |  Java  | Python |                Formal logic                |
| :------------: | :----: | :----: | :----------------------------------------: |
|      and       |  `&&`  | `and`  |      {{< katex >}}\land{{< /katex >}}      |
|       or       | `\|\|` |  `or`  |      {{< katex >}}\lor{{< /katex >}}       |
|      xor       |  `^`   | `xor`  |     {{< katex >}}\oplus{{< /katex >}}      |
|      not       |  `!`   | `not`  |      {{< katex >}}\lnot{{< /katex >}}      |
|    implies     |  `->`  |  `->`  |   {{< katex >}}\rightarrow{{< /katex >}}   |
| if and only if | `<->`  | `<->`  | {{< katex >}}\leftrightarrow{{< /katex >}} |

## Truth Tables

A **truth table** is a table that shows the truth values of a proposition and its connectives.

Truth tables for different connectives are shown below.

### And

| {{< katex >}}P{{< /katex >}} | {{< katex >}}Q{{< /katex >}} | {{< katex >}}P\land Q{{< /katex >}} |
| :--------------------------: | :--------------------------: | :---------------------------------: |
|            false             |            false             |                false                |
|            false             |             true             |                false                |
|             true             |            false             |                false                |
|             true             |             true             |                true                 |

### Or

| {{< katex >}}P{{< /katex >}} | {{< katex >}}Q{{< /katex >}} | {{< katex >}}P\lor Q{{< /katex >}} |
| :--------------------------: | :--------------------------: | :--------------------------------: |
|            false             |            false             |               false                |
|            false             |             true             |                true                |
|             true             |            false             |                true                |
|             true             |             true             |                true                |

### Xor

| {{< katex >}}P{{< /katex >}} | {{< katex >}}Q{{< /katex >}} | {{< katex >}}P\oplus Q{{< /katex >}} |
| :--------------------------: | :--------------------------: | :----------------------------------: |
|            false             |            false             |                 true                 |
|            false             |             true             |                 true                 |
|             true             |            false             |                 true                 |
|             true             |             true             |                 true                 |

### Not

| {{< katex >}}P{{< /katex >}} | {{< katex >}}\lnot P{{< /katex >}} |
| :--------------------------: | :--------------------------------: |
|            false             |                true                |
|             true             |               false                |

### Implies

| {{< katex >}}P{{< /katex >}} | {{< katex >}}Q{{< /katex >}} | {{< katex >}}P\rightarrow Q{{< /katex >}} |
| :--------------------------: | :--------------------------: | :---------------------------------------: |
|            false             |            false             |                   true                    |
|            false             |             true             |                   true                    |
|             true             |            false             |                   false                   |
|             true             |             true             |                   true                    |

### If and Only If

| {{< katex >}}P{{< /katex >}} | {{< katex >}}Q{{< /katex >}} | {{< katex >}}P\leftrightarrow Q{{< /katex >}} |
| :--------------------------: | :--------------------------: | :-------------------------------------------: |
|            false             |            false             |                     true                      |
|            false             |             true             |                     false                     |
|             true             |            false             |                     false                     |
|             true             |             true             |                     true                      |
