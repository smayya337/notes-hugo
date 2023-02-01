---
title: "More Bits"
weight: 4
---

There is a lot of different stuff that can be represented in bits. It doesn't have to be all numeric, either: character encodings often use numbers to represent characters, for example.

## Which Comes First?

"First" and "last" isn't really a thing in bits and bytes. Instead, we have **high-order** and **low-order** bits. A high-order bit is the bit that represents the highest value, while a low-order bit is the bit that represents the lowest value. There may be bits in between the two.

Processors aren't all that consistent regarding whether the first byte stored in memory is the high-order byte or the low-order byte. The Intel x86 architecture, for example, is **little-endian**, meaning it stores the low-order byte first, while the Motorola 68000 architecture stores the high-order byte first (making it **big-endian**). This is why you have to be careful when you're working with binary data.

For example, here's how the array `[0x1234, 0x5678]` would be stored in memory:

| Address | Little-endian | Big-endian |
| :-----: | :-----------: | :--------: |
|   108   |      34       |     12     |
|   109   |      12       |     34     |
|   10a   |      78       |     56     |
|   10b   |      56       |     78     |

Note that bytes are stored in memory, not nibbles or bits. Don't reverse the order of bits in a byte!

## Intentional Redundancy

Noise is still a thing with digital systems, and sometimes it can cause issues, especially if it messes with bits. Thankfully, we have some tools to help us deal with it.

It only takes an extra bit to determine if a single bit got flipped due to noise. We can automatically correct the bit if we know that it's wrong, though we'd need {{< katex >}}\log_2(n){{< /katex >}} bits to correct {{< katex >}}n{{< /katex >}} bits of data (since it lets us know which bit is wrong). It's often better to just detect the error and ask for the data to be sent again.

There are lots of ways to add structured redundancy to bits:

* **Parity**: The parity of a set of bits is 0 if there are an even number of 1s, and 1 if there are an odd number of 1s. We can send a check bit along with a set of bits to detect if any of the bits got flipped.
* **Multiple parity**: We can make groups of bits in a multi-bit value (e.g. the first four bit, every other bit, etc.) and send a parity bit for each group. Changing a specific bit will cause a unique group of check bits to fail.
* **Cyclic redundancy checks (CRCs)**: CRCs are a way to add redundancy to a set of bits. They're a type of **digest**, which is an algorithm that takes long outputs and returns a small summary output.

These are all forms of **checksums** -- easily-defined and easily-computed values that depend on larger inputs.
