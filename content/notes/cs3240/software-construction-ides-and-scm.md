---
title: "Software Construction: IDEs and SCM"
weight: 2
---

## Software Construction

* Our definition:
  * **Software engineering** is the discipline concerned with all phases of the software process lifecycle (writing code, testing, coming up with ideas, etc.)
  * **Software construction** focuses specifically on the building, testing, and technical production of the software product and the tools and techniques used

### Techniques and Practices

* Coding practices (e.g. camelCase in Java vs. snake_case in Python)
* Refactoring
* Collective code ownership and continuous integration
* Minimal shippable/viable product

### Tool Categories

* IDEs
* Source control management
* Bug/issue tracker
* Requirements/feature/backlog tracker
* Communication systems
* Continuous integration systems

## Integrated Development Environments

* An IDE is a programming tool that combines several development features into one unified system
  * Code editor
    * Syntax highlighting
    * Code folding
    * Auto-complete
  * Compiling/running
  * Debugging
  * Testing
* Often contains (or can add) other features
* First IDE developed for BASIC
* First prominent IDE was called Maestro
  * Literally a full system/unit
  * Computer/peripherals/software
* Later languages encouraged (even required) IDEs
* Others include Xcode, Netbeans, JetBrains products, and many, many, many more

## Source Control Management

* SCM enables multiple people to simultaneously work on a single project
* Each person edits their own copy of the files and chooses when to share those changes with the rest of the team
* Temporary or partial edits by one person do not interfere with another person's work
* Version control also enables one person to use multiple computers to work on a project, so it is valuable even if you are working by yourself
* SCM gives access to historical versions of your project -- insurance against computer crashes or data loss
* If you make a mistake, you can roll back to a previous version
* You can reproduce and understand a bug report on a past version of your software
* You can also undo specific edits without losing all the work that was done in the meantime
* Can determine who made a change and when

### Centralized SCM

* Each user gets their own workng copy, but there is just one central repository
* As soon as you commit, it is possible for your colleagues to see your changes
* For others to see your changes you need to commit and they need to update

### Distributed SCM

* Each user gets their own repository and working copy
* After you commit, others have no access to your changes until you push your changes to the central repository
* Distributed version control is more modern, runs faster, is less prone to errors, has more features, and is somewhat more decentralized

### Git's Repositories

* Your **working copy** (or **working tree**) is a folder where your files are
* Create a local repository for a project
  * In that folder, type Git commit: `git init`
  * Repository in the folder `./.git`
  * Start working on your files
* Start with files from some other repository
  * Git term: clone a repository (either local or remote)
  * Remote repo? `git clone user@host:/path/to/repository`
* `git push` sends commits to remote
* `git pull` gets commits from remote
* `git merge` merges changes from two sources (different repositories, branches, etc.)
