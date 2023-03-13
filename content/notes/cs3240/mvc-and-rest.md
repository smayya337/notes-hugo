---
title: "MVC and REST"
weight: 5
---

## Model-View-Controller

**Model-view-controller** (**MVC**) is an architectural design pattern that separates the logic, data, and interface of an application. Django is an MVC **framework**. A framework is an implementation of a design pattern for a given language. MVC aims to be a **separation of concerns** -- different responsibilities are handled by different parts of the application. It also tries to be extensible, making it easy to add more pages and models.

Let's look at Django. Why would you use Django?

* Comfort level -- Python is easier to learn than most other languages.
* Maturity -- Django has been around for a while and there are resources and examples available.
* Environment -- Django/Python is supported by many different platforms.
* Learning objectives -- the MVC nature of Django makes it a good learning tool.

There are a bunch of other high-level architectures associated with MVC. Each of these govern how we think about our sofftware system and how we should go about implementing it.

MVC is a special instance of a **three-tier architecture**. The three tiers are the **presentation** (the user interface), the **logic** (the business logic code), and the **data** (the information that the application is working with). MVC is a code implementation of a three-tier architecture, which is a much more abstract concept.

It's also associated with a **client-server architecture**. The client contacts the server, which then responds with some data. The balance of responsibilities in this architecture is not always even. An architecture that has most of the processing on the client side is a **thick client**, while one that does most of the heavy lifting on the server side is a **thin client**. A **rich client** is one in between.

Now, let's look at SaaS, PaaS, and IaaS.

**Software-as-a-service** (**SaaS**) is a software distribution model in which a third-party provider hosts applications and makes them available to customers over the Internet. You don't have to add functionality to the application, you just use it.

**Infrastructure-as-a-service** (**IaaS**) is a type of cloud computing where you essentially just pay for server resources.

**Platform-as-a-service** (**PaaS**) is the middle ground between SaaS and IaaS. You get a platform that you can use to build applications, but you don't have to worry about the underlying infrastructure.

## REST

Today's web applications are very complex and interconnected. The problem of **state** -- what is the user currently doing? -- is a huge concern. Actions don't make sense without context -- context provided by state. Communication between machines is extremely important.

**Representation State Transfer** (**REST**) is an architectural style for distributed hypermedia systems. Whereas most programs are generally event-driven (constantly listening for and reacting to events), REST is focused on resources. Think nouns, not verbs.

REST has five principles:

* **Statelessness** -- no state information can be stored on the server. Every message must contain all the information necessary to process the request. (This does not forbid you from storing state on the client or in a database. In the MVC architecture, this means you can store state in the model or view, but not the controller.)
* **Idempotency** -- the output of identical requests must itself be identical. This idea allows caching, since you know that if you've already seen a request, you can just use the cached response.
* **Addressable resources** -- everything has its place and every place has a thing. A URL reflects the resource and are made up of "nouns" with "verbs"
* **Well-defined operations** -- everything needs to be done via standard HTTP commands like `GET`, `POST`, `PUT`, and `DELETE`. This rules out streaming, which is a weird case.
* **Structured data** -- data is represented in a standard format like JSON or XML. This allows for easy parsing and interoperability.

Most MVC frameworks are RESTful. However, a RESTful app does not have to necessarily use MVC. Both architectures take advantage of the asynchronous nature of the web for creating applications.

A REST API is an API that follows the REST principles. It allows us to perform functions within a web application programmatically, outputting data in a format like XML or JSON.
