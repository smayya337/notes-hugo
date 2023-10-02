---
title: "User Accounts"
weight: 3
---

When it comes to access control, hardware has two modes: either you can do everything or you can't. The operating system, on the other hand, implements a much more complex set of permissions and restrictions.

## Per-Process Permissions

Theoretically, when you run a syscall to, say, open a file, the operating system can choose what it wants to do in response. In practice, it just compares a couple data structures: one detailing the permissions of the current process and another with the restrictions on the file. If there's a match allowing the requested operation, the operating system allows it. Otherwise, it throws an error.

The operating system also maintains information for all running processes, such as the processor state, open file descriptors, and runtime.

## User Accounts

User accounts typically include the following information:

* A username
* A real name
* A home directory
* A password (well, the hash of one)
* The set of groups the user belongs to

Note that there is no mention of permissions -- those are listed per resource (e.g. per file).

User accounts are easy enough to bypass if you just use a different operating system. Don't count on them to keep your stuff super secure.

Also, root exists. Root can do anything. Root is the best.

## Daemons

A **daemon** is a process that runs in the background. It waits for an event to occur, gets some CPU time, does something, then goes quiet again. Very mysterious, I know.

## What is an Operating System?

There are a few different ways to define an operating system:

* The code that runs in privileged mode
* The above, plus supplied wrapper functions, headers, and libraries
* The first bullet, plus all processes that run as root and are started during boot, plus all the account and file permission bookkeeping
* The above, as shipped together as a named system
* The above, plus the applications that came with it
* The subset of the fourth bullet that cannot be easily swapped out for other components
