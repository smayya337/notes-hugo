---
title: "POSIX Permissions"
weight: 4
---

## Users and Groups

Every program runs as some **user**. A user can belong to any number of **groups**. Every file and directory belongs to a user and a group. The user of a file does not need to belong to the group of the file.

## File Permissions

The three main properties of a file are reading, writing, and executing. You can use `chmod` to allow these properties separately for the user of a file, the group of a file, and everyone else.

The defaults are set by the **umask**, which is just the inverse of the permissions you want to allow. For example, if you want to allow read and write permissions for the user and read permissions for the group and everyone else, you would use `umask 022`.

Some other fun permissions include:

* `setuid`: When a file is executed, it is executed as the user of the file, not the user of the program. This is useful for programs that need to do things that only the owner of the file can do.
* `setgid`: Like `setuid`, but for groups.
* `sticky`: The files inside a directory can only be deleted by the owner of the file or the owner of the directory.

## Access Control Lists

An **access control list** is a more fine-grained way of controlling permissions. You can use `setfacl` to set an access control list for a file or directory. You can use `getfacl` to see the access control list for a file or directory.
