---
title: "Vectors and the Geometry of Space"
weight: 1
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
---

# Vectors and the Geometry of Space

## Three-Dimensional Coordinate Systems

The most commonly used 3D coordinate system is the **Euclidean 3-space** {{< katex >}}\mathbb{R}^3{{< /katex >}}. {{< katex >}}\mathbb{R}^3{{< /katex >}} is defined as the set of all points {{< katex >}}(x, y, z){{< /katex >}} where {{< katex >}}x{{< /katex >}}, {{< katex >}}y{{< /katex >}}, and {{< katex >}}z{{< /katex >}} are all real numbers.

## Vectors

A **vector** is composed of a direction and a magnitude. Each vector has an **initial point**, from where the vector the vector originates, and a **terminal point**, where the vector ends. If a vector has initial point {{< katex >}}P{{< /katex >}} and terminal point {{< katex >}}Q{{< /katex >}}, it is denoted as {{< katex >}}\vec{PQ}{{< /katex >}}.

You can add and subtract vectors by adding and subtracting their **components**, which break down the vector into pieces heading along each axis of {{< katex >}}\mathbb{R}^3{{< /katex >}}. Vector addition is commutative and associative.

For a vector {{< katex >}}\vec{v} = \langle v_x, x_y, v_z \rangle{{< /katex >}}, the magnitude of {{< katex >}}\vec{v}{{< /katex >}} is found by {{< katex >}}|\vec{v}| = \sqrt{v_x^2 + v_y^2 + v_z^2}{{< /katex >}}. This is an application of the Pythagorean Theorem.

There are three **standard basis vectors**:

* {{< katex >}}\hat{\imath} = \langle 1, 0, 0 \rangle{{< /katex >}}
* {{< katex >}}\hat{\jmath} = \langle 0, 1, 0 \rangle{{< /katex >}}
* {{< katex >}}\hat{k} = \langle 0, 0, 1 \rangle{{< /katex >}}

The standard basis vectors are examples of **unit vectors**, which are vectors with magnitude 1.

Some important relationships between two vectors:

* **Equivalent vectors:** Two vectors are **equivalent** if all their components are the same, e.g. {{< katex >}}\langle 1, 1, 1 \rangle{{< /katex >}} and {{< katex >}}\langle 1, 1, 1 \rangle{{< /katex >}}.
* **Parallel vectors:** Two vectors are **parallel** if the ratios between corresponding components are the same, e.g. {{< katex >}}\langle 1, 1, 1 \rangle{{< /katex >}} and {{< katex >}}\langle 2, 2, 2 \rangle{{< /katex >}} (where the ratio of any component in the second vector to the corresponding component in the first vector is equal to 2). Parallel vectors may have different magnitudes but always have the same or opposite directions. All equivalent vectors are parallel.

## The Dot Product

The **dot product**, or **scalar product**, is the sum of the products of the corresponding components of two vectors. If {{< katex >}}\vec{a} = \langle a_x, a_y, a_z \rangle{{< /katex >}} and {{< katex >}}\vec{b} = \langle b_x, b_y, b_z \rangle{{< /katex >}}, then {{< katex >}}\vec{a} \cdot \vec{b} = a_xb_x + a_yb_y + a_zb_z{{< /katex >}}. Note that the dot product is a scalar, not a vector (hence the name scalar product).

The dot product {{< katex >}}\vec{a} \cdot \vec{b}{{< /katex >}} is also equal to {{< katex >}}|\vec{a}||\vec{b}|\cos\theta{{< /katex >}}, where {{< katex >}}\theta{{< /katex >}} is the angle between the two vectors. This allows us to figure out the sign of the dot product by examining the value of {{< katex >}}\theta{{< /katex >}}:

