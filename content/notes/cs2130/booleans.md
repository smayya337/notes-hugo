---
title: "Booleans"
weight: 2
---

A fellow named George Boole published a treatise called *An Investigation of the Laws of Thought on Which are Founded the Mathematical Theories of Logic and Probabilities* (long name!), in which he laid out the ideas behind what is known as **Boolean algebra**. This work has become critical to the modern age; from it, we get the field of **formal logic**, from which all our information systems are derived.

We can express one Boolean value as a **binary digit**, or **bit**. A bit, being binary, can only have a value of 1 or 0. We may refer to these states as "set" and "cleared", "true" and "false", or "high" and "low", or maybe something entirely different -- it depends on the context. With one or more bits, we are able to define some operations that themselves give boolean outputs.

## Boolean Operations

### `NOT`

The `NOT` operation takes an input bit and produces its opposite.

The formal logic representation of `NOT` is {{< katex >}}\neg{P}{{< /katex >}} or {{< katex >}}\bar{P}{{< /katex >}}.

In code, the bitwise representation of `NOT` is `~P`.

In code, the logical representation of `NOT` is `!P`.

{{< figure src="/images/cs2130/booleans/not.svg" caption="A `NOT` gate is depicted in circuits like this." width="50%" >}}

The truth table for `NOT` looks like this:

|  `P`  | `~P`  |
| :---: | :---: |
|   0   |   1   |
|   1   |   0   |

### `AND`

The `AND` operation takes two input bits. It returns 1 if both bits are 1; otherwise, it returns 0.

The formal logic representation of `AND` is {{< katex >}}P \land Q{{< /katex >}}.

In code, the bitwise representation of `AND` is `P & Q`.

In code, the logical representation of `AND` is `P && Q`.

{{< figure src="/images/cs2130/booleans/and.svg" caption="An `AND` gate is depicted in circuits like this." width="50%" >}}

The truth table for `AND` looks like this:

|  `P`  |  `Q`  | `P & Q` |
| :---: | :---: | :-----: |
|   0   |   0   |    0    |
|   0   |   1   |    0    |
|   1   |   0   |    0    |
|   1   |   1   |    1    |

### `OR`

The `OR` operation takes two input bits. It returns 0 if both bits are 0; otherwise, it returns 1.

The formal logic representation of `OR` is {{< katex >}}P \lor Q{{< /katex >}}.

In code, the bitwise representation of `OR` is `P | Q`.

In code, the logical representation of `OR` is `P || Q`.

{{< figure src="/images/cs2130/booleans/or.svg" caption="An `OR` gate is depicted in circuits like this." width="50%" >}}

The truth table for `OR` looks like this:

|  `P`  |  `Q`  | `P \| Q` |
| :---: | :---: | :------: |
|   0   |   0   |    0     |
|   0   |   1   |    1     |
|   1   |   0   |    1     |
|   1   |   1   |    1     |

### `XOR`

The `XOR` (short for "exclusive `OR`") operation takes two input bits. It returns 1 if only one of the two bits is 1; otherwise, it returns 0.

The formal logic representation of `XOR` is {{< katex >}}P \oplus Q{{< /katex >}}.

In code, the bitwise representation of `XOR` is `P ^ Q`. Don't confuse this with the formal logic symbol for `AND`.

{{< figure src="/images/cs2130/booleans/xor.svg" caption="An `XOR` gate is depicted in circuits like this." width="50%" >}}

The truth table for `XOR` looks like this:

|  `P`  |  `Q`  | `P ^ Q` |
| :---: | :---: | :-----: |
|   0   |   0   |    0    |
|   0   |   1   |    1    |
|   1   |   0   |    1    |
|   1   |   1   |    0    |

### `NAND`

The `NAND` (short for `NOT` `AND`) operation takes two input bits. It returns 0 if both bits are 1; otherwise, it returns 0.

{{< figure src="/images/cs2130/booleans/nand.svg" caption="A `NAND` gate is depicted in circuits like this." width="50%" >}}

`NAND` is the equivalent of `AND` followed by `NOT`.

