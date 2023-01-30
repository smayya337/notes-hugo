---
title: "Bits"
weight: 3
---

## Digital Information

How much information can we transmit over a wire? Let's say we can distinguish between 1000 voltage measurements. In that case, one voltage measurement gives us {{< katex >}}\log_2 1000 \approx 10{{< /katex >}} bits of information. A less sensitive voltage measurement would give us fewer bits of information. However, taking these sensitive measurements is expensive and takes a longer time. You also need to make sure the voltage measurement isn't affected by noise. Instead, what if we just distinguished between on and off over and over again? That would give us {{< katex >}}\log_2 2 = 1{{< /katex >}} bit of information per measurement. This is called **digital information**.

## Place-Value Numbers

Let's break down a decimal number like 314109. As you move farther to the left, the place value increases by a factor of 10. 31419 is equal to {{< katex >}}3 \times 10^5 + 1 \times 10^4 + 4 \times 10^3 + 1 \times 10^2 + 0 \times 10^1 + 9 \times 10^0{{< /katex >}}. This practice is not unique to the decimal system, and we can do the same thing in binary. For example, 101101 is equal to {{< katex >}}1 \times 2^5 + 0 \times 2^4 + 1 \times 2^3 + 1 \times 2^2 + 0 \times 2^1 + 1 \times 2^0{{< /katex >}}.

Math works the same in base-2 and base-10:

```text
            1      11      11    1 11    1 11
  1011    1011    1011    1011    1011    1011
+ 1001  + 1001  + 1001  + 1001  + 1001  + 1001
------  ------  ------  ------  ------  ------
             0      00     100    0100   10100
```

Binary is less space- and power-hungry to work with, which is why we use it, but we like to group our bits into "nibbles" of 4 bits or "bytes" of 8 bits for convenience.

There's also hexadecimal, which is base-16. Each digit is a nibble. It's much easier to read: `0xd02` is `110100000010`. (The `0x` denotes the use of hexadecimal.) Math also works the same in base-16 and base-10.

## Base-2 Logs and Exponents

|Value|Base-10|Abbreviation|Long Form|
|:--:|:--:|:--:|:--:|
|{{< katex >}}{{< /katex >}}|1,024|Ki|Kibi|
|{{< katex >}}{{< /katex >}}|1,048,576|Mi|Mebi|
|{{< katex >}}{{< /katex >}}|1,073,741,824|Gi|Gibi|
|{{< katex >}}{{< /katex >}}|1,099,511,627,776|Ti|Tebi|
|{{< katex >}}{{< /katex >}}|1,125,899,906,842,624|Pi|Pebi|
|{{< katex >}}{{< /katex >}}|1,152,921,504,606,846,976|Ei|Exbi|

## Negative Numbers

How do we handle negative numbers? Many binary integers are **unsigned** -- that is, there is no support for negative values, and all numbers are greater than or equal to zero. However, there are **signed** integers as well, which use systems to represent negative numbers.

The most common system is **two's complement**. What we do is take the first bit and use that to represent the sign -- if it's `1`, it's negative, and if it's `0`, it's positive. However, we can't just use the rest of the bits as-is, because we need to be able to represent the number 0. So, we flip all the bits and add 1 to get the additive inverse. For example, if we have the number `1010`, we can represent it as `0101 + 1 = 0110`. This means that `1010` is the two's complement representation of -6. `1111` is the equivalent of -1 in 4-bit two's complement. This system allows for addition, subtraction, and multiplication to work as expected.

Another system is **biased** integers, where all the binary values are subtracted by a certain amount (equal to {{< katex >}}2^{\text{number of bits}} - 1{{< /katex >}}). For example, if we have a 4-bit biased integer, we subtract 7 from all values. This means that `0111` is the biased representation of 0. This point is used in floating point numbers.

Finally, there's just using a **sign bit** -- you take the first bit and use that to represent the sign, and the rest of the bits are the value. This is the simplest system, but it's not as efficient as the other two. (Think about it: you have `1000` and `0000`, but they're technically the same thing.)

## Operations on Integers

* Logical not: `!x`
  * `!0` is `1`
  * `!x` is `0` for all other values of `x`
* Left shift: `x << y`
  * `x << 0` is `x`
  * `x << 1` is `2x`
  * `x << y` is `2^y * x`
* Right shift: `x >> y`
  * `x >> 0` is `x`
  * `x >> 1` is `x / 2`
  * `x >> y` is `x / 2^y`
  * Right high bit is preserved (e.g. if original number started with `1`, then the new bits will also be `1`)

## Floating Point Numbers

* Decimal: `3.14159`
* Binary: `11.10110`

With integers, the point is always fixed after all digits, but with **floating point numbers**, the point can move! But how do we store the point location?

Let's look at scientific notation. If you want to convert the number `2130` to scientific notation, you would write it as `2.130 * 10^3`. We can do something very similar in binary. If we want to convert `101101` to scientific notation, we can represent it as `1.01101 * 2^5`. (In pure binary, I suppose it would look more like `1.01101 * 10^101`, but we won't bother with that.)

Note that the first digit (before the decimal point) in a decimal number is any number except 0, so in binary we can always make the first bit 1. Since we always know the value of that bit, we don't actually have to store that. What we actually *do* have to store consists of three parts:

* The sign of the number
* The decimal bits (the fraction)
* The exponent

There used to be many different ways to store this information, but the IEEE eventually standardized all of it in IEEE 754 and IEEE 854 as follows:

* The very first bit is the sign bit.
* The next part is the exponent.
* The last part is the fraction.

(The lengths are not important for this class but are available online.)

But what do we do if we need to store a negative exponent? We could use two's complement... except we won't. We'll use **biased integers** instead. There are many reasons for this, including comparison operation smoothness, hardware efficiency, etc. The way biased integers work is that instead of defining 0 as `00000000` (or equivalent), we define it as `01111111` (one zero followed by all ones). This means you don't have to deal with two's complement conversions when comparing exponents, which is nice. We can convert between two's complement and biased by adding and subtracting the bias (the biased value of 0).

An example: we have the four-bit biased integer `0010`. We want to convert it to two's complement. We can do this by subtracting the bias, which is `0111`. This gives us `1011`, which is the two's complement representation of -5.

There are actually four cases for floating point numbers:

* **Normalized**: The exponent bits are neither all 0 not all 1. The number represented by `s eeee ffff` is {{< katex >}}\pm 1.\text{ffff} \times 2^{\text{eeee} - \text{bias}}{{< /katex >}}. The **mantissa** is the value {{< katex >}}1.\text{ffff}{{< /katex >}}.
* **Denormalized**: The exponent bits are all 0. The number represented by `s 0000 ffff` is {{< katex >}}\pm 0.\text{ffff} \times 2^{1 -\text{bias}}{{< /katex >}}.
* **Infinity**: The exponent bits are all 1 and the fraction bits are all 0. The number represented by `s 1111 0000` is {{< katex >}}\pm \infty{{< /katex >}}.
* **Not a Number**: The exponent bits are all 1 and the fraction bits are not all 0. The number represented by `s 1111 ffff` is {{< katex >}}\text{NaN}{{< /katex >}}.
