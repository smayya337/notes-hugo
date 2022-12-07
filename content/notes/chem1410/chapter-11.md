---
title: "Color of Inorganic Molecules"
weight: 11
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
---

# Color of Inorganic Molecules

**Coordination** has to do with the bonds between **transition elements**. These elements are special because they have electrons in {{< katex >}}d{{< /katex >}}-orbitals (unlike **main group elements**, which only have electrons in {{< katex >}}s{{< /katex >}}- and {{< katex >}}p{{< /katex >}}-orbitals). It's pretty easy to predict the color and magnetism of coordination compounds because they follow set patterns.

## The Coordination Sphere

**Coordination compounds** are made up of a **complex ion** and one or more **counter ions**. The complex ion, also known as the primary **coordination sphere**, consists of the central metal atom or ion along with attached atoms/ions known as **ligands**. The metal ion is an electron acceptor and receives electrons donated from the ligands. Ligands are attached to the metal with at least one lone pair of electrons.

Let's break down the following coordination sphere:

$$\ce{[Fe(NH3)6]^{3+}}$$

Here, the central metal is {{< katex >}}\ce{Fe}{{< /katex >}}. The ligand is {{< katex >}}\ce{NH3}{{< /katex >}}, and there are six of them attached to the metal. The overall charge of the complex ion is 3+.

Counter ions aren't always written out in the equations of coordination spheres, but you need them to keep the charge neutral, so just assume they're present.

We can count out the charge of the complex ion by adding up the charges of its components. Going back to {{< katex >}}\ce{[Fe(NH3)6]^{3+}}{{< /katex >}}, {{< katex >}}\ce{NH3}{{< /katex >}} has a charge of 0, while the overall charge is 3+, so the {{< katex >}}\ce{Fe}{{< /katex >}} ion must have a charge of 3+.

The following table shows the charges of common ligands:

{{< figure src="/images/chem1410/chapter-11/ligands.jpg" caption="Common ligands with charges. M represents a metal." width="100%" >}}

An important note here: *the charge of the ligand is the charge when both of the atoms in the ligand-metal bond are associated with the ligand.* In other instances, charge is calculated by splitting the bond electrons evenly between the two atoms, but that is not the case here.

## Common Geometries

Similar to covalent compounds (as seen using VSEPR theory), coordination compounds also have a variety of structures based on the number of bonding and non-bonding electron pairs around the central atom.

The following table provides an overview of these geometries:

{{< figure src="/images/chem1410/chapter-11/geometries.png" caption="Coordination compound geometries." width="100%" >}}

The term **coordination number** is often used rather than VSEPR's "steric number" or "electron domains".

## Crystal Field Theory

We've seen that atomic orbitals play an important role in chemical bonding. This is also true for coordination compounds, which are unique in their use of {{< katex >}}d{{< /katex >}}-orbitals. **Crystal field theory** is an electrostatic theory (meaning it focuses on the charges and energy) that is centered around the idea that *the energetic effects of the ligands are dependent on the geometry of the compound*.

Here's an example with an **octahedral** geometry:

{{< figure src="/images/chem1410/chapter-11/octahedral.png" caption="Ligand positions in a coordination compound with octahedral geometry." width="100%" >}}

Here, all the ligands are located on the axes. What's interesting is that three of the different {{< katex >}}d{{< /katex >}}-orbitals -- the {{< katex >}}d_{xy}{{< /katex >}}, {{< katex >}}d_{yz}{{< /katex >}}, and {{< katex >}}d_{xz}{{< /katex >}} orbitals -- have the orbitals located *between* two axes, while the two others -- {{< katex >}}d_{z^2}{{< /katex >}} and {{< katex >}}d_{x^2-y^2}{{< /katex >}} have the orbitals *along* axes. Since the latter two orbitals (also known as the {{< katex >}}\bm{e_g}{{< /katex >}} **set**) are closer to ligands than the other three (the {{< katex >}}\bm{t_{2g}}{{< /katex >}} **set**), they will experience greater repulsion between their electrons and the ligands' electrons, which makes them higher in energy. In an octahedral geometry, the energy difference between the {{< katex >}}e_g{{< /katex >}} set and the {{< katex >}}t_{2g}{{< /katex >}} set is noted as {{< katex >}}\bm{\Delta_o}{{< /katex >}}.

In a perfectly **spherical** geometry, it's expected that all the orbitals have an equal amount of energy. This value is known as the **barycenter**. It's been calculated that the barycenter is about {{< katex >}}0.4\Delta_o{{< /katex >}} greater than the {{< katex >}}t_{2g}{{< /katex >}} set and {{< katex >}}0.6\Delta_o{{< /katex >}} less than the energy of the {{< katex >}}e_g{{< /katex >}} set.

