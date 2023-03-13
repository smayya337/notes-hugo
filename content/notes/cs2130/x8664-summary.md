---
title: "x86-64 Summary"
weight: 7
---

## Addressing Modes

Operands of most operations may either be a register, an immediate value, or the contents of memory. A memory address in general is made of an immediate, two registers, and a scale on one of the the registers: `imm + rA + rB * s` where `s` is one of `1`, `2`, `4`, or `8`.

## Two Syntaxes

For mostly historical reasons, x86-64 has two different syntaxes.

|                   Feature                   |         Intel         |        AT&T        |
| :-----------------------------------------: | :-------------------: | :----------------: |
|                  Register                   |         `rsp`         |       `%rsp`       |
|                  Immediate                  |         `10`          |       `$10`        |
|        Register + immediate address         |     `[rsp + 23]`      |     `23(%rsp)`     |
| Register + register * 4 + immediate address | `[rsp + r8 * 4 + 23]` | `23(%rsp, %r8, 4)` |
|                  `a += b`                   |    `add rax, rbx`     | `addq %rbx, %rax`  |

AT&T syntax tends to be more explicit than Intel.

The width specifiers are:

| Bits  | Historical name | Intel name | AT&T suffix |    Register names    |
| :---: | :-------------: | :--------: | :---------: | :------------------: |
|   8   |      byte       |   `BYTE`   |     `b`     | `ah`, `al`, `r9b`... |
|  16   |      word       |   `WORD`   |     `w`     |    `ax`, `r9w`...    |
|  32   |   double word   |  `DWORD`   |     `l`     |   `eax`, `r9d`...    |
|  64   |    quad word    |  `QWORD`   |     `q`     |   `rax`, `r9q`...    |

The most popular *nix toolchains default to AT&T syntax. The most popular Windows toolchains default to Intel syntax.

## Registers

The registers are a mess. Thanks, backwards compatibility.

| 8-bit  | 16-bit | 32-bit | 64-bit | Calling | Callee-save |                        Notes                         |
| :----: | :----: | :----: | :----: | :-----: | :---------: | :--------------------------------------------------: |
| al, ah |   ax   |  eax   |  rax   | return  |             | special meaning for multiply and divide instructions |
| cl, ch |   cx   |  ecx   |  rcx   |  arg 4  |             |                                                      |
| dl, dh |   dx   |  edx   |  rdx   |  arg 3  |             | special meaning for multiply and divide instructions |
| bl, bh |   bx   |  ebx   |  rbx   |         |     yes     |                                                      |
|  spl   |   sp   |  esp   |  rsp   |         |     yes     |                    stack pointer                     |
|  bpl   |   bp   |  ebp   |  rbp   |         |     yes     |                                                      |
|  sil   |   si   |  esi   |  rsi   |  arg 2  |             |                                                      |
|  dil   |   di   |  edi   |  rdi   |  arg 1  |             |                                                      |
|  r8b   |  r8w   |  r8d   |   r8   |  arg 5  |             |                                                      |
|  r9b   |  r9w   |  r9d   |   r9   |  arg 6  |             |                                                      |
|  r10b  |  r10w  |  r10d  |  r10   |         |             |                                                      |
|  r11b  |  r11w  |  r11d  |  r11   |         |             |                                                      |
|  r12b  |  r12w  |  r12d  |  r12   |         |     yes     |                                                      |
|  r13b  |  r13w  |  r13d  |  r13   |         |     yes     |                                                      |
|  r14b  |  r14w  |  r14d  |  r14   |         |     yes     |                                                      |
|  r15b  |  r15w  |  r15d  |  r15   |         |     yes     |                                                      |

The registers overlap in the low-order bits. For example, if `r15` is `0x0123456789abcdef`, then `r15d` is `0x89abcdef`, `r15w` is `0xcdef`, and `r15b` is `0xef`. You can also have names for the for the lowest byte (ending with `_l`) and the second lowest byte (ending with `_h`).

x86 is really old, and it cares a lot about backwards compatibility. For that reason, a lot of functionality (such as floating point operations) is done in separate register banks with their own operations. We won't worry about those.

## Important Instructions

### Move

