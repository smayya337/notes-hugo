---
title: "Atomic Orbitals: Energy, Shape and Electron Density"
weight: 2
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
---

# Atomic Orbitals: Energy, Shape and Electron Density

The first few decades of the 20th century sparked a revolution surrounding extremely small objects. **Quantum mechanics** upended the classical models of physics as they applied to particles at the atomic and subatomic level. Instead of being a smooth, continuous distribution, energy was actually **quantized** -- there was a minimum amount of energy greater than zero, and energy increased by set increments.

## The Bohr Model of the Atom

Under classical principles, it was expected that an electron's angular momentum would cause it to spiral into the nucleus and cause atomic collapse. This clearly was not happening, or else atomic collapse would be happening everywhere all the time. In 1914, Niels Bohr proposed a non-classical model of the atom that used the principle of quantization. His idea was that electrons could only travel in orbits of fixed radius around the atomic nucleus. Each "Bohr orbit" had a radius{{< katex >}}r{{< /katex >}}defined in terms of an integer multiple {{< katex >}}n{{< /katex >}}:

{{< equation "Bohr orbit radius:" >}}
{{< katex display >}}r = \frac{\epsilon_0 h^2}{\pi m_e e^2}n^2{{< /katex >}}

<p>where {{< katex >}}n{{< /katex >}} is a varying integer multiple.</p>

<p>Constants:</p>
<ul>
<li>{{< katex >}}\epsilon_0{{< /katex >}} is electric permeability (the ability of a material to support the formation of a magnetic field),{{< katex >}}1.256 \times 10^{-6} \text{ N} \text{ A}^{-2}{{< /katex >}}for free space</li>
<li>{{< katex >}}h{{< /katex >}} is Planck's constant, {{< katex >}}6.626 \times 10^{-34} \text{ m}^2 \text{ kg} \text{ s}^{-1}{{< /katex >}}</li>
<li>{{< katex >}}m_e{{< /katex >}}is the mass of an electron,{{< katex >}}9.109 \times 10^{-31} \text{ kg}{{< /katex >}}</li>
<li>{{< katex >}}e{{< /katex >}}is the electric charge of an electron,{{< katex >}}-1.602 \times 10^{19} \text{ C}{{< /katex >}}</li>
</ul>
{{< /equation >}}

Using{{< katex >}}n = 1{{< /katex >}}in this equation gives a radius of{{< katex >}}5.29 \times 10^{-11} \text{ m}{{< /katex >}}, also known as the **Bohr radius**. This is the minimum distance that an electron can be from the nucleus in a hydrogen atom. Since this is greater than zero, we know that an electron cannot actually crash into the nucleus like classical models suggested.

Bohr's model was eventually proven wrong -- electrons do not travel in circular orbits -- but he still left a lasting impact on our thinking. Bohr hypothesized that the different orbit radii had energy levels associated with them. The energy levels followed this equation:

{{< equation "Electron energy:" >}}
{{< katex display >}}E_n = -R_y (\frac{1}{n^2}){{< /katex >}}

<p>where {{< katex >}}n{{< /katex >}} is an integer value associated with an energy level.</p>

<p>Constants:</p>

<ul>
<li>{{< katex >}}R_y{{< /katex >}}is the Rydberg unit of energy,{{< katex >}}2.18 \times 10^{-18} \text{ J}{{< /katex >}}</li>
</ul>

<p>Note the negative sign, which reflects the attractive force between the electron and nucleus.</p>
{{< /equation >}}

There are a couple cases to consider with this equation:

* {{< katex >}}n = 1{{< /katex >}}is known as the **ground state**. This reflects the lowest possible energy state for the hydrogen atom.{{< katex >}}n > 1{{< /katex >}}are the **excited states** of the atom.
* {{< katex >}}n \rightarrow \infty{{< /katex >}}causes the energy to approach zero (remember, the energy is normally negative, so this is really high energy!) This causes the electron to completely break off from the atom, also known as **ionization**.

This means that the potential energy of an electron not bound to an atom is zero. As the nucleus and electron come closer, the reaction is **favorable** or stabilizing, causing the energy to decrease.

We can use the previous equation to calculate the energy difference between two states:

{{< equation "Electron energy difference:" >}}
{{< katex display >}}E_n = -R_y (\frac{1}{n_1^2} - \frac{1}{n_2^2}){{< /katex >}}

<p>where {{< katex >}}n_1{{< /katex >}} and {{< katex >}}n_2{{< /katex >}} are integer values associated with energy levels.</p>

<p>Constants:</p>

<ul>
<li>{{< katex >}}R_y{{< /katex >}} is the Rydberg unit of energy,{{< katex >}}2.18 \times 10^{-18} \text{ J}{{< /katex >}}</li>
</ul>

<p>Note the negative sign, which reflects the attractive force between the electron and nucleus.</p>
{{< /equation >}}

## Schrödinger, Born, and Atomic Orbital Wavefunctions

Scientists in the 1920s realized that matter displayed a **wave-particle duality} -- that is, it had properties of both a wave and a particle. Erwin Schrödinger created an equation that accounted for this fact:

{{< equation "Schrodinger's equation:" >}}

{{< katex display >}}H\Psi = E\Psi{{< /katex >}}

<p>where {{< katex >}}H{{< /katex >}} is the <strong>Hamiltonian operator</strong> (a fancy second-degree differential equation) and {{< katex >}} \Psi {{< /katex >}} is a <strong>wavefunction</strong> (an equation that mathematically describes a particle).{{< katex >}}E{{< /katex >}}is the total energy of the electron.</p>
{{< /equation >}}

That's great and all, but what does{{< katex >}}\Psi{{< /katex >}}mean in a real-world context? Max Born proposed that{{< katex >}}\Psi{{< /katex >}}was related to the probability of finding an electron in an atom. He ended up proving that{{< katex >}}|\Psi|^2{{< /katex >}}was the **probability density** (the likelihood of finding something at any point in a given region). This meant that you could use Schrodinger's equation to determine where an electron was probably located.

Now, there are a few limitations on {{< katex >}}\Psi{{< /katex >}} as a result of this:

* {{< katex >}}0 \leq \Psi \leq 1{{< /katex >}}, because if not the probability{{< katex >}}\Psi^2{{< /katex >}} doesn't make any sense.
* {{< katex >}}\Psi{{< /katex >}} must be single-valued for a point. Having two different probabilities for a point also makes no sense.
* {{< katex >}}\Psi{{< /katex >}} must be a smooth and continuous function to satisfy the requirements of the second-order differential equation.

In practice,{{< katex >}}\Psi{{< /katex >}}for a hydrogen atom is made up of two parts: a **radial function** {{< katex >}}R{{< /katex >}}and an **angular function** (or **spherical harmonic function**){{< katex >}}Y{{< /katex >}}.

{{< equation >}}
<strong>Schrodinger's solution for {{< katex >}}\Psi{{< /katex >}} for a hydrogen atom:</strong>

{{< katex display >}}\Psi_{n, l, m_m} (r, \theta, \phi) = R_{n, l}(r) \cdot Y_{l}^{m_l}(\theta, \phi){{< /katex >}}

where {{< katex >}}(r, \theta, \phi){{< /katex >}} is the set of spherical coordinates for the electron's location relative to the proton and{{< katex >}}(n, l, m_m){{< /katex >}}is the set of quantum numbers associated with the electron.
{{< /equation >}}

We'll ignore the angular function for now and focus on the radial function, which generally takes the form:

{{< equation >}}
<strong>Schrodinger's solution for {{< katex >}}R{{< /katex >}} for a hydrogen atom:</strong>

{{< katex display >}}R(r) = Np(r)e^{-kr}{{< /katex >}}

<p>where {{< katex >}}r{{< /katex >}} is the distance between the electron and the nucleus.</p>

<p>Constants:</p>

<ul>
<li>{{< katex >}}N{{< /katex >}} is a positive constant</li>
<li>{{< katex >}}k{{< /katex >}} is a positive constant</li>
<li>{{< katex >}}p(r){{< /katex >}}is a polynomial function of{{< katex >}}r{{< /katex >}}</li>
</ul>
{{< /equation >}}

This shows us that for the hydrogen atom, the probability of finding an electron at a specific location is dependent solely on the distance from that point to the nucleus.

{{< equation "The two simplest radial wavefunctions for the hydrogen atom:" >}}
{{< katex display >}}R_{1s} = 2(\frac{Z}{a_{0}})^{\frac{3}{2}}e^{\frac{-Zr}{a_{0}}}{{< /katex >}}
{{< katex display >}}R_{2s} = 2(\frac{Z}{2a_{0}})^{\frac{3}{2}}(1-\frac{Zr}{2a_{0}})e^{\frac{-Zr}{2a_{0}}}{{< /katex >}}

<p>where {{< katex >}}r{{< /katex >}} is the distance between the electron and the nucleus.</p>

<p>Constants:</p>

<ul>
<li>{{< katex >}}Z{{< /katex >}}is the nuclear charge (in this case,{{< katex >}}+1{{< /katex >}})</li>
<li>{{< katex >}}a_0{{< /katex >}}is the Bohr's radius,{{< katex >}}0.529 \text{ Å}{{< /katex >}}</li>
</ul>
{{< /equation >}}

These functions are equivalent to Bohr's{{< katex >}}n = 1{{< /katex >}}and{{< katex >}}n = 2{{< /katex >}}, respectively.

Here's a graph showing how the probability density of the 1s and 2s orbitals varies with distance:

{{< figure src="/images/chem1410/chapter-2/1s-2s-probability.png" caption="Probability density distribution of 1s and 2s orbitals of hydrogen." width="100%" >}}

The 1s orbital is the black curve, while the 2s orbital is plotted in red.

There's a point around{{< katex >}}r = 0.6 \text{ Å}{{< /katex >}}where the 2s probability density equals zero; that's what's called a **node**.

<!-- TODO: finish this chapter -->
