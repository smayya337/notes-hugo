---
title: "Vector Functions"
weight: 2
---

# Vector Functions

## Vector Functions and Space Curves

We like to think of functions as operations that take in one or more numbers and output a number. What if the output was a vector instead? This is called a **vector function**.

Let's say we have a vector function {{< katex >}}\vec{r}(t) = \langle f(t), g(t), h(t) \rangle{{< /katex >}}. In this case, our {{< katex >}}x{{< /katex >}}-, {{< katex >}}y{{< /katex >}}-, and {{< katex >}}z{{< /katex >}}-coordinates are all defined in terms of {{< katex >}}t{{< /katex >}}. What's neat about this is that the limits of the vector function are pretty easy to figure out:

{{< katex display >}}\lim_{t\rightarrow a} \vec{r}(t) = \langle \lim_{t\rightarrow a}f(t), \lim_{t\rightarrow a}g(t), \lim_{t\rightarrow a}h(t) \rangle{{< /katex >}}

This works as long as the limits of the individual components exist.

If we have an interval {{< katex >}}I{{< /katex >}} on which the vector function is defined, we can define the **space curve** {{< katex >}}\vec{r}{{< /katex >}} as the set of points {{< katex >}}\vec{r}(t){{< /katex >}} for all {{< katex >}}t \in I{{< /katex >}}. For example, a **helix** is a space curve where {{< katex >}}\vec{r}(t) = \langle \cos t, \sin t, t \rangle{{< /katex >}} or some variation thereof over an interval of {{< katex >}}t{{< /katex >}} such as {{< katex >}}[0, 2\pi]{{< /katex >}}.

## Derivatives and Integrals of Vector Functions

Let's go back to the derivative of a scalar function:

{{< katex display >}}\frac{d}{dx}f(x) = \lim_{\Delta t \rightarrow 0} \frac{f(x + \Delta t) - f(x)}{\Delta t}{{< /katex >}}

If we have a vector function, it figures that the derivative may look something like this:

{{< katex display >}}\frac{d}{dt}\vec{r}(t) = \lim_{\Delta t \rightarrow 0} \frac{\vec{r}(t + \Delta t) - \vec{r}(t)}{\Delta t}{{< /katex >}}

We know that the limit of a vector function can be found by taking the limits of all its components:

{{< katex display >}}\lim_{\Delta t \rightarrow 0} \frac{\vec{r}(t + \Delta t) - \vec{r}(t)}{\Delta t} = \langle \lim_{\Delta t \rightarrow 0} \frac{f(t + \Delta t) - f(t)}{\Delta t}, \lim_{\Delta t \rightarrow 0} \frac{g(t + \Delta t) - g(t)}{\Delta t}, \lim_{\Delta t \rightarrow 0} \frac{h(t + \Delta t) - h(t)}{\Delta t} \rangle{{< /katex >}}

Wait, that's just the derivative of each component! Therefore, we can write the derivative of a vector function as:

{{< katex display >}}\frac{d}{dt}\vec{r}(t) = \langle \frac{d}{dt}f(t), \frac{d}{dt}g(t), \frac{d}{dt}h(t) \rangle{{< /katex >}}

Keeping in mind all the properties of the derivatives of scalar functions, this means:

{{< katex display >}}\frac{d}{dt}[\vec{u}(t) + \vec{v}(t)] = \vec{u}'(t) + \vec{v}'(t){{< /katex >}}
{{< katex display >}}\frac{d}{dt}c\vec{u}(t) = c\vec{u}'(t){{< /katex >}}
{{< katex display >}}\frac{d}{dt}f(t)\vec{u}(t) = f(t)\vec{u}'(t) + f'(t)\vec{u}(t){{< /katex >}}
{{< katex display >}}\frac{d}{dt}[\vec{u}(t) \cdot \vec{v}(t)] = \vec{u}'(t) \cdot \vec{v}(t) + \vec{u}(t) \cdot \vec{v}'(t){{< /katex >}}
{{< katex display >}}\frac{d}{dt}[\vec{u}(t) \times \vec{v}(t)] = \vec{u}'(t) \times \vec{v}(t) + \vec{u}(t) \times \vec{v}'(t){{< /katex >}}
{{< katex display >}}\frac{d}{dt}\vec{u}(f(t)) = f'(t)\vec{u}'(f(t)){{< /katex >}}

Here's an interesting case: imagine we have some vector function {{< katex >}}\vec{r}(t){{< /katex >}} such that its magnitude is constant, i.e. {{< katex >}}|\vec{r}(t) = c{{< /katex >}}. If we took the dot product of {{< katex >}}\vec{r}(t){{< /katex >}} with itself, we'd get something like this:

