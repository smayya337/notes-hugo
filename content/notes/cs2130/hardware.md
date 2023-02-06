---
title: "Hardware"
weight: 4
---

Imagine you have a circuit that takes two 4-bit numbers, adds them together, and returns the answer as a 4-bit number. What happens when you add `1111` and `1111`? Well, you'll end up with `11110` -- but since you can only return four bits, you return the four least significant bits, which is `1110`. Does the omission of the leading `1` matter? It depends. If `1111` is a signed integer, then you're fine! `1111` equals -1 and `1110` is -2, so your addition works just as expected. But if you're dealing with unsigned integers... that's 15 + 15 giving you 14. Uh-oh. This is a case of **integer overflow** -- the number has gotten so big that bits are dropping off and you get a different number from what you wanted.

The important thing to remember when working with hardware is that it is not ideal. For example, a logic gate doesn't instantly change its output upon receiving some input -- it takes a little time, known as a **gate delay**, to settle on the right voltage level. This is why we can't have instantaneous computers.

## Electricity

Some basic measurements relating to electricity include:

* **Current** is the rate at which electrons flow.
* **Voltage** is roughly analogous to the pressure applied to make electrons flow.
* **Power** is current times voltage. Every time a processor changes state, it uses some power.
* **Heat** is an inevitable byproduct of power. It's also a problem because chips are so small and concentrated that small amounts of heat can cause them to malfunction. As a result, thermals are a very important part of chip design.

## Multi-Bit Wires and Gates

Usually, we don't want to work with only one bit. We want to design circuits that can handle multiple bits at the same time. A multi-bit equivalent of a wire is just, well, a bunch of wires next to each other. Meanwhile, a multi-bit mux is a bunch of separate muxes that share the same selector. Similarly, logical operators like `~`, `&`, `|`, and `^` act like multi-bit logic gates.

Hardware is not perfect. It is also not perfectly consistent, either. When you have a bunch of wires next to each other, you can't just assume that electrons will get through at the same speed in all of them, or even which electrons will arrive first. This is why we have to be careful when designing circuits that use multiple wires. It's important we disregard all these transitional states and only focus on the initial and ending states.

## Registers

Consider the following circuit:

{{< figure src="/images/cs2130/hardware/register-1.svg" caption="A counter circuit." width="100%" >}}

This circuit is a counter -- it starts with a value of 1 and then continually adds 1 to itself. The problem is that the different bits of the output of the adder (marked by the circle with the plus sign) appear at different times, so the value that goes into the adder the next time around may be garbled. As a result, you get another messed up value. Rinse and repeat.

To fix this, let's add a **register** to the circuit.

{{< figure src="/images/cs2130/hardware/register-2.svg" caption="A counter circuit with a register." width="100%" >}}

A register is a little circuit with a very important function. It has an input, an output, and another single-bit input called the **clock** (drawn with the triangle in the schematic). The way it works is that the clock rapidly oscillates between low and high. Whenever the clock turns high (called the **rising clock edge**), the register stores the value of its input. It'll continue to output that value until the clock turns high again, at which point the cycle will begin anew. This gives the output from the adder some time to stabilize before the next value is added to it.

Clock speed is important enough to be one of the best-known stats about any chip. (Think back to any computer store advertising the latest 3 GHz processor.) However, we can't just keep cranking up the clock speed forever, for a couple reasons:

* The faster the clock, the more power it uses.
* Electrons don't move through circuits instantaneously. The faster the clock, the higher likelihood that it saves a transitional value and things get messed up.

Engineers have attempted to overcome this issue in a couple ways:

* Make the chip smaller so that there's less distance for electrons to travel. This has worked pretty well for a while now, but chips these days are only a few nanometers across, so we're definitely in the diminishing returns stage of this process.
* Reduce the work done between each clock cycle. This will be discussed more when talking about pipelining.

## Memory

**Memory** is basically a giant array of bytes, or like a giant mux in front of tons of registers. However, memory is implemented more cheaply than registers. It also runs slower.

Processors interact with memory via **loads** and **stores**. A load is when the processor sends the memory an address and number of bytes, and the memory sends back the data located there. A **store** is when the processor sends the memory an address, number of bytes, and data, and the memory stores that data at the given address.

Memory gets much, much more complex than this, but at a basic level it's just addresses and values.

## Code-to-Hardware Compilation

There are several **code-to-hardware compilers**, which take a program written in a high-level language and turn it into a circuit. Examples of this include Verilog and VHDL. Here's an overview of how we can use them.

We can name a wire or collection of wires like a variable. However, since wires can only have one source, you can only assign a value to a wire once.

Operators like `+`, `&`, and `|` can be implemented fairly easily in hardware. ("Easy" varies from one gate per bit to thousands.) What's very important here is minimizing the number of gates involved in the longest path between input and output, since that'll effect how long everything takes to stabilize on a value.

Hardware description languages use the ternary operator a lot, since a statement like `b ? x : y` can be implemented with a single mux, which is only three gates per bit like seen below.

{{< figure src="/images/cs2130/hardware/mux.svg" caption="A multiplexer (mux)." width="100%" >}}

Registers are used to implement circular dependencies or stuff involving change over time. Register inputs can be specified once, but register outputs can be used multiple times.

It is common to have a **register bank** -- a set of registers that can be accessed like a fixed-size list or array. While memory doesn't work quite like registers, the interface is conceptually similar to a register bank.

## Register-Transfer Level Coding

In short, you've got two parts to this whole thing: the *logic*, which is unclocked gates connected by wires in an acyclic single-source way, and the *registers*, effectively a separate set of clocked storage units.

Each clock cycle runs as follows:

1. The clock signal goes from low to high (the "rising edge"). The registers save their current inputs.
2. The registers start outputting their new values.
3. The logic, with new inputs, begins to adjust. Eventually, a steady state is reached.
4. The outputs of the logic are sent to the registers. They are ignored during the high- and low-voltage periods of the registers (the "steady state") and the transition from high to low (the "falling edge").
5. Repeat.

In code:

```py
while True:
    new_register_values = logic(stored_register_values)
    stored_register_values = new_register_values
```