* {{< katex >}}\theta < \frac{\pi}{2}{{< /katex >}}: {{< katex >}}\cos\theta > 0{{< /katex >}}, so {{< katex >}}\vec{a} \cdot \vec{b} > 0{{< /katex >}}
* {{< katex >}}\theta = \frac{\pi}{2}{{< /katex >}}: {{< katex >}}\cos\theta = 0{{< /katex >}}, so {{< katex >}}\vec{a} \cdot \vec{b} = 0{{< /katex >}}
* {{< katex >}}\theta > \frac{\pi}{2}{{< /katex >}}: {{< katex >}}\cos\theta < 0{{< /katex >}}, so {{< katex >}}\vec{a} \cdot \vec{b} < 0{{< /katex >}}

This means that the maximum dot product of two vectors is found when they have the same direction, while the minimum dot product occurs when the vectors are pointing in opposite directions.

Properties of the dot product:

* The dot product of a vector with itself is the square of that vector's magnitude: {{< katex >}}\vec{a} \cdot \vec{a} = |\vec{a}|^2{{< /katex >}}
* The dot product is commutative: {{< katex >}}\vec{a} \cdot \vec{b} = \vec{b} \cdot \vec{a}{{< /katex >}}
* The dot product is distributive: {{< katex >}}\vec{a} \cdot (\vec{b} + \vec{c}) = \vec{a} \cdot \vec{b} + \vec{a} \cdot \vec{c}{{< /katex >}}

Two vectors are **orthogonal** if their dot product equals zero. The zero vector {{< katex >}}\vec{0} = \langle 0, 0, 0 \rangle{{< /katex >}} is orthogonal to all vectors.

A vector makes three **direction angles** with the {{< katex >}}\mathbb{R}^3{{< /katex >}} axes:

* {{< katex >}}\alpha{{< /katex >}} with the {{< katex >}}x{{< /katex >}}-axis, where {{< katex >}}\alpha = \arccos\frac{\vec{a} \cdot \hat{\imath}}{|\vec{a}|}{{< /katex >}}
* {{< katex >}}\beta{{< /katex >}} with the {{< katex >}}y{{< /katex >}}-axis, where {{< katex >}}\beta = \arccos\frac{\vec{a} \cdot \hat{\jmath}}{|\vec{a}|}{{< /katex >}}
* {{< katex >}}\gamma{{< /katex >}} with the {{< katex >}}z{{< /katex >}}-axis, where {{< katex >}}\gamma = \arccos\frac{\vec{a} \cdot \hat{k}}{|\vec{a}|}{{< /katex >}}

These three angles are related to each other by {{< katex >}}\cos^2\alpha + \cos^2\beta + \cos^2\gamma = 1{{< /katex >}}.

The dot product can also be used to find **projections** of one vector onto another, which output the "component" of one vector that is parallel to the other:

* **Scalar projection:** {{< katex >}}\text{comp}_{\vec{a}}{\vec{b}} = \frac{\vec{a} \cdot {\vec{b}}}{|\vec{a}|} = |\vec{b}|\cos\theta{{< /katex >}}
* **Vector projection:** {{< katex >}}\text{proj}_{\vec{a}}{\vec{b}} = \frac{\vec{a} \cdot {\vec{b}}}{|\vec{a}|}\frac{\vec{a}}{|\vec{a}|} = \frac{\vec{a} \cdot {\vec{b}}}{|\vec{a}|^2}\vec{a} = \frac{|\vec{b}| \cos\theta}{|\vec{a}|}\vec{a}{{< /katex >}}

## The Cross Product

The **cross product**, or **vector product**, is the other possible product between two vectors. If {{< katex >}}\vec{a} = \langle a_x, a_y, a_z \rangle{{< /katex >}} and {{< katex >}}\vec{b} = \langle b_x, b_y, b_z \rangle{{< /katex >}}, then {{< katex >}}\vec{a} \times \vec{b} = \begin{vmatrix}\hat{\imath} & \hat{\jmath} & \hat{k}\\a_x & a_y & a_z\\b_x & b_y & b_z\end{vmatrix} = (a_yb_z - a_zb_y)\hat{\imath} - (a_xb_z - a_zb_x)\hat{\jmath} + (a_xb_y - a_yb_x)\hat{k}{{< /katex >}}. Note that the cross product is a vector, not a scalar (hence the name vector product). The right-hand rule can be used to determine the direction of the cross product of two vectors. The cross product of two vectors is always orthogonal to those two vectors.

