---
title: "Storing Data"
weight: 6
---

Computers store almost all data types using three basic methods: enumerations, adjacency, and pointers.

## Enumerations

Given a finite set of values, I can **enumerate** them -- that is, pick a different bit pattern for each. Usually there's some effort to mae the bit patterns meaningful, but not always.

For example, the 8-bit value `0x54` could mean any of the following:

|       Type       |                    Value                     |
| :--------------: | :------------------------------------------: |
| Unsigned integer |                      84                      |
|  Signed integer  |                     +84                      |
|  Floating point  |                      12                      |
|      ASCII       |                     'T'                      |
|  Bitvector sets  |                  {2, 3, 5}                   |
|     Toy ISA      | Flip all the bits of the value in register 1 |

Context is important when working with data.

## Adjacency

Virtually all computers since the 1970s have used **byte-addressable memory** -- that is. each byte of memory has a unique address. What happens if you have a multi-byte value? You can store it in adjacent memory locations. The smallest byte address is referred to as the address of the entire value. For example, a four-byte value stored at address `0x1234` would be stored at `0x1234`, `0x1235`, `0x1236`, and `0x1237`.

If the value is made up of ordered parts, we put the first part in the smallest address and move up from there. If the value is not ordered, we can break it up in some pre-determined but arbitrary way. Most famously, there's the **endianness** of multi-byte integers. Let's look at an example using the 32-bit integer `0x12345678`:

| Address | Little-endian | Big-endian |
| :-----: | :-----------: | :--------: |
| 0x1234  |     0x78      |    0x12    |
| 0x1235  |     0x56      |    0x34    |
| 0x1236  |     0x34      |    0x56    |
| 0x1237  |     0x12      |    0x78    |

We apply these two rules (place parts adjacently in order, break big things up in a pre-arranged but arbitrary way) recursively.

A lot of code will add **padding** between elements to ensure that four-byte integers start at addresses that are multiples of four. This is because the processor can only read and write four bytes at a time. If the address is not a multiple of four, it takes more time to read the value.

## Pointers

Sometimes, it is more convenient to build a data structure using **references** to other data instead of **copies** of the data. Instead of storing the value itself, we store the address of the value. This is called a **pointer**.

## Telling Them Apart

It's important to remember that all of this is ultimately bytes. There's nothing inherently distinguishing a `float` from an `int` from an `enum` from a `char` from a `struct` from a `void*`. The only way to tell them apart is to know what the data is supposed to represent. How do we keep it all straight? That's where **typing** -- assigning a **type**, or data format, to a variable -- comes in.

**Static typing** means that we explicitly state what type of data a variable holds. We inform the system that the variable, and any register or memory location it is stored in, will always hold a specific data type. The compiler will also verify that we don't try to use a variable in a way that is incompatible with its type. Common statically-typed languages include C, C++, Java, and Rust.

**Dynamic typing**, on the other hand, means that we don't explicitly state what type of value a variable data. Instead, every value is stored as exactly two adjacent pieces: an enumeration value noting what type of data it is, and a pointer to the actual data. The code doesn't blindly assume it knows what type it found: instead, it always checks the enumeration and picks what to do baesd on what it found. Common dynamically-typed languages include Python, JavaScript, and Ruby.
