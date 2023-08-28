---
title: "The Security Mindset"
weight: 1
---

**Security** is freedom from, or resilience against, potential harm (or other unwanted coercive change) from external forces. In the context of computer security, the "external forces" in question are usually malware, hackers, and other malicious actors. No form of security is 100% fool-proof -- even something that's 99.99999999999% secure is still vulnerable to a sufficiently sophisticated attack, an extremely lucky guess, or beating someone up until they give you the password. At the end of the day, the key to good security is knowing your enemy and knowing yourself.

When analyzing your enemy, ask the following questions:

* What are their motives?
* What are their capabilities?
* What is their degree of access?

The **security mindset** is thinking like an attacker. You need to think critically about the system being examined, including both technical and non-technical aspects, and consider how something might break (with or without your help). Keep in mind that thinking about a weakness is not the same as exploiting it -- you can think about how to break into a bank without actually breaking into a bank! Please don't break into a bank! -- but thinking about weaknesses allows you to consider how you might make the system more secure.

When we're working in security, we need to think about:

* What are we trying to protect?
* What properties are we trying to enforce?
  * Confidentiality: keeping data private
  * Integrity: keeping data accurate
  * Availability: keeping services up
  * Privacy: keeping data about people private
  * Authenticity: making sure data comes from the right source
* What would a breach cost us?
  * Direct: money, property, safety, etc.
  * Indirect: reputation, trust, etc.
* How likely are these costs?
  * Probability of attacks?
  * Probability of success?
* What are the costs of countermeasures?
  * Monetary cost?
  * Time cost?
  * User experience cost?
* Thinking like an attacker
  * What are the weakest links?
  * Security assumptions
  * Thinking outside the box

Countermeasures:

* Technical: stuff like encryption, firewalls, etc.
* Non-technical: stuff like policies, procedures, etc.