The magnitude of the cross product {{< katex >}}|\vec{a} \times \vec{b}|{{< /katex >}} is also equal to {{< katex >}}|\vec{a}||\vec{b}|\sin\theta{{< /katex >}}, where {{< katex >}}\theta{{< /katex >}} is the angle between the two vectors. Often, these two vectors may form part of a parallelogram, whose area can be calculated as {{< katex >}}A = |\vec{a} \times \vec{b}|{{< /katex >}}.

The **triple product** of three vectors, {{< katex >}}\vec{a}{{< /katex >}}, {{< katex >}}\vec{b}{{< /katex >}}, and {{< katex >}}\vec{c}{{< /katex >}} is equal to {{< katex >}}\begin{vmatrix}a_x & a_y & a_z\\b_x & b_y & b_z\\c_x & c_y & c_z\end{vmatrix} = \vec{a} \cdot (\vec{b} \times \vec{c}) = |\vec{a}||\vec{b}||\vec{c}||\sin\theta||\cos\phi|{{< /katex >}}, where {{< katex >}}\theta{{< /katex >}} is the angle between {{< katex >}}\vec{b}{{< /katex >}} and {{< katex >}}\vec{c}{{< /katex >}} and {{< katex >}}\phi{{< /katex >}} is the angle between {{< katex >}}\vec{a}{{< /katex >}} and {{< katex >}}\vec{b} \times \vec{c}{{< /katex >}}. A three-dimensional form of the parallelogram, known as a **parallelpiped**, has its volume equal to the triple product {{< katex >}}V = \vec{a} \cdot (\vec{b} \times \vec{c}){{< /katex >}}. If a parallelpiped's volume is zero, that means that all three vectors are coplanar.

Properties of the cross product:

* The cross product is not commutative, as switching the order switches the sign of the product: {{< katex >}}\vec{a} \times \vec{b} = -(\vec{b} \times \vec{a}){{< /katex >}}
* The cross product is generally not associative: {{< katex >}}\vec{a} \times (\vec{b} \times \vec{c}) \ne (\vec{a} \times \vec{b}) \times \vec{c}{{< /katex >}}
* The triple product equation is associative: {{< katex >}}\vec{a} \cdot (\vec{b} \times \vec{c}) = (\vec{a} \times \vec{b}) \cdot \vec{c}{{< /katex >}}
* The cross product is distributive: {{< katex >}}\vec{a} \times (\vec{b} \times \vec{c}) = \vec{a} \times \vec{b} + \vec{a} \times \vec{c}{{< /katex >}}

Two vectors are **parallel** if their cross product equals zero. The zero vector {{< katex >}}\vec{0} = \langle 0, 0, 0 \rangle{{< /katex >}} is parallel to all vectors.

## Equations of Lines and Planes

To create a line, all you need is a point and a direction (usually represented by a vector). (You can also take two points and find the vector going from one to the other.) The magnitude of the vector doesn't matter because the line, by definition, has an infinite length anyway. There are a few different ways to write the equation of a line, but they all share the usage of a **parameter** (e.g. {{< katex >}}t{{< /katex >}}), a variable that effectively represents how far away from the initial point some location on the line is.

Line equations:

* Vector equation: {{< katex >}}\vec{r} = \vec{r_0} + t\vec{v}{{< /katex >}}
* Parametric equation: {{< katex >}}x = x_0 + tv_x, y = y_0 + tv_y, z = z_0 + tv_z{{< /katex >}}
* Symmetric equation: {{< katex >}}\frac{x-x_0}{v_x} = \frac{y-y_0}{v_y} = \frac{z-z_0}{v_z}{{< /katex >}}