The truth table for `NAND` looks like this:

|  `P`  |  `Q`  | `~(P & Q)` |
| :---: | :---: | :--------: |
|   0   |   0   |     1      |
|   0   |   1   |     1      |
|   1   |   0   |     1      |
|   1   |   1   |     0      |

### `NOR`

The `NOR` (short for `NOT` `OR`) operation takes two input bits. It returns 1 if both bits are 0; otherwise, it returns 1.

{{< figure src="/images/cs2130/booleans/nor.svg" caption="A `NOR` gate is depicted in circuits like this." width="50%" >}}

`NOR` is the equivalent of `OR` followed by `NOT`.

The truth table for `NOR` looks like this:

|  `P`  |  `Q`  | `~(P \| Q)` |
| :---: | :---: | :---------: |
|   0   |   0   |      1      |
|   0   |   1   |      0      |
|   1   |   0   |      0      |
|   1   |   1   |      0      |

### `IMPLIES`

The `IMPLIES` operation takes two input bits. If bit `P` `IMPLIES` bit `Q`, then `Q` cannot be false while `P` is true.

The formal logic representation of `IMPLIES` is {{< katex >}}P \implies Q{{< /katex >}}.

In code, the bitwise representation of `IMPLIES` is `~P | Q`.

{{< figure src="/images/cs2130/booleans/imply.svg" caption="An `IMPLIES` gate is depicted in circuits like this." width="50%" >}}

`IMPLIES` is the equivalent of `NOT` on bit `P` followed by `OR`.

The truth table for `IMPLIES` looks like this:

|  `P`  |  `Q`  | `~P \| Q` |
| :---: | :---: | :-------: |
|   0   |   0   |     1     |
|   0   |   1   |     1     |
|   1   |   0   |     0     |
|   1   |   1   |     1     |

### Multiplexer

A **multiplexer**, or **mux**, is a 3-bit operation. One bit serves as the input; one of the other two bits is returned based on the value of the first bit.

In code, the bitwise representation of a multiplexer is `P ? Q : R`, where `P` is the input and `Q` and `R` are the outputs.

The truth table for a multiplexer looks like this:

|  `P`  |  `Q`  |  `R`  | `P ? Q : R` |
| :---: | :---: | :---: | :---------: |
|   0   |   0   |   0   |      0      |
|   0   |   0   |   1   |      1      |
|   0   |   1   |   0   |      0      |
|   0   |   1   |   1   |      1      |
|   1   |   0   |   0   |      0      |
|   1   |   0   |   1   |      0      |
|   1   |   1   |   0   |      1      |
|   1   |   1   |   1   |      1      |

## Bit-Wise Boolean Operators in Code

Virtually every C-derived language (including Java, Python, JavaScript, etc.) have bit-wise boolean operators built in. These treat an integer like an array of bits which you can directly manipulate as follows:

| Operator |           Meaning           |                                                            Example                                                            |
| :------: | :-------------------------: | :---------------------------------------------------------------------------------------------------------------------------: |
|   `&`    |       Bit-wise `AND`        |  {{< katex >}}1100_2{{< /katex >}} `&` {{< katex >}}0110_2{{< /katex >}} = {{< katex >}}0100_2{{< /katex >}} (12 `&` 6 = 4)   |
|   `\|`   |        Bit-wise `OR`        | {{< katex >}}1100_2{{< /katex >}} `\|` {{< katex >}}0110_2{{< /katex >}} = {{< katex >}}1110_2{{< /katex >}} (12 `\|` 6 = 14) |
|   `^`    |       Bit-wise `XOR`        | {{< katex >}}1100_2{{< /katex >}} `^` {{< katex >}}0110_2{{< /katex >}} = {{< katex >}}1010_2{{< /katex >}} (12 `\|` 6 = 10)  |
|   `>>`   | Bit-wise shift to the right |               {{< katex >}}1101001_2{{< /katex >}} `>>` 3 = {{< katex >}}1101_2{{< /katex >}} (105 `>>` 3 = 13)               |
|   `<<`   | Bit-wise shift to the left  |               {{< katex >}}1101_2{{< /katex >}} `<<` 3 = {{< katex >}}1101000_2{{< /katex >}} (13 `<<` 3 = 104)               |

