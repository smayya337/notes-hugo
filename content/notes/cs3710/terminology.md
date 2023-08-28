---
title: "Terminology"
weight: 2
---

* **Vulnerability**: a weakness in the security of a system
* **Exploit**: an attack that makes use of one or more vulnerabilities
* **Authentication**: verifying who a user is
* **Authorization**: ensuring that someone is allowed to do
* **Vector**: the means by which malware attacks a host
* **Payload**: the damage or effects malware causes

## Characterstics of Malware

* **Self-replication**: does it make copies of itself?
* **Population growth**: how does the infected population increase?
  * Zero if it's not self-replicating
  * But self-replicating can have zero or positive population growth
* **Parasitic**: does it need another executable in order to exist?

## Types of Malware

### Logic Bomb

* Self-replicating: no
* Population growth: zero
* Parasitic: possibly

A **logic bomb** is an exploit that triggers when a certain condition is met.

### Trojan Horse

* Self-replicating: no
* Population growth: zero
* Parasitic: yes

A **Trojan horse** is a program that looks legitimate but actually has a malicious purpose.

### Backdoor

* Self-replicating: no
* Population growth: zero
* Parasitic: possibly

A **backdoor** is any mechanism that allows bypassing of the normal security checks.

### Virus

* Self-replicating: yes
* Population growth: positive
* Parasitic: yes

A **virus** is a program that can replicate itself by infecting other programs. It modifies an executable and inserts itself into it.

### Worm

* Self-replicating: yes
* Population growth: positive
* Parasitic: no

A **worm** is a stand-alone program that propagates via a network. It typically does not modify an existing binary file, but exploits a security hole on the target system.

### Rabbit

* Self-replicating: yes
* Population growth: zero
* Parasitic: no

A **rabbit** is a program that replicates itself until it fills all available memory or disk space.

### Spyware

* Self-replicating: no
* Population growth: zero
* Parasitic: no

**Spyware** is software that collects information about a user without their knowledge and transmits it to someone else.

### Adware

* Self-replicating: no
* Population growth: zero
* Parasitic: no

**Adware** is software that automatically displays or downloads advertising material when a user is online.

### Dropper

* Self-replicating: N/A
* Population growth: N/A
* Parasitic: N/A

A **dropper** is a program that deposits other malware on a computer.

### Hybrid

* Self-replicating: N/A
* Population growth: N/A
* Parasitic: N/A

A **hybrid** is a program that combines two or more types of malware. Most malware today is hybrid.

### Zombies

* Self-replicating: ?
* Population growth: ?
* Parasitic: yes (to a computer)

A **zombie** is a program that allows a computer to be remotely controlled by an attacker.

### Botnet

* Self-replicating: N/A
* Population growth: N/A
* Parasitic: yes

A **botnet** is a network of zombie computers controlled by a single source.

### Ransomware

**Ransomware** is a type of malware that encrypts a user's files and demands a ransom to decrypt them.
