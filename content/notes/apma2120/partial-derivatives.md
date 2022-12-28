---
title: "Partial Derivatives"
weight: 3
---

# Partial Derivatives

## Functions of Several Variables

A **function of two variables** {{< katex >}}f(x, y){{< /katex >}} is a rule that assigns a unique real number to every pair of real numbers {{< katex >}}(x, y){{< /katex >}} in a set {{< katex >}}D{{< /katex >}}. The set {{< katex >}}D{{< /katex >}} is the **domain** of {{< katex >}}f{{< /katex >}} and the set of values that {{< katex >}}f{{< /katex >}} takes on is its **range**. Expressed mathematically, {{< katex >}}\{f(x, y) | (x, y) \in D\}{{< /katex >}}.

We can often use graphs to visualize functions of two variables. If {{< katex >}}f{{< /katex >}} is a function of two variables with domain {{< katex >}}D{{< /katex >}}, then the **graph** of {{< katex >}}f{{< /katex >}} is the set of all points {{< katex >}}(x, y, z){{< /katex >}} in {{< katex >}}\mathbb{R}^3{{< /katex >}} such that {{< katex >}}z = f(x, y){{< /katex >}} and {{< katex >}}(x, y){{< /katex >}} is in {{< katex >}}D{{< /katex >}}.

Another handy visualization technique is a contour map, which draws out various **level curves** of the function -- curves including all {{< katex >}}(x, y){{< /katex >}} where {{< katex >}}f(x, y) = k{{< /katex >}} for some constant k. It's a good idea to evenly space out your level curve values.

A **function of three variables** takes an ordered triple {{< katex >}}(x, y, z) \subset \mathbb{R}^3{{< /katex >}} and returns a unique real number. These are tough to visualize, since you're now working in four dimensions, but you can examine the **level surfaces** of the function, which are like level curves but 3D. They take all {{< katex >}}\{(x, y, z) | f(x, y, z) = k\}{{< /katex >}}.

## Limits and Continuity

Let {{< katex >}}f{{< /katex >}} be a function of two variables whose domain {{< katex >}}D{{< /katex >}} includes points arbitrarily close to {{< katex >}}(a, b){{< /katex >}}. The **limit** of {{< katex >}}f(x, y){{< /katex >}} exists at {{< katex >}}L{{< /katex >}} (i.e. {{< katex >}}\lim_{(x, y) \rightarrow (a, b)} f(x, y) = L{{< /katex >}}) if for every number {{< katex >}}\epsilon > 0{{< /katex >}} there is a corresponding number {{< katex >}}\delta > 0{{< /katex >}} such that if {{< katex >}}(x, y) \in D{{< /katex >}} and {{< katex >}}0 < \sqrt{(x - a)^2 + (y - b)^2} < \delta{{< /katex >}} then {{< katex >}}|f(x, y) - L | < \epsilon{{< /katex >}}.

Limits are interesting. For a limit of a multivariable function to exist, it must exist from all approaches and always be the same regardless of the approach. For example, let's take the function {{< katex >}}\frac{x^2-y^2}{x^2 + y^2}{{< /katex >}} and approach its value at the origin from the positive {{< katex >}}x{{< /katex >}}-axis and the positive {{< katex >}}y{{< /katex >}}-axis.

Approaching from the positive {{< katex >}}x{{< /katex >}}-axis, we have:

{{< katex display >}}\lim_{(x, 0) \rightarrow (0, 0)} \frac{x^2-y^2}{x^2 + y^2} = \frac{x^2}{x^2} = 1{{< /katex >}}

From the positive {{< katex >}}y{{< /katex >}}-axis, we end up with:

{{< katex display >}}\lim_{(0, y) \rightarrow (0, 0)} \frac{x^2-y^2}{x^2 + y^2} = \frac{-y^2}{y^2} = -1{{< /katex >}}

Obviously, those two numbers aren't the same. Therefore, the limit doesn't exist.

Here's your friendly reminder of the properties of limits:

1. The limit of a sum is the sum of the limits.
2. The limit of a difference is the difference of the limits.
3. The limit of a constant times a function is the constant times the limit of the function.
4. The limit of a product is the product of the limits.
5. The limit of a quotient is the quotient of the limits (provided that the limit of the denominator is not zero).

