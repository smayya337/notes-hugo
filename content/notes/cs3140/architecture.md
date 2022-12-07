---
title: "Architecture"
weight: 12
---

# Architecture

As software grows, it gets harder to maintain. We need to ensure from the outset that this **software entropy** occurs at as slow a rate as possible. **Software architecture** is the high-level part of design, asking questions like the following:

* Where does our input come from?
* How is our system interacted with or monitored?
* What does our system need to communicate with externally?

**Detailed design** handles the lower-level stuff, such as:

* Modularity
* Internal interfaces
* Detailed algorithms and data structures

Architecture defines a system in terms of its **components** and **interactions**.

Components include:

* Independent programs
* Groups of modules or classes
* Clients and servers
* Files and databases

Components are often physically separate systems!

Interactions occur between components, such as procedure calls.

## Architectural Patterns

* **Everything in Main** -- literally just dumping everything into the main class or module. This is the worst possible way to design a system. At least break it up, you know?
* **Big Ball of Mud** -- everything connects to everything else. It's hard to untangle all the different parts this way.
* **God Object** -- one object interacts with everything else. This is also a bad idea.
* **Monolithic** -- the object is one standalone application. This is OK at small scale, but becomes increasingly messy as the application becomes more complex.
* **Client-Server** -- two separate components interact with one another. The client application runs on the user's machine and the server is some centralized machine on the internet. This is a very common architecture for web applications. Some challenges with this system include ensuring that the server doesn't get overwhelmed or become unreachable by the client.
* **Layered** -- here, you break the application into layers. Each component interacts with the components in the layers above and below it. No layer is aware of anything above it. A common example of a layered architecture is the **3-layer architecture**, with the user interface at the top, business logic in the middle, and data at the bottom.
* **Model-View-Controller** -- this architecture is an extension of the layered model that is common with web frameworks like Django and Rails. Here, a controller receives requests, a model interacts with data storage, and a view defines the display to the user.
* **Microservice** -- what if, instead of a monolithic application, we had a bunch of small applications that interacted with one another? This is the idea behind microservices. Each microservice is a small, independent application that can be deployed and scaled independently. This is a very popular architecture for web applications. The challenge here, though, is that now instead of managing one big application, you have to manage multiple small applications. Also, there might be redundant data across the services, and intra-application communication can use up bandwidth on your network.
* **Peer-to-Peer** -- think client-server, but instead of a centralized server, everything is both a client and server. This is popular with file sharing applications like BitTorrent. The challenge here is that you have to manage the network of peers, and you have to ensure that the network is reliable.