To create a plane, you need a point and two vectors, or three points. (Even a point and a vector works here, under certain circumstances.) A plane is defined by a point and its normal vector. If you have two vectors that are on the plane, you can find the plane's normal vector by taking the cross product of those two vectors. From there, just take the normal vector's dot product with one of the plane vectors and set that to zero since the two vectors should be orthogonal.

Plane equations:

* Vector equation: {{< katex >}}\vec{n} \cdot (\vec{r} - \vec{r_0}) = 0{{< /katex >}}
* Scalar equation: {{< katex >}}n_x(x - x_0) + n_y(y - y_0) + n_z(z - z_0) = 0{{< /katex >}}
* Linear equation: {{< katex >}}n_xx + n_yy + n_zz - (n_xx_0 + n_yy_0 + n_zz_0) = 0{{< /katex >}}

As a result of the plane equations, if two points are on a plane, their position vectors will have the same dot product with the plane's normal vector.

The shortest distance to a plane is on a path that is perpendicular to the plane, i.e. parallel to the plane's normal vector. Therefore, finding the distance from a point to a plane is as simple as picking another point on the plane, finding the vector between both points, and performing a scalar projection of that vector onto the plane's normal vector. To find the distance between two parallel planes, perform the same operation by picking one point on each plane and either plane's normal vector (which should be parallel anyway). (For planes that are not parallel, the distance is zero since they will intersect at some point.)

## Cylinders and Quadric Surfaces

A **cylinder** is a surface consisting of all lines that are parallel to a given line and pass through a given plane curve. (Basically, if one of {{< katex >}}x{{< /katex >}}, {{< katex >}}y{{< /katex >}}, or {{< katex >}}z{{< /katex >}} are missing from the equation, you probably have a cylinder.) This isn't just the circular object you know; you can have **parabolic cylinders**, in the shape of parabolas, and **hyperbolic cylinders**, in the shape of, well, hyperbolas.

A **quadric surface** is the graph of a second-degree equation in {{< katex >}}\mathbb{R}^3{{< /katex >}}. Quadric surfaces generally take the form {{< katex >}}Ax^2 + By^2 + Cz^2 + Dxy + Exz + Fyz + Gz + Hy + Iz + J = 0{{< /katex >}}, and via translation and/or rotation can be brought to two forms: {{< katex >}}Ax^2 + By^2 + Cz^2 + J = 0{{< /katex >}} or {{< katex >}}Ax^2 + By^2 + Iz = 0{{< /katex >}}.

To figure out the type of surface you're working with, you can just set one variable to 0 and view the **trace** - the 2D projection of the figure.

Quadric surface equations:

* **Ellipsoid:** {{< katex >}}\frac{(x-x_0)^2}{a^2} + \frac{(y-y_0)^2}{b^2} + \frac{(z-z_0)^2}{c^2} = 1{{< /katex >}}
* **Elliptic paraboloid:** {{< katex >}}\frac{(x-x_0)^2}{a^2} + \frac{(y-y_0)^2}{b^2} - \frac{(z-z_0)}{c} = 1{{< /katex >}}
* **Hyperbolic paraboloid:** {{< katex >}}\frac{(x-x_0)^2}{a^2} - \frac{(y-y_0)^2}{b^2} - \frac{(z-z_0)}{c} = 1{{< /katex >}}
* **Hyperboloid of one sheet:** {{< katex >}}\frac{(x-x_0)^2}{a^2} + \frac{(y-y_0)^2}{b^2} - \frac{(z-z_0)^2}{c^2} = 1{{< /katex >}}
* **Cone:** {{< katex >}}\frac{(x-x_0)^2}{a^2} + \frac{(y-y_0)^2}{b^2} - \frac{(z-z_0)^2}{c^2} = 0{{< /katex >}}
* **Hyperboloid of two sheets:** {{< katex >}}\frac{(x-x_0)^2}{a^2} + \frac{(y-y_0)^2}{b^2} - \frac{(z-z_0)^2}{c^2} = -1{{< /katex >}}