The **crystal field stabilization energy** is the energy difference between a spherical field and an octahedral field. It's simple to calculate:

{{< equation "Crystal field stabilization energy:" >}}
$$\text{CFSE} = (-0.4\Delta_o)(\text{number of } t_{2g} \text{ electrons}) + (0.6\Delta_o)(\text{number of } e_{g} \text{ electrons})$$
{{< /equation >}}

When comparing two compounds, the compound with the lower CFSE will be more stable.

In a **tetrahedral** configuration, the ligands' positions look more like this:

{{< figure src="/images/chem1410/chapter-11/tetrahedral.jpg" caption="Ligand positions in a coordination compound with tetrahedral geometry." width="100%" >}}

Now, the {{< katex >}}t_{2g}{{< /katex >}} set is higher energy than the {{< katex >}}e_g{{< /katex >}} set. The energy difference here is labeled {{< katex >}}\Delta_t{{< /katex >}}, and the barycenter is {{< katex >}}0.6\Delta_t{{< /katex >}} greater than the energy of the {{< katex >}}e_g{{< /katex >}} set and {{< katex >}}0.4\Delta_t{{< /katex >}} less than the energy of the {{< katex >}}t_{2g}{{< /katex >}} set.

Since there are more ligand regions surrounding the metal ion in an octahedral configuration, there is more repulsion going on, causing {{< katex >}}\Delta_o > \Delta_t{{< /katex >}}.

Finally, let's look at the **square planar** geometry, which is basically like the octahedral geometry but without ligands on the {{< katex >}}z{{< /katex >}}-axis. In that scenario:

* {{< katex >}}d_{yz}{{< /katex >}} and {{< katex >}}d_{xz}{{< /katex >}}: low energy since they're not close to the ligands
* {{< katex >}}d_{z^2}{{< /katex >}}: not as low energy but still pretty low because only the ring orbital is anywhere near a ligand
* {{< katex >}}d_{xy}{{< /katex >}}: OK, at least it's on the same plane as the ligands
* {{< katex >}}d_{x^2-y^2}{{< /katex >}}: it's on the {{< katex >}}x{{< /katex >}}- and {{< katex >}}y{{< /katex >}}-axes! Just like the ligands!

These geometries affect how electrons are filled. Let's say we have an octahedral configuration, which means three low-energy orbitals and two high-energy orbitals. We fill each of the low-energy orbitals with one electron. Now, do we:

* Put an electron in an empty high-energy orbital?
* Completely fill all the low-energy orbitals before moving on to the high-energy ones?

These scenarios are called a **high-spin** and **low-spin** configuration, respectively. (Confused about the name? Consider that a half-filled orbital has a spin of {{< katex >}}\frac{1}{2}{{< /katex >}}, while a fully-filled orbital has a spin of zero. Add all the orbital spins up and see what you get.)

Here's a helpful visualization:

{{< figure src="/images/chem1410/chapter-11/metalhighlow_spin.png" caption="High vs. low spin with different numbers of electrons." width="100%" >}}

A high {{< katex >}}\Delta_o{{< /katex >}} causes a low-spin configuration, while a low {{< katex >}}\Delta_o{{< /katex >}} causes a high-spin configuration.

It's worth noting that crystal field theory is an *electrostatic* model. It's not very comprehensive; for example, it doesn't address covalent bonding. A related theory, **ligand field theory**, attempts to combine crystal field theory with molecular orbital theory to cover for this shortcoming.

## Factors Affecting the Crystal Field Splitting

The main factors that affect crystal field splitting energy ({{< katex >}}\Delta{{< /katex >}}) are:

* Identity of the transition metal
* Oxidation of the transition metal
* Identity of the ligand
* Geometric ligand field surrounding the metal (don't worry about this one)

Experiments have shown that {{< katex >}}3d{{< /katex >}} atoms tend to have high-spin configurations, while {{< katex >}}4d{{< /katex >}} and {{< katex >}}5d{{< /katex >}} atoms have low-spin configurations. This is because {{< katex >}}3d{{< /katex >}} atoms are physically smaller, resulting in less space for electrons to occupy. This increases the energy required to make an electron pair. As a result, it's easier to just half-fill everything first and then go back for seconds. {{< katex >}}4d{{< /katex >}} and {{< katex >}}5d{{< /katex >}} metals have more space, so this is less of a problem.

Higher oxidation states create a higher CFSE. This is pretty straightforward -- a higher positive charge will cause electrons from the ligands to be more attracted to the metal.
