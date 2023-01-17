---
title: "SSH"
weight: 1
---

**Secure Shell** (SSH) is a protocol for remotely accessing a computer over a network. SSH servers and clients are available for all major operating systems.

## Authentication

When accessing a server over SSH, you will generally need to **authenticate** -- that is, provide some credentials to prove you are allowed to access the system. Often, this will take the form of providing a password for the account you are trying to access. Another way is by using a **keypair**. You have two files ("keys"), one public and one private. The public key's contents are placed in a file on the server located at `$HOME/.ssh/authorized_keys` (where `$HOME` is the home directory of the user you are trying to access). Some fancy cryptography that is much too complicated for me to explain allows the computers to match their pieces of the keypair together. This is more secure than using a password as long as you don't lose (or give someone access to) the private key. It's also more convenient!

## Creating a Key

The `ssh-keygen` command creates a keypair for you. The `ssh-copy-id` command copies your public key to another machine.

## SCP

`scp` is a command for file transfer over SSH, taking the form:

```text
scp [user of source]@[host of source]:[path of source] [user of destination]@[host of destination]:[path of destination]
```

You can use it to copy a file from one computer to another.