{{< katex display >}}\vec{r}(t) \cdot \vec{r}(t) = |\vec{r}(t)|^2 = c^2{{< /katex >}}

Now, let's take the derivative of both sides. Using the Product Rule, we end up with:

{{< katex display >}}\frac{d}{dt} \vec{r}(t) \cdot \vec{r}(t) = \vec{r}'(t) \cdot \vec{r}(t) + \vec{r}(t) \cdot \vec{r}'(t) = 2(\vec{r}(t) \cdot \vec{r}'(t)){{< /katex >}}
{{< katex display >}}\frac{d}{dt} c^2 = 0{{< /katex >}}
{{< katex display >}}0 = 2(\vec{r}(t) \cdot \vec{r}'(t)){{< /katex >}}
{{< katex display >}}0 = \vec{r}(t) \cdot \vec{r}'(t){{< /katex >}}

Therefore, any vector function with a constant magnitude will always be orthogonal to its derivative. This comes in handy for circular motion and similar cases.

One additional vector that's important to know is the **unit tangent vector**, which is a unit vector pointing in the same direction as the derivative of a vector function:

{{< katex display >}}\vec{T}(t) = \frac{\vec{r}'(t)}{|\vec{r}'(t)|}{{< /katex >}}

Now, let's look at integrals. If a derivative can be found by taking the derivatives of the components, it stands to reason that something similar can be done with integrals. And it can!

{{< katex display >}}\int_{a}^{b} \vec{r}(t)dt = \langle \int_{a}^{b} f(t)dt, \int_{a}^{b} g(t)dt, \int_{a}^{b} h(t)dt \rangle{{< /katex >}}

## Arc Length and Curvature

Now that we have a space curve, how do we determine its length? Well, let's keep in mind that we can break up a space curve into infinitesimally tiny straight line segments that point a specific direction. If we just measure the length of each tiny segment and add everything up, we have our length!

Huh, those segments sound kind of like the tangent of the curve at each point. Maybe you could just add up all the magnitudes of the tangents over a region. The **arclength** of a space curve is:

{{< katex display >}}L = \int_{a}^{b} |\vec{r}'(t)| dt = \int_{a}^{b} \sqrt{(\frac{dx}{dt})^2 + (\frac{dy}{dt})^2 + (\frac{dz}{dt})^2} dt{{< /katex >}}

We can also turn this into an **arclength function**, determining the arclength up to a certain point:

{{< katex display >}}s(t) = \int_{a}^{t} |\vec{r}'(u)| du = \int_{a}^{t} \sqrt{(\frac{dx}{du})^2 + (\frac{dy}{du})^2 + (\frac{dz}{du})^2} du{{< /katex >}}

Since we know {{< katex >}}\frac{d}{dt}s(t) = |\vec{r}'(t)|{{< /katex >}}, we can potentially reparametrize {{< katex >}}\vec{r}(t){{< /katex >}} in terms of arclength by solving for {{< katex >}}t{{< /katex >}} in terms of arclength {{< katex >}}s{{< /katex >}}.

**Curvature** is a measure of how quickly a curve changes at a given point, calculated by:

{{< katex display >}}\kappa = |\frac{d\vec{T}}{ds}|{{< /katex >}}

This is easier to use in terms of {{< katex >}}t{{< /katex >}}. Let's use the Chain Rule to rearrange this equation:

{{< katex display >}}\frac{d\vec{T}}{dt} = \frac{d\vec{T}}{ds} \frac{ds}{dt} \rightarrow \kappa = |\frac{(\frac{d\vec{T}}{dt})}{(\frac{ds}{dt})}|{{< /katex >}}

We know that {{< katex >}}\frac{ds}{dt} = |\vec{r}'(t)|{{< /katex >}}, so {{< katex >}}\kappa = \frac{|\vec{T}'(t)|}{|\vec{r}'(t)|}{{< /katex >}}. For a circle, where the radius is constant, we end up with the special case where {{< katex >}}\kappa = \frac{1}{r}{{< /katex >}}.

Another way of writing the curvature only in terms of {{< katex >}}\vec{r}(t){{< /katex >}} is:

{{< katex display >}}\kappa = \frac{|\vec{r}'(t) \times \vec{r}''(t)|}{|\vec{r}'(t)|^3}{{< /katex >}}

Alright, time for tangent-ception. What vector is tangent to the unit tangent? Why, the **unit normal vector**, of course!

{{< katex display >}}\vec{N}(t) = \frac{\vec{T}'(t)}{|\vec{T}'(t)|}{{< /katex >}}

What about a vector that's orthogonal to the unit tangent and the unit normal? That's just the **unit binormal vector**:

{{< katex display >}}\vec{B}(t) = \vec{T}(t) \times \vec{N}(t){{< /katex >}}

The **torsion** of a curve is:

{{< katex display >}}\tau(t) = -\frac{d\vec{B}}{ds} \cdot \vec{N}{{< /katex >}}

In terms of {{< katex >}}t{{< /katex >}}:

{{< katex display >}}\tau(t) = -\frac{\vec{B}'(t) \cdot \vec{N}(t)}{|\vec{r}'(t)|}{{< /katex >}}

In terms of {{< katex >}}\vec{r}(t){{< /katex >}}:

{{< katex display >}}\tau(t) = -\frac{[\vec{r}'(t) \times \vec{r}''(t)] \cdot \vec{r}'''(t)}{|\vec{r}'(t) \times \vec{r}''(t)|^2}{{< /katex >}}

## Motion in Space: Velocity and Acceleration

All this vector stuff comes in handy when we start working with physics.

**Velocity** is the rate of change of the position of an object over time. If the position is a vector function {{< katex >}}\vec{r}(t){{< /katex >}}, then velocity is {{< katex >}}\vec{v}(t) = \frac{d}{dt}\vec{r}(t){{< /katex >}}.

The **speed** of the particle is the magnitude of the velocity {{< katex >}}|\vec{v}(t)| = \frac{ds}{dt}{{< /katex >}}.

The **acceleration** of the particle is the derivative of the velocity, {{< katex >}}\vec{a}(t) = \frac{d}{dt}\vec{v}(t){{< /katex >}}.

We can often recover the velocity when the acceleration and starting velocity are known:

{{< katex display >}}\vec{v}(t) = \vec{v}(t_0) + \int_{t_0}^{t} \vec{a}(t) dt{{< /katex >}}

Likewise, we can often recover the position when the velocity and starting position are known:

{{< katex display >}}\vec{r}(t) = \vec{r}(t_0) + \int_{t_0}^{t} \vec{v}(t) dt{{< /katex >}}

When dealing with **projectile motion** such as firing something out of a cannon, we have an initial position {{< katex >}}\vec{r}(t_0){{< /katex >}}, velocity {{< katex >}}\vec{v}(t_0){{< /katex >}}, and angle {{< katex >}}\alpha{{< /katex >}}. With this information, we can determine that:

{{< katex display >}}x = |\vec{v}(t_0)|\cos(\alpha) t{{< /katex >}}
{{< katex display >}}x = |\vec{v}(t_0)|\sin(\alpha) t - \frac{1}{2}gt^2{{< /katex >}}

where {{< katex >}}g{{< /katex >}} is the gravitational acceleration ({{< katex >}}9.81 \frac{\text{m}}{\text{s}^2}{{< /katex >}}).

When working with the acceleration vector, it's often helpful to break it up into **tangential** and **normal** components.

Given that speed {{< katex >}}v = |\vec{v}(t)|{{< /katex >}}:

{{< katex display >}}\vec{T} = \frac{\vec{v}(t)}{|\vec{v}(t)|} = \frac{\vec{v}(t)}{v}{{< /katex >}}
{{< katex display >}}\vec{v}(t) = v\vec{T}{{< /katex >}}
{{< katex display >}}\vec{a}(t) = \vec{v}'(t) = v\vec{T}' + v'\vec{T}{{< /katex >}}

From this, we already know that the tangential acceleration (which, as the name implies, is in the direction of the tangent vector) will be {{< katex >}}\vec{a_T}(t) = v'\vec{T}{{< /katex >}}. Let's make the normal acceleration easier to work with.

{{< katex display >}}\kappa = \frac{|\vec{T}'|}{v}{{< /katex >}}
{{< katex display >}}|\vec{T}'| = \kappa v{{< /katex >}}
{{< katex display >}}\vec{N} = \frac{\vec{T}'}{|\vec{T}'|}{{< /katex >}}
{{< katex display >}}\vec{T}' = |\vec{T}'| \vec{N} = \kappa v \vec{N}{{< /katex >}}
{{< katex display >}}\vec{a_N}(t) = v\vec{T}' = \kappa v^2 \vec{N}{{< /katex >}}

To wrap all this up, let's look at **Kepler's Laws of Planetary Motion**:

1. A planet revolves around the sun in an elliptical orbit with the sun at one focus.
2. The line joining the sun to a planet sweeps out equal areas in equal times.
3. The square of the period of revolution of a planet is proportional to the cube of the length of the major axis of its orbit.

Let's try to prove Kepler's First Law. We'll use a coordinate system with the sun at the origin.

{{< katex display >}}\vec{F} = m\vec{a} = -\frac{GMm}{r^3}\vec{r}{{< /katex >}}
{{< katex display >}}\vec{a} = -\frac{GM}{r^3}\vec{r}{{< /katex >}}

Since {{< katex >}}\vec{a} || \vec{r}{{< /katex >}}, {{< katex >}}\vec{a} \times \vec{r} = 0{{< /katex >}}.

{{< katex display >}}\frac{d}{dt} (\vec{r} \times \vec{v}) = \vec{r}' \times \vec{v} + \vec{r} \times \vec{v}' = \vec{v} \times \vec{v} + \vec{r} \times \vec{a}{{< /katex >}}
{{< katex display >}}\vec{v} \times \vec{v} + \vec{r} \times \vec{a} = 0 + 0 = 0{{< /katex >}}

Therefore, {{< katex >}}\vec{r} \times \vec{v}{{< /katex >}} is a constant, which we'll refer to as {{< katex >}}\vec{h}{{< /katex >}}. Setting {{< katex >}}\vec{u} = \frac{1}{r}\vec{r}{{< /katex >}}:

{{< katex display >}}\vec{h} = \vec{r} \times \vec{v} = \vec{r} \times \vec{r}' = r \vec{u} \times (r\vec{u})'{{< /katex >}}
{{< katex display >}}r \vec{u} \times (r\vec{u})' = r\vec{u} \times (r\vec{u}' + r'\vec{u}) = r^2(\vec{u} \times \vec{u}') + rr'(\vec{u} \times \vec{u}){{< /katex >}}
{{< katex display >}}r^2(\vec{u} \times \vec{u}') + rr'(\vec{u} \times \vec{u}) = r^2(\vec{u} \times \vec{u}'){{< /katex >}}
{{< katex display >}}\vec{a} \times \vec{h} = -\frac{GM}{r^2}\vec{u} \times (r^2\vec{u} \times \vec{u}') = -GM\vec{u}\times(\vec{u}\times\vec{u}') = -GM[(\vec{u} \cdot \vec{u}')\vec{u} - (\vec{u} \cdot \vec{u})\vec{u}']{{< /katex >}}
{{< katex display >}}\vec{u} \cdot \vec{u} = 1{{< /katex >}}
{{< katex display >}}\vec{u} \cdot \vec{u}' = 0{{< /katex >}}
{{< katex display >}}\vec{a} \times \vec{h} = (\vec{v} \times \vec{h})' = GM \vec{u}'{{< /katex >}}
{{< katex display >}}\vec{v} \times \vec{h} = GM\vec{u} + \vec{c}{{< /katex >}}

Let's make {{< katex >}}\vec{h}{{< /katex >}} point in the direction of the {{< katex >}}z{{< /katex >}}-axis so that we're working in the {{< katex >}}xy{{< /katex >}}-plane. For bonus points, we can make {{< katex >}}\vec{c}{{< /katex >}}, the constant starting vector, point along the {{< katex >}}x{{< /katex >}}-axis. We can reparametrize everything in polar for {{< katex >}}\vec{r} = (r, \theta){{< /katex >}} to get:

{{< katex display >}}\vec{r} \cdot (\vec{v} \times \vec{h}) = \vec{r} \cdot (GM\vec{u} + \vec{c}) = GM\vec{r}\cdot\vec{u} + \vec{r}\cdot\vec{c}{{< /katex >}}
{{< katex display >}}GM\vec{r}\cdot\vec{u} + \vec{r}\cdot\vec{c} = GMr\vec{u}\cdot\vec{u} + |\vec{r}||\vec{c}|\cos\theta = GMr + rc\cos\theta{{< /katex >}}
{{< katex display >}}r = \frac{\vec{r}\cdot(\vec{v}\times\vec{h})}{GM + c\cos\theta} = \frac{1}{GM} \frac{\vec{r}\cdot(\vec{v}\times\vec{h})}{1 + e\cos\theta}{{< /katex >}}

where {{< katex >}}e = \frac{c}{GM}{{< /katex >}}. We can use the Associative Property to determine that {{< katex >}}\vec{r}\cdot(\vec{v}\times\vec{h}) = (\vec{r}\times\vec{v})\cdot\vec{h} = \vec{h} \cdot \vec{h} = h^2{{< /katex >}}. Therefore,

{{< katex display >}}r = \frac{h^2}{GM} \frac{1}{1 + e\cos\theta} = \frac{eh^2}{c} \frac{1}{1 + e\cos\theta}{{< /katex >}}