Before moving on, let's generalize the limit definition using vectors: If {{< katex >}}f{{< /katex >}} is defined on a subset {{< katex >}}D{{< /katex >}} of {{< katex >}}\mathbb{R}^{n}{{< /katex >}}, then {{< katex >}}\lim_{\vec{x} \rightarrow \vec{a}} f(\vec{x}) = L{{< /katex >}} means that for every number {{< katex >}}\epsilon > 0{{< /katex >}} there is a corresponding {{< katex >}}\delta > 0{{< /katex >}} such that if {{< katex >}}\vec{x} \in D{{< /katex >}} and {{< katex >}}0 < |\vec{x} - \vec{a}| < \delta{{< /katex >}} then {{< katex >}}|f(\vec{x}) - L| < \epsilon{{< /katex >}}.

From limits, we can progress to the concept of **continuity**, which essentially boils down to:

{{< katex display >}}\lim_{(x, y) \rightarrow (a, b)} f(x, y) = f(a, b){{< /katex >}}

If {{< katex >}}f{{< /katex >}} can achieve this for every {{< katex >}}(a, b){{< /katex >}} on a domain {{< katex >}}D{{< /katex >}}, then {{< katex >}}f{{< /katex >}} is continuous on {{< katex >}}D{{< /katex >}}.

<!-- markdownlint-disable-next-line MD024 -->
## Partial Derivatives

Let's look at the good old derivative. Derivatives don't really work too well when you try changing multiple things at once. What do you do to solve this? Only change one thing at a time! A **partial derivative** is the derivative of a function with respect to only one variable, holding all other variables constant.

When calculating a partial derivative, just treat all variables other than the one you're working with as if they are constant. For example:

{{< katex display >}}\frac{\partial}{\partial x} 3x^2y = y \cdot \frac{d}{d x} 3x^2{{< /katex >}}

Here are some common partial derivatives:

{{< katex display >}}f_x(a, b) = \lim_{h \rightarrow 0} \frac{f(a + h, b) - f(a, b)}{h}{{< /katex >}}
{{< katex display >}}f_y(a, b) = \lim_{h \rightarrow 0} \frac{f(a, b + h) - f(a, b)}{h}{{< /katex >}}

Common notation:

{{< katex display >}}f_x(x, y) = f_x = \frac{\partial f}{\partial x} = \frac{\partial}{\partial x} f(x, y) = \frac{\partial z}{\partial x} = f_1 = D_1f = D_xf{{< /katex >}}
{{< katex display >}}f_y(x, y) = f_y = \frac{\partial f}{\partial y} = \frac{\partial}{\partial y} f(x, y) = \frac{\partial z}{\partial y} = f_2 = D_2f = D_yf{{< /katex >}}

This is pretty straightforward to generalize to three variables:

{{< katex display >}}f_z(a, b, c) = \lim_{h \rightarrow 0} \frac{f(a, b, c + h) - f(a, b, c)}{h}{{< /katex >}}

To take the **second partial derivatives** of a function:

{{< katex display >}}(f_x)_y = f_{xy} = f_{12} = \frac{\partial}{\partial y}(\frac{\partial f}{\partial x}) = \frac{\partial^2f}{\partial y\partial x} = \frac{\partial^2z}{\partial y\partial x}{{< /katex >}}

The order of the variables represents the order of differentiation. In the example above, you differentiate by {{< katex >}}x{{< /katex >}}, then by {{< katex >}}y{{< /katex >}}.

**Clairaut's Theorem** says that if {{< katex >}}f{{< /katex >}} is defined on a disk {{< katex >}}D{{< /katex >}} and both {{< katex >}}f_{xy}{{< /katex >}} and {{< katex >}}f_{yx}{{< /katex >}} are continuous on {{< katex >}}D{{< /katex >}}, then {{< katex >}}f_{xy}(a, b) = f_{yx}(a, b){{< /katex >}}.

## Tangent Planes and Linear Approximations

You know how, in single-variable calculus, you have a tangent line that just barely touches your equation at a specific point? Yeah, multivariable calculus has the same thing for surfaces, except it's a whole **tangent plane**. This next formula is arguably the most important formula in all of multivariable calculus:

{{< katex display >}}z - z_0 = f_x(x - x_0) + f_y(y - y_0) + f_z(z - z_0){{< /katex >}}

We can create a function that graphs this tangent plane:

{{< katex display >}}L(x, y) = f(a, b) + f_x(a, b)(x - a) + f_y(a, b)(y - b){{< /katex >}}

This is known as the **linearization** of {{< katex >}}f{{< /katex >}} at {{< katex >}}(a, b){{< /katex >}}. From there, we can calculate a **linear approximation** of {{< katex >}}f{{< /katex >}} at any {{< katex >}}(x, y){{< /katex >}} by plugging its domain into the linearization.

The difference between the linearization and the reference value that the tangent plane is based off of is known as the **differential**:

{{< katex display >}}dz = f_x(x, y)dx + f_y(x, y)dy = \frac{\partial z}{\partial x}dx + \frac{\partial z}{\partial y}dy{{< /katex >}}

All of this can be expanded easily to more variables by adding additional similar terms.

## The Chain Rule

Let's look at the Chain Rule as we currently know it:

{{< katex display >}}\frac{dy}{dt} = \frac{dy}{dx} \frac{dx}{dt}{{< /katex >}}

where {{< katex >}}y = f(x){{< /katex >}} and {{< katex >}}x = g(t){{< /katex >}}.

If we have {{< katex >}}z = f(x, y){{< /katex >}}, {{< katex >}}x = g(t){{< /katex >}}, and {{< katex >}}y = h(t){{< /katex >}}, then:

{{< katex display >}}\frac{dz}{dt} = \frac{\partial z}{\partial x} \frac{dx}{dt} + \frac{\partial z}{\partial y} \frac{dy}{dt}{{< /katex >}}

What if the variables in {{< katex >}}z{{< /katex >}} are themselves determined by multivariable functions? If we have {{< katex >}}z = f(x, y){{< /katex >}}, {{< katex >}}x = g(s, t){{< /katex >}}, and {{< katex >}}y = h(s, t){{< /katex >}}, then:

{{< katex display >}}\frac{dz}{ds} = \frac{\partial z}{\partial x} \frac{\partial x}{\partial s} + \frac{\partial z}{\partial y} \frac{\partial y}{\partial s}{{< /katex >}}

{{< katex display >}}\frac{dz}{dt} = \frac{\partial z}{\partial x} \frac{\partial x}{\partial t} + \frac{\partial z}{\partial y} \frac{\partial y}{\partial t}{{< /katex >}}

We can use the Chain Rule to help us implicitly differentiate functions. Let's say {{< katex >}}F(x, y) = 0{{< /katex >}} and {{< katex >}}y = f(x){{< /katex >}}. If we want to find {{< katex >}}\frac{dy}{dx}{{< /katex >}}:

{{< katex display >}}\frac{\partial F}{\partial x} \frac{dx}{dx} + \frac{\partial F}{\partial y} \frac{dy}{dx} = \frac{\partial F}{\partial x} + \frac{\partial F}{\partial y} \frac{dy}{dx} = 0{{< /katex >}}
{{< katex display >}}\frac{\partial F}{\partial y} \frac{dy}{dx} = -\frac{\partial F}{\partial x}{{< /katex >}}
{{< katex display >}}\frac{dy}{dx} = -\frac{\frac{\partial F}{\partial x}}{\frac{\partial F}{\partial y}} = -\frac{F_x}{F_y}{{< /katex >}}

## Directional Derivatives and the Gradient Vector

We know how to take a partial derivative with respect to a variable such as {{< katex >}}x{{< /katex >}} or {{< katex >}}y{{< /katex >}}, but what about if we want to find the derivative in a specific direction? The **directional derivative** of {{< katex >}}f{{< /katex >}} at {{< katex >}}(x_0, y_0){{< /katex >}} in the direction of a unit vector {{< katex >}}\vec{u} = \langle a, b \rangle{{< /katex >}} is:

{{< katex display >}}D_{\vec{u}}f(x_0, y_0) = \lim_{h\rightarrow 0}\frac{f(x_0 + ha, y_0 + hb) - f(x_0, y_0)}{h}{{< /katex >}}
{{< katex display >}}D_{\vec{u}}f(x_0, y_0) = f_x(x_0, y_0)a + f_y(x_0, y_0)b{{< /katex >}}

The partial derivatives of {{< katex >}}f{{< /katex >}} with respect to {{< katex >}}x{{< /katex >}} and {{< katex >}}y{{< /katex >}} are just special cases of the directional derivative where {{< katex >}}\vec{u} = \hat{\imath}{{< /katex >}} and {{< katex >}}\vec{u} = \hat{\jmath}{{< /katex >}}, respectively.

There's a very useful way to clean up all this notation. The **gradient vector** of a scalar function is defined as follows:

{{< katex display >}}\nabla f = \langle f_x, f_y, f_z \rangle{{< /katex >}}

Going back to the directional derivative formula, we can see that it's just an expanded form of {{< katex >}}\nabla f \cdot \vec{u}{{< /katex >}}. Similarly, if we define {{< katex >}}d\vec{r} = \langle x - x_0, y - y_0, z - z_0 \rangle{{< /katex >}}, then the differential formula becomes {{< katex >}}df = \nabla f \cdot d\vec{r}{{< /katex >}}. The gradient vector is always perpendicular to the level curve or level surface of a function.