When shifting to the right, the last bit is dropped. When shifting to the left, a 0 is appended to the bits. During right-shifting, a bit may be added to the front of the bit array to keep the length the same. Which specific value is chosen for the bit varies; some keep it as a zero, while others may use the value of the highest-order bit (also known as **sign-extending**, since it keeps negative numbers -- which often have a 1 as the highest-order bit -- negative). Some languages have a `>>>` operation to indicate a **zero-extending** right shift instead of a sign-extending one.

### Masks

A **bitmask**, or **mask**, is a value used to select a set of bits from another value. You'll usually have a sequence of 1 values with all other values set to 0. You can use a bit-wise `AND` (`&`) to select particular bits from another value. Bitmask constants are usually written in **hexadecimal** (base-16, where `a`-`f` represent 10-15). Bitmask constants are built using shifts and negations. For example:

|       Expression        |    Binary     |                          Description                          |     Alternative Constructions      |
| :---------------------: | :-----------: | :-----------------------------------------------------------: | :--------------------------------: |
|           `0`           | ...`00000000` |                           All zeros                           |                                    |
|          `~0`           | ...`11111111` |                           All ones                            |                `-1`                |
|        `(~0)<<5`        | ...`11100000` |           All ones except for the last five places            |           `~((1<<5)-1)`            |
|        `(~0)<<7`        | ...`10000000` |           All ones except for the last seven places           |           `~((1<<7)-1)`            |
| `((~0)<<5) ^ ((~0)<<7)` | ...`01100000` | All zeros except for the fifth and sixth bits from the bottom | `((1<<2)-1)<<5`, `(~((~0)<<2))<<5` |

### Bit Terminology

* A **bit vector** is a fixed-length (e.g. 32 bits long) sequence of bits implemented using one of a programming language's integer types and manipulated using bit-wise expressions.
  * "Bit vector" is also a name for a more complicated data structure storing one-bit values.
* The ***i*th** bit is (using least-significant-bit numbering) the number in the {{< katex >}}2^i{{< /katex >}}s place (e.g. the 3rd bit is in the 8th place, which is the 4th from the right).
* To **clear** a bit means to replace it with zero. For example, to clear the `n`th bit of bit vector `x`, you can do `x &= ~(1 << n)`. You can also clear an entire bit vector by doing `x &= 0`.
  * "Cleared bit" is also another name for a bit with a value of 0.
* To **set** a bit means to replace it with one. For example, to set the `n`th bit of bit vector `x`, you can do `x |= (1 << n)`. You can also set an entire bit vector by doing `x |= (~0)`.
  * "Set bit" is also another name for a bit with a value of 1.

### Bit-Sets and Flags

One common and practical use of bit manipulation is when working with a number of booleans. If we have `n` different booleans, we can make a **bit-set** -- a bit vector of length `n`. Each bit represents a different boolean. Each non-zero bit is a **flag**.

Given a set represented as flags-variable `x`:

|               Set Operation               | Bit-Wise Parallel |
| :---------------------------------------: | :---------------: |
|    {{< katex >}}A \in x{{< /katex >}}     |  `(A & x) != 0`   |
|    {{< katex >}}A \cup x{{< /katex >}}    |     `A \| x`      |
| {{< katex >}}x \backslash A{{< /katex >}} |     `x & ~A`      |

| Set Datatype Action | Bit-Wise Parallel |
| :-----------------: | :---------------: |
|   `x.contains(A)`   |  `(x & A) != 0`   |
|     `x.add(A)`      |     `x \|= A`     |
|    `x.remove(A)`    |     `x &= ~A`     |

### Bit Fiddling

**Bit fiddling** is hacking around with bit manipulations to make things work better. They're often pretty messy and are consequently looked down upon by many developers, but can confer some great speed benefits if used appropriately.
