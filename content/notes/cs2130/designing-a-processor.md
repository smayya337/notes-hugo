---
title: "Designing a Processor"
weight: 5
---

A **general-purpose computing machine**, or **computer**, is a special machine where the control, data, and modified environment are all the same. In other words, it's a machine that can modify its own instructions and data, meaning it can do all sorts of arbitrarily complex operations.

## History

The first known general-purpose computer was Charles Babbage's Analytical Machine, designed in the 1830s. Ada Lovelace was the first to write a program for the Analytical Machine, and she is often credited as the first computer programmer. The Analytical Machine was never built, but it was the first to use a stored program architecture, where the program is stored in memory and the machine executes the instructions in the program.

Kurt Gödel and Jacques Herbrand defined a class of general recursive functions in 1933. Alonzo Chuch expanded on this in 1936 to define **lambda calculus**. Later that year, Alan Turing defined an abstract machine that could compute any function in lambda calculus, known as a **Turing machine**. Church and Turing proposed in Turing's 1939 Ph.D. thesis that no more computationally powerful machine could exist. This is known as the **Church-Turing thesis**.

The design of a modern computer architecture comes from a 1945 design by John von Neumann.

## Von Neumann Architecture

The **von Neumann architecture** consists of the following parts:

* The **memory** unit, which acts like an array or list of numbers. Given an **address** (an index), the memory unit returns the value stored at that address. Given an address and a value, the memory unit stores the value at that address.
* The **control unit**, which has several parts:
  * The **program counter**, a register storing the memory address of the next instruction to be executed.
  * The **instruction register**, storing the **instruction** to be executed.
  * Logic to adjust the program counter based on its contents and the contents of the instruction register.
  * Logic to control the ALU and memory unit based on the contents of the instruction register.
* The **arithmetic logic unit** (or **ALU**), which performs arithmetic and logical operations on data, consisting of:
  * Some **program registers** to store operands and results.
  * Logical gates for basic arithmetic and logical operations.
* The ability to communicate with external devices like disks and peripherals.

## Instruction Set Architecture

The idea behind a general-purpose computer is that the contents of the memory describe actions to take on the machine. However, memory is just a bunch of numbers, so how do we know what to do with them? The answer is the **instruction set architecture** (or **ISA**). The ISA is the set of instructions that a computer provides, along with how those instructions are encoded.

The three most common categories of actions are:

* **Moves**: Move data from one place to another. This corresponds to assignment operators in most programming languages. We can accomplish this using muxes.
* **Maths**: Perform arithmetic and logical operations on data. This corresponds to arithmetic and logical operators in most programming languages. We can accomplish these using logic gates.
* **Jumps**: Change the program counter to a different address. This corresponds to control flow in most programming languages. We can accomplish this using muxes.

There are different ways to encode instructions into binary. One way is to have particular sets of bits with particular meanings. We can figure out all the information any action will need, determine how many bits we need to encode that, and then reserve a set of bits in the instruction for that information.

Architectures also differ on whether instructions should have fixed or variable length. Fixed-length instructions are simpler to work with, which theoretically provides cost and power benefits. On the other hand, variable-length instructions are more memory-efficient. Intel and AMD use variable-length instructions, while IBM and Motorola use fixed-length instructions.

How do we represent operands of operations? There are many different **addressing modes** with their own approaches to this:

* Register addressing: The operand is stored in a register.
* Immediate addressing: The operand is stored in the instruction itself.
* Memory addressing: The operand is stored in memory at a particular address.
  * Immediate address: The address is available as a literal value in the code.
  * Register address: The address is available as the contents of a program register.
  * Relative addresses: The address is available as the sum of a program register and a literal value.

Processors these days often store more information than just program registers and memory. For example, they may have a set of registers set automatically by some operations, called **condition codes**. These can be used to determine how certain other operations behave. They also may have a **stack**, which is an ISA implementation of the LIFO data structure. There are some other registers that are available in older ISAs like x86 and x86-64 for historical reasons, but are not used in modern ISAs.

There are two kinds of ISAs: the **reduced instruction set** (or **RISC**) and the **complex instruction set** (or **CISC**). A summary:

|                      RISC                      |                       CISC                        | Today we see |
| :--------------------------------------------: | :-----------------------------------------------: | :----------: |
|             Fixed-length encoding              |             Variable-length encoding              |     Both     |
|            Few, simple instructions            |          Many, complicated instructions           | Mostly CISC  |
|              Few addressing modes              |               Many addressing modes               |  More CISC   |
|            Uniform operand notation            |          Idiosyncratic operand notation           |     Both     |
|             Many program registers             |               Few program registers               |  More RISC   |
|                Clean new design                |            Backwards-compatible design            |     Both     |
|   All program registers are interchangeable    | Some operations only work with specific registers |  More CISC   |
|            1 instruction = 1 cycle             |       some instructions take several cycles       |     CISC     |
| Immediate values cannot represent all numbers  |    Immediate values can represent all numbers     |     Both     |
|        All maths operands are registers        |        One maths operand may be in memory         |     Both     |
|    Some instructions may not follow others     |      No limitations on instruction ordering       |  More CISC   |
|          Conditions are in registers           |        There are special "condition codes"        |  More CISC   |
| Function arguments usually passed in registers |  Function arguments usually passed on the stack   |  More RISC   |

## Pipelining

Executing most instructions involved several steps, some of which depend on others. Here's an example using the `push` instruction:

{{< figure src="/images/cs2130/designing-a-processor/push.svg" caption="The `push` instruction." width="100%" >}}

Pretty much instruction can be fit into the following sequence:

1. Fetch the instruction from memory.
2. Decode what the instruction intends to do.
3. Retrieve values from the register file.
4. Execute any required math or logic operations.
5. Access the memory.
6. Update the register file.

Processor throughput of instructions can be greatly increased by **pipelining** these steps. Think of an assembly line: a section of the processor may be focused on one step for a certain instruction. Once it's done its job, it passes that instruction onto the next processor section and takes another instruction. This way, the processor can be working on multiple instructions at once.

There are many additional issues associated with pipelining:

* **Stall**: A processor section may need to wait around for an earlier instruction in a later stage due to dependency issues.
* **Forward**: A processor section may need to grab information from a half-completed instruction in a later stage due to dependency issues.
* **Reorder**: A processor section may need to reorder instructions to give otherwise-stalled stages something to do.
