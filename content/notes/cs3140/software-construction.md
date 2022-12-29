---
title: "Software Construction"
weight: 3
---

## Git

**Git** is the most popularly used version control software. Version control is used to keep track of changes to a program and foster collaboration.

The biggest thing about Git is that it is a **distributed repository**. Other forms of version control use a **centralized repository** -- everything is stored in one spot, and you can just check out what you need, work on it, and **commit** your changes to send it back. Git's distributed repository model instead involves making a copy of the whole repository on your local machine, instead of just grabbing a little bit that you need. Committing in Git only saves changes to the local repository, with another operation -- pushing -- required to actually send the changes to the remote repository. This setup incentivizes committing often since you're not cluttering up the remote repository with possibly broken code by doing so.

Some important commands in Git:

* `add` -- add a file to the **staging area** (where files set to be committed go)
* `branch` -- create a new **branch** (path of commits), allowing e.g. development of a feature without breaking the main production code
* `checkout` -- switch to another branch
* `commit` -- save changes to local repository
* `merge` -- merge the changes from one branch into another
* `pull` -- get changes from a remote repository
* `push` -- send changes to a remote repository

Sometimes when merging code, you'll hit an error involving conflicting code. This is best resolved outside of your main branch. The recommended strategy for merging one branch (let's say branch A) into another (branch B) is to merge branch B into branch A, fix any conflicts, and then merge branch A into branch B (which should go without a hitch because you've already smoothed everything out).

When developing software, you should add new features to a non-main branch. Ideally, your main branch should never be broken! This allows for you to always have a working product and minimizes the amount of time spent resolving conflicts (especially with group work).

## Gradle

**Gradle** is a build tool for Java. The power of Gradle is that it can manage all your dependencies for you, run all your test cases, and build everything into a `.jar` file. This makes working with a big project much easier. The most important Gradle file is `build.gradle`, which handles dependencies, plugins, how to run tests, and how to build the project.

To build a project with Gradle, just run one command: `./gradlew build`. It's that easy! The nice thing about `gradlew` is that it will install Gradle for you if you don't have Gradle already, which is quite convenient.
