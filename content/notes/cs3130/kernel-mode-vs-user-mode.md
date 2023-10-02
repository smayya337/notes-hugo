---
title: "Kernel Mode vs. User Mode"
weight: 2
---

Multi-purpose chips have (at least) two different operating modes:

* **Kernel mode**: Kernel mode allows the software to do any operation that is supported by the hardware.
* **User mode**: User mode adds more guardrails and blocks off some hardware operations that could be dangerous if misused.

This separation allows the operating system to protect itself from user programs. If a user program tries to access a protected resource, the operating system can stop it and prevent the program from doing any damage. This also allows the operating system to manage resources; a program isn't aware of the limitations of the system, nor is it even aware that other stuff is going on around it, thanks to this separation. In addition, this model prevents programs from having to figure out how to support all the different types of hardware out there and even makes multi-user support possible.

In user mode, there are all sorts of protected instructions and memory segments that are off limits, such as:

* The area noting which user you're logged in as
* Instructions that communicate with disks, networks, etc.
* Instructions to allow user-mode code call kernel functions

The easiest way to create multiple modes is to have a single-bit register that tracks the current mode of the computer. In practice, processors are significantly more complicated and have more modes than just this. The primary way to switch to kernel mode is a **hardware exception** -- an event that causes the processor to jump to kernel-only memory and start executing it in kernel mode. This is triggered via a special instruction called a **system call**.

## Exceptions

There are all sorts of hardware exceptions:

* **Interrupts**: An interrupt is an event that causes the processor to "freeze time", handle it, and then continue on like nothing ever happened.
* **Faults**: A fault is an event caused by a failed instruction.
* **Traps**: A trap is an exception caused by a special instruction whose job is to generate exceptions. Traps are used to switch from user mode to kernel mode.

When an exception occurs, the processor switches to kernel mode and executes some code called an **exception handler**. In order to resume the previous user code, the previous state is stored before executing the handler.

In order to determine which exception to handle, the hardware consults an **exception table** -- a giant array with the addresses of the exception handlers. If you need to handle exception number, say, 6, all you do is set your program counter to the address in index 6 of the exception table and you're good to go.

There are a few things the handler can do:

* It can resume the program where it left off. This is seen with traps and interrupts.
* It can restart the program from where the exception was called. This is seen with faults.
* It can just shut the whole program down.

In Linux, when making a system call, the program puts the system call number in the register `%rax` and then calls the `syscall` assembly instruction. This instruction is a trap with exception number 128. The kernel then looks up the system call number in a table and calls the appropriate function.

Exceptions facilitate communication between user code and the kernel. **Signals** allow the kernel to communicate with the user code. They act somewhat like interrupts: when one appears, the currently executing code is suspended and a signal handler is run. In order to avoid issues where the user code and the signal handler edit the same thing, POSIX has a list of "async-signal-safe" functions. You can also use functions like `sigprocmask` to block signals from interrupting your code.

Part of the save- and restore-state functionality used by exception handlers is exposed by the C functions `setjmp` and `longjmp`. These functions were previously used as a way to implement try-catch error handling in C, but there are more efficient solutions now.

## Processes and Threads

A **process** is a software-only operating system construct that roughly parallels the end-user idea of a running program. A process has its own equivalent of processor cores and memory. To implement these, the OS has a lot of data structures inside kernel-only memory.

A **thread** is the process's equivalent of a processor core. Each thread has its own program registers, program counter, condition codes, and other stuff. Since it's all separated from the other threads, each process can use its thread(s) and change the program counter without worrying about messing up other processes. A **virtual address space** is the process's equivalent of memory. The operating system performs **address translation** -- mapping a virtual address to a real one -- in order to preserve the illusion of a separate memory space for each process. A method called **context switching** allows the operating system to switch between processes and threads.
