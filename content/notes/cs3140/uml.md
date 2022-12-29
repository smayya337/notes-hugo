---
title: "UML"
weight: 11
---

The **Unified Modeling Language** (UML) is a standardized way of visualizing software design. It's a good way to communicate your design to other people, and it's also a good way to get a high-level overview of your code.

The most applicable type of UML diagram for software design is the **class diagram**. A class diagram shows the classes in your program, the relationships between those classes, and the methods and attributes of those classes. We don't generally show constructors or simple getters and setters in class diagrams, and we tend to label aggregation and association relationships with the relevant field name.

## Class Diagram Symbols

**Class**:

```plantuml
class MyClass {
    ' The + stands for public
    + getMyAttribute(): int
    ' The - stands for private
    - myAttribute: int
    ' The # stands for protected
    # helperMethod(): void
}
```

![Class diagram](//www.plantuml.com/plantuml/svg/NSsn2i8m58NXlKzne8DAwGkuYNCsNo1DhkP2R4foMYZYkujPj9tkyD-Fuw8j1MQzrljg0E20Mn1qABIZBxYdZ6aUehfQEpo4PhsGMOUPSZoTeIF_PB-HMHTBgRd7y-VsgjsgH74KNnzQ18cJP2CCoNy7bwI-UNy0)

**Interface**:

```plantuml
interface MyInterface {
    + myMethod(): void
}
```

![Class diagram](//www.plantuml.com/plantuml/svg/oymhIIrAIqnELV2jz8IpgxaKW41R8RVIDxKa8pz5GzDAeIm_CuMhbWi0)

**Abstract class**:

```plantuml
abstract class MyAbstractClass {
    + myMethod(): void
}
```

![Class diagram](//www.plantuml.com/plantuml/svg/IqmgBYbAJ2vHICv9B2vMyArqX0euW_dLN0f0eAsGM-cRMfAHdwAXQQLGbf-PmbKB0000)

## Class Diagram Relationships

**Dependency**: One class uses another class, but the other class doesn't use the first class. This is a **weak** relationship.

```plantuml
class PlaneTicketBuyer {
    + buyTicket(Ticket): void
}

class Ticket {
    - price: int
    + rescheule(): void
    - flight: Flight
}

PlaneTicketBuyer ..> Ticket
```

![Class diagram](//www.plantuml.com/plantuml/svg/SoWkIImgAStDuKhEIImkLWZ8ISnB3SbCpaujSIgjJ2rIgEPI009jXQJIIeYm1eJIj58eoyzCuQhbWkg424FLwoeK56KcfrefPEQLG0qeIYrEpaWjpKdLW6g5AapBoKpFAB5IS0FJ8FCmtA2dPmSrdiiXDIy5w5e0)

**Aggregation**: One class has one or more instances of another class, but the other class doesn't know about the first class. This is a **weak** relationship.

```plantuml
class Seat {
    - seatNumber: int
    + isWindowSeat(): boolean
}

class Flight {
    + delay(time: int): void
}

Flight "1" o-- "1..*" Seat : seats <List>
```

![Class diagram](//www.plantuml.com/plantuml/svg/Iyv9B2vM24vDB56evb800bs5OY37hpGtARN8IY4phmGiggsGMHoUcPUINmvIgg5ffP2Kdv-JcfZ7LSl51J73BISpFGDe2bHzIcfEOgL6IMPkAjWKe8wo_CmKa7AeGYL39OLyNLqWhQUdfGHnWXNOyc856v_CuX8x0000)

**Composition**: One class has one or more instances of another class, and the instances of the other class wouldn't exist without the first class. This is a **strong** relationship.

```plantuml
class Gate {
    - gateNumber: int
    + assignFlight(flight: Flight): void
}

class Airport {
    + delay(time: int): void
}

Airport "1" *-- "1..*" Gate : gates <List>
```

![Class diagram](//www.plantuml.com/plantuml/svg/Iyv9B2vMS4yiILMevb800bs5T237hpGtARN8IY4phmGiggq0L9QPdkUMavcUKQAH1gQi521SJIk5ilpC5AvQBYw8SOwPHGNvHIKArL2zAQavYPKQ9PcvgI0JaTN3L2ePAYbewUe2QJqzBIM8Uwp0BYbMiF79B2wn0m00)

**Inheritance**: One class inherits from another class. This is a **strong** relationship.

```plantuml
class Seat {
    - seatNumber: int
    + isWindowSeat(): boolean
}

class FirstClassSeat extends Seat {
    - meal: Meal
    + closeShade(): void
}
```

![Class diagram](//www.plantuml.com/plantuml/svg/Iyv9B2vM24vDB56evb800bs5OY37hpGtARN8IY4phmGiggsGMHoUcPUINmvIgg5ffP2Kdv-JcfZ7LSl51J73BREekCGPn0IRbbfHafgNWcPqRcfYZfM2Bv24cfgSar-S6foHc98AChCiFpE5gnO0)

**Realization**: One class implements an interface. This is a **strong** relationship.

```plantuml
interface Flyable {
    + fly(): void
}

class Plane implements Flyable {
    + fly(): void
}
```

![Class diagram](//www.plantuml.com/plantuml/svg/oymhIIrAIqnELN3BgKnCoabLgEPI009jXRISIWrDAuMo_CmKhbekhkISnE9YXO2SnBnKXSpSWfpKtDIyacBykW00)

**Association**: Two classes have a symmetrical aggregation relationship. This is a **strong** relationship.

```plantuml
class Flight {
    - gate: Gate
    + getGate(): Gate
}

class Gate {
    - flight: Flight
    + getFlight(): Flight
}

Flight "1" -- "1" Gate : > boards at
```

![Class diagram](//www.plantuml.com/plantuml/svg/Iyv9B2vMSCl9JCyeKQZcKW02NONqn99KAmLt80aMq5P8Joq1yJGqeQArN5nWZM0UN5iQs1Ghg6a8hH0-I3E41T8EjL79K4b1LnT4GOooKh1JICfFB4efLaWi0G00)

## Cardinality and Multiplicity

For aggregation, composition, and association relationships, you can specify the **cardinality** and **multiplicity** of the relationship. Cardinality is the number of instances of one class that can be associated with an instance of another class. Multiplicity helps us note the cardinality of a relationship.

Examples:

* `1` means that there can be only one instance of the other class associated with an instance of the first class.
* `1..*` means that there can be one or more instances of the other class associated with an instance of the first class.
* `0..*` means that there can be zero or more instances of the other class associated with an instance of the first class.