There are different kinds of `mov` instructions. When moving from a smaller source to a larger destination, you can use `movzx` to fill the high-order bits with zeros or `movsx` to fill them with the source's high-order bit. There's a special "swap" instruction, `xchg`. There are special moves for moving between register banks as well as conditional moves.

## Jump

Jumps move the `pc` to a new location. `jmp` does this conditionally. Some jumps are conditional:

* `je` (jump if equal)
* `jne` (jump if not equal)
* `ja` (jump if above)
* `jae` (jump if above or equal)
* `jb` (jump if below)
* `jbe` (jump if below or equal)
* `jg` (jump if greater)
* `jge` (jump if greater or equal)
* `jl` (jump if less)
* `jle` (jump if less or equal)

The difference between above/below and greater/less is that above/below is unsigned and greater/less is signed.

Some jumps only check single bits, such as `js` (which checks the sign bit).

Conditions in x86-64 are based on "condition codes", a set of single-bit flags that store enough information to compare a value to zero.

### Load Effective Address

One instruction, `lea`, is widely used. Instead of loading the contents of memory at an address, it loads the address itself. The nice thing here is that, since addresses are computed using addition and multiplication, `lea` can be used to do some basic arithmetic. For example, `a = 5 * b + 20` can be written in AT&T syntax as `lea 20(%rbx, %rbx, 4), %rax`.

### ALU Operations

| Instruction |        Is like        |
| :---------: | :-------------------: |
|    `add`    |         `+=`          |
|    `sub`    |         `-=`          |
|    `and`    |         `&=`          |
|    `or`     |         `\|=`         |
|    `xor`    |         `^=`          |
|    `shl`    |         `<<=`         |
|    `shr`    | `>>=` (zero-extended) |
|    `sar`    | `>>=` (sign-extended) |

There's also multiplication and division, but they're a little weird.

`imul X` multiplies `rax` by register X, storing the 128-bit result with the high-order 64 bits in `rdx` and the low order in `rax`.

`idiv X` divides `rax` by register X, storing the quotient in `rax` and the remainder in `rdx`.

### Push and Pop

`push X` is roughly equivalent to:

```py
rsp -= 8
memory[rsp] = X
```

`pop X` is roughly equivalent to:

```py
X = memory[rsp]
rsp += 8
```

Note that some programs only use 32-bit and smaller values, and use a variant of `push` and `pop` that adjust `esp` by 4 instead of `rsp` by 8.

### Call and Return

`call X` means "push the address of the next instruction, then `jmp X`." `ret` means "`pop pc`." This isn't otherwise possible because `pc` is a special register.

### No Operation

Compilers generate a lot of operations that technically do nothing, called **"no-ops"**. The most common one is `nop`, which does nothing. These are often used to align instructions with specific addresses and perform optimizations.

## Calling Conventions

It is common for ISAs to be accompanied by a recommended calling convention. This involves three primary components:

* **Argument passing**: Invoking a function (with `call`) involves jumping to its code and storing where to return to. That code needs to know where to find its arguments. x86-64's most common callend convention puts the arguments, in order, in `rdi`, `rsi`, `rdx`, `rcx`, `r8`, and `r9`. Remaining arguments, if any, are pushed onto the stack, last to first, before the call.
* **Return value passing**: The code that invokes a function needs to know from where to retrieve its return value. x86-64's most common calling convention puts the return value in `rax`.
* **Callee- and caller-save registers**: In general, both the code that invokes a function and the code of the function itself will use all the program registers. This means that the old values of these registers must be saved and restored. x86-64 calling conventions disinguish between callee-save and caller-save registers. a **caller-save register** is one that the invoking code must assume the invoked code might have changed, thus necessitating saving it before the call if it contains meaningful data to the invoking code. It is also one that the invoked code can use without first saving and later restoring. A **callee-save register** is one the the invoking code can assume the invoked code will not change, and thus the invoking code does not need to save before the call. It is also one that the invoked code cannot use unless it first saves its value and restores that saved value to the register before returning. The most common way to save a register is to push its contents to the stack using `push` (as, e.g., `push %rax`) or a similar `rsp`-based `mov` (as, e.g., `mov %rax, -32(rsp)`). x86-64's most common caling convention identifies `rbx`, `rsp`, `rbp`, and `r12` through `r15` as callee-save and all others as caller-save.

This is all convention, of course, but it is strongly in your best interests to follow it.
