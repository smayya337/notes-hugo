---
title: "Software Processes and Methodologies"
weight: 3
---

* Writing code is easy
* Engineering good software is hard
  * Humans are a big problem
    * Customers
    * Developers
    * Managers
  * Large software systems take on a life of their own
  * As soon as you introduce more than one person into the process, complications arise
* We need a well-defined, well-understood, repeatable software development process
* A **software process** is a set of activities that take place in sequence in the pursuit of creation of a software system
* "The creation and translation of human needs into requirements, requirements into design, design into code, testing, installing, etc."

## Software Process

* All processes have some form of:
  * Requirements elicitation
  * Requirements specification
  * Design
  * Development (design, implemented, verified)
  * Validation
  * Evolution (AKA maintenance)
* The form/iteration/timing/etc. of these activities defines different process families and methodologies

### Software Process Models

* Broadly speaking, process models and thus methodologies fall on a continuum from **plan-driven** to **agile**
* The biggest difference between the two is that an agile process can handle changing requirements better
* A plan-driven process is useful for more up-front design and planning (e.g. high-security, government approval)
* A **software development methodology** is an instance of a process model (e.g. Scrum is an agile methodology)

### Choosing a Software Process

* Organizational factors
  * Co-located or global team? A more global, distributed team will need to be more plan-driven
  * How is the team structured? Bigger teams will need more structure, so use plan-driven
  * Directives from leadership?
* Technology factors
  * How does the team like to work?
  * What software can you use to manage communication effectively?
  * Are you working with hardware at all? You'll need to be more plan-driven since hardware requires specific interfaces, APIs, etc.
* Domain/sector factors
  * How quick is the turn-around? Agile is better for quick turn-around
  * Are there constant updates? If so, you'll need to be more agile
  * How rapidly is the state-of-the-art changing? Agile is better for rapidly changing state-of-the-art
* Regulatory factors
  * Are you building something that requires government or other third-party oversight? If so, plan-driven is better
  * What documentation/artifacts will you need to provide? If you need to provide a lot of documentation, plan-driven is better
* Human factors
  * What is your team make-up?
  * Are they co-located?
  * How does everyone get along?
  * What is the culture like at the company? What about similar companies, or companies located nearby?
* Bottom line: There is no one good "catch-all" process -- in fact, most companies don't use a stock process; they use a hybrid of different processes customized to their needs

### Choosing a Software Development Methodology

* Agile methodologies
  * Scrum
  * Extreme Programming (XP)
  * Kanban
* Plan-driven methodologies
  * Rational Unified Process (RUP)
  * Personal Software Process (PSP)
  * Team Software Process (TSP)

### The Waterfall Model

* Do the phases shown before, in order: requirement, design, implmentation, verification, maintenance
* Need iteration and feedback
  * Things change (especially requirements)
  * Change late requires change in earlier results
  * Often need to do something multiple times, in stages
* Rigidity
  * Not realistic to freeze results after each phase
* Waterfall does not emphasize important issues, like risk factors

### The Spiral Model

* Kind of like waterfall, but you just keep doing things over and over again
* You stop when the stakeholders are satisfied
* Is it the answer? Sometimes, yes
  * Intended for internal development of large systems
  * Intended for large-scale systems where cost of no risk management is high
* The spiral model is important historically and as an illustration of many desired features of a process

## Plan-Driven Methodologies

* Works best when developers can determine the requirements in advance, and when the requirements remain relatively stable
* Focus on repeatability and predictability
* Defined, standardized, and incrementally improving processes
* Thorough documentation
* Architecture defined up-front
* Detailed plans, workflow, roles, responsibilities, and work product descriptions
* Ongoing risk management
* Focus on verification and validation
* TL; DR:
  * Good for projects where requirements are less likely to change
  * As teams grow in size/distribution, plan-driven processes help teams work together effectively
  * Often better for newer/less-experienced team members
  * Good for projects with lots of components that have to be integrated

### Rational Unified Process (RUP)

* RUP is interesting because it is a product unto itself
* Built around the Unified Modeling Language (UML)
* Business value delivered incrementally in time-boxed cross-discipline iterations
* In a large, plan-driven environment, teams are often separated and projects are staggered (so one starts as another ends)

## Agile Methodologies

* Born in Snowbird, Utah, in February 2001
* Leaders of the field got together to come up with rules and policies for all Agile methodologies
* The Agile Manifesto
  * Individuals and interactions over processes and tools
  * Working software over comprehensive documentation
  * Customer collaboration over contract negotiation
  * Responding to change over following a plan
* The power is that you can work through the plan with the customer in real-time

### Extreme Programming (XP)

* Probably the first well-known agile process, created by Beck and Cunningham
* Rarely does a team follow XP strictly
* XP was built around the same ideas in the manifesto with 12 (13?) core practices
  * Planning Game -- user stories and stoy points at the beginning of each iteration to plan
  * Whole Team -- everyone (business, coders, QA, customer, etc.) is involved in the process and should be co-located
  * Sustainable Pace -- don't overwork the team or else they might inadvertently introduce defects
  * Small Release -- get customer feedback early and often
  * Coding Standards -- follow good standards and naming to reduce documentation; code should be self-documenting
  * Pair Programming -- one person codes while another checks over their shoulder to reduce defects
  * Test-Driven Development -- write tests before you write code to ensure you're writing the right code
  * Refactor Mercilessly -- continuously improve your codebase
  * Collective Code Ownership -- everyone owns the codebase, anyone can update any part of the code when needed
  * Continuous Integration -- constantly build and test code; main code should always be in a buildable state
  * Simple Design -- design simply
  * Metaphor -- have a story that explains the code
  * Stand-up Meeting -- everyone meets every day to discuss what they did yesterday, what they're doing today, and any blockers

### Scrum

* Originally created by Jeff Sutherland and Ken Schwaber in the 1990s
* Focuses on:
  * Simplicity
  * Any complex project
  * Constant feedback
  * Iterations ending with a potentially shippable product
* Steps:
  * You have a product backlog
  * Hold a planning meeting
  * Pick a few items from the product backlog and put them in the sprint backlog
  * Work on those tasks
  * Hold daily meetings
  * Once the sprint is over (standard sprint length is 2-3 weeks), hold a sprint review meeting
  * Leadership may have a retrospective meeting to discuss what went well and what didn't
  * Rinse and repeat

## Polar Chart

* A polar chart is a way to visualize the differences between agile and plan-driven methodologies
* Axes:
  * Size -- how many people are you working with? More people means more plan-driven
  * Dynamism -- how much do the project requirements change? More change means more agile
  * Culture -- how much does the team value order? More order means more plan-driven
  * Personnel -- how much experience does the team have? More experience means more agile
  * Criticality -- how much do you have to lose if you fail? More to lose means more plan-driven