Going back to the definition of a dot product, we can determine that {{< katex >}}\nabla f \cdot \vec{u} = |\nabla f| |\vec{u}| \cos\theta = |\nabla f|\cos\theta{{< /katex >}}. When {{< katex >}}\theta = 0{{< /katex >}}, then the two vectors are pointing in the same direction and {{< katex >}}D_{\vec{u}}f = |\nabla f|{{< /katex >}}. This is the maximum possible value of {{< katex >}}D_{\vec{u}}f{{< /katex >}}. Conversely, when the vectors point in opposite directions, {{< katex >}}D_{\vec{u}}f = -|\nabla f|{{< /katex >}}.

## Minimum and Maximum Values

A function of two variables has a **local maximum** at {{< katex >}}(a, b){{< /katex >}} if {{< katex >}}f(x, y) \leq f(a, b){{< /katex >}} when {{< katex >}}(x, y){{< /katex  >}} is near {{< katex >}}(a, b){{< /katex >}}. It has a **local minimum** at {{< katex >}}(a, b){{< /katex >}} if {{< katex >}}f(x, y) \geq f(a, b){{< /katex >}} when {{< katex >}}(x, y){{< /katex  >}} is near {{< katex >}}(a, b){{< /katex >}}.

If a function {{< katex >}}f{{< /katex >}} has a local maximum or minimum at {{< katex >}}(a, b){{< /katex >}} and the first-order partial derivatives of {{< katex >}}f{{< /katex >}} exist there, then {{< katex >}}f_x = f_y = 0{{< /katex >}} at that point.

A point {{< katex >}}(a, b){{< /katex >}} is a **critical point** of {{< katex >}}f{{< /katex >}} if {{< katex >}}f_x = f_y = 0{{< /katex >}} at that point or one of the two partial derivatives does not exist there. Like single-variable calculus, not all critical points are necessarily maxima or minima. A point that is neither is called a **saddle point**, since it's often a minimum in one dimension and a maximum in the other. The Second Derivatives Test to determine maxima and minima is as follows:

{{< katex display >}}H(a, b) = \begin{bmatrix}
f_{xx} & f_{xy}\\
f_{yx} & f_{yy}
\end{bmatrix}{{< /katex >}}
{{< katex display >}}D(a, b) = |H(a, b)| = f_{xx} \cdot f_{yy} - (f_{xy})^2{{< /katex >}}
{{< katex display >}}T(a, b) = f_{xx} + f_{yy}{{< /katex >}}

* If {{< katex >}}D < 0{{< /katex >}}, you have a saddle point.
* If {{< katex >}}D > 0{{< /katex >}} and {{< katex >}}T > 0{{< /katex >}}, you have a local minimum.
* If {{< katex >}}D > 0{{< /katex >}} and {{< katex >}}T < 0{{< /katex >}}, you have a local maximum.
* If you have none of these, you probably did something wrong.

The **absolute minimum** and **absolute maximum** of a function {{< katex >}}f{{< /katex >}} over a domain {{< katex >}}D{{< /katex >}} can be found by performing the Second Derivatives Test and checking over the boundary of {{< katex >}}D{{< /katex >}} as well. Note that {{< katex >}}D{{< /katex >}} must be **bounded** -- a finite region -- and **closed** -- inclusive of its boundary.

## Lagrange Multipliers

There's a handy trick for finding the maximum or minimum values of a function subject to a constraint. We want the gradients of both the function and the constraint to point in the same direction. For a function {{< katex >}}f(x, y, z){{< /katex >}} and a constraint {{< katex >}}g(x, y, z){{< /katex >}}:

{{< katex display >}}\nabla f(x, y, z) = \lambda \nabla g(x, y, z){{< /katex >}}

where {{< katex >}}\lambda{{< /katex >}} is what's known as a **Lagrange multiplier**. From here, we solve for potential values of {{< katex >}}x{{< /katex >}} or {{< katex >}}y{{< /katex >}}, then plug it all back in and find the extremes. This technique helps us limit our search space exclusively to values within the constraint.

What if our constraint is actually defined as the intersection of surfaces {{< katex >}}g{{< /katex >}} and {{< katex >}}h{{< /katex >}}? In this scenario, we want the gradient {{< katex >}}\nabla f{{< /katex >}} to be in the plane determined by {{< katex >}}\nabla g{{< /katex >}} and {{< katex >}}\nabla h{{< /katex >}}. Therefore:

{{< katex display >}}\nabla f = \lambda \nabla g + \mu \nabla h{{< /katex >}}

where {{< katex >}}\lambda{{< /katex >}} and {{< katex >}}\mu{{< /katex >}} are both Lagrange multipliers.
