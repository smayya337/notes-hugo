---
title: "Requirements Engineering"
weight: 4
---

We've looked at a variety of software methodologies. Remember that they all have the same basic steps. The difference between each methodology is the pacing, or how much time is spent on each step. Let's look at the process of figuring out what exactly we're trying to build.

## Sherriff's Rules of Software

1. Your software will haunt you.
    * Building software is the easy part. Maintaining it is the hard part. Plan this out before you start your project.
2. Never trust your users.
    * Users will always do things you didn't expect. They don't know much, if anything, about your codebase and all the things you've built in. Plan for this.
3. Make sure you're solving the right problem.
    * We like to get caught up in the new and shiny things -- new frameworks and tools and technologies... Focus on solving the customer's problem. Make sure you understand the customer's problem. Make sure the *customer* understands the customer's problem.

## Requirements Engineering

A **requirement** is a condition or capability needed by a user to solve a problem or achieve an objective. They must be met or possessed by a system or component to satisfy a contract, standard, specification, or other formal constraint. Requirements are often hard to figure out, since they're buried beneath assumptions and politics and the like. Don't assume anything about what your customers want. Ever.

Goals of requirements engineering include:

* Discovering what the software has to do
  * That's *what* it does, not *how* it does it -- figure that out after you've determined the requirements
* Documenting the requirements
  * Both the client and the developer need to be able to read and understand this
* Verifying the requirements
  * Everything needs to make sense, doesn't it?

**Requirements engineering** is the systematic way of developing requirements through an interative process of analyzing a problem, documenting the resulting observations, and checking the accuracy of the understanding gained. RE is made up of:

* **Analysis**: studying user needs to get a definition of the system (all custoers can unambiguously understand these)
* **Modeling**: turning user requirements into actionable statements that all software engineers can unambiguously understand

Requirements engineering is hard for a number of reasons:

* Developers aren't necessarily familiar with the client's domain.
* Representing requirements is challenging. English isn't all that precise, and the client may not understand much else.
* Your clients don't really know what they want. Can we expect them to? Not really. Our job is to draw everything out from them.

## Requirements Elicitation

**Requirements elicitation** is the process of gathering requirements from **stakeholders** -- all entities that have a vested interest in the system.

There are different types of requirements:

* **Functional requirements** specify functions the system must perform ("the system shall...") These must be specific, measurable, and testable.
* **Non-functional requirements** are requirements that are cross-cutting throughout the system. Examples include performance, security, and usability. NFRs are harder to work with since they're generally rather vague.
* **Constraints** are limitations on the solution set. Constraints differ from NFRs in that they deal with implentation, not features or conditions. Examples include use of specific technologies, hardware, or software.

## Elicitation Techniques

There are a number of techniques that can be used to elicit requirements. Some of these are:

* **Interview**: very common, usually structured, but could just be a conversation with stakeholders, must ensure the customer agrees with the outcome of interview
* **Observation**: watch people do their current daily jobs and see where problems arise
* **Examining documents and artifacts**: read everything you can about current policy and procedures
* **Joint application design**: very structured "board room" requirements gathering session
* **Groupware**: use a shared area to gather requirements
* **Questionnaire**: very common, get a lot of information with as many stakeholders as possible, more quantitative than qualitative
* **Prototype**: build a prototype and get feedback from stakeholders
* **Focus group**: get a small group of stakeholders together and get their feedback
* **On-site customer**: have the customer be part of their team and get their input throughout the process

The **operational profile** is the characterization of software based on how much each part is used. This is important for determining how much time to spend on each part of the software.

But which techniques do you use? There's no clear-cut answer for this. The objective is to gather as much "good" information about the system as possible without going overboard.

## Requirements Specification

Requirements elicitation lets you get all the things your stakeholders want from your software. Now, you've got to rephrase all of it into something technical that's understandable by the developers. (Remember, plain language is imprecise!) This is the **requirements specification**. You need to make sure the team and client agree on what should be built, that they both fully understand what the project is, and ideally have enough information to estimate costs.

There are several ways to specify requirements:

* **Use case**: a use case is a more visual way of modeling requirements. It consists of a UML use case diagram and a use case document. A use case is based around user interactions with the system.
* **Software Requirements Specification** (**SRS**): an SRS is a very formal document that writes out every single thing that can happen within the system. It gets extremely specific so that nothing is left up to interpretation.
* **User stories**: a user story is a short description of a feature told from the perspective of the person who desires the new capability. There's no information on implementation details, just a description of the high-level behavior.

Some notable details regarding user stories:

* They can be written by anyone at different times. Many are initially written in a workshop to create a backlog.
* "Card, Conversation, Confirmation" -- the idea is that stories are placeholders for future conversations. You can add conditions that determine whether the story is complete.
* A standard format may look something like this: `As a <user type>, I want <some goal or outcome>, so that <some reason>.`
* Large stories, called **epics**, aren't a problem since they'll be split into smaller stories later.
