
### Problem 3 – Magnetic moment of a loop

Below is the complete solution for **Problem 3**, formatted specifically for Visual Studio Code Markdown rendering. It includes the theoretical derivation, a descriptive animation logic (via Mermaid/HTML), and the necessary LaTeX formulas.

---

## Task 3.1: Define the magnetic moment $\vec \mu$ of the loop

The **magnetic dipole moment** $\vec \mu$ of a planar current loop is a vector quantity that represents the strength and orientation of the magnetic source.

For a loop with $N$ turns, each having an area $S$ and carrying a current $I$, the magnetic moment is defined as:

$$\vec \mu = N \cdot I \cdot \vec S$$

* **$N$**: Number of turns (dimensionless).
* **$I$**: Current flowing through the loop (Amperes, $\mathrm{A}$).
* **$\vec S$**: Area vector, whose magnitude is the area $S$ and whose direction is perpendicular to the plane of the loop (determined by the right-hand rule relative to the current flow).

---

## Task 3.2: Determine the torque $\vec M$

When a magnetic moment $\vec \mu$ is placed in an external uniform magnetic field $\vec B$, it experiences a mechanical torque that tends to align the moment with the field.

The torque vector $\vec M$ is given by the cross product:

$$\vec M = \vec \mu \times \vec B$$

In terms of magnitude:


$$M = |\vec \mu| |\vec B| \sin(\theta) = N I S B \sin(\theta)$$

where $\theta$ is the angle between the magnetic moment vector $\vec \mu$ (normal to the loop) and the magnetic field vector $\vec B$.

---

## Task 3.3: Maximum Torque Angle

The magnitude of the torque follows the function $M(\theta) \propto \sin(\theta)$.

* The torque is **maximum** when $\sin(\theta) = 1$.
* This occurs at **$\theta = 90^\circ$** ($\pi/2$ radians).

**Interpretation:** The torque is greatest when the plane of the loop is **parallel** to the magnetic field lines (meaning the normal vector $\vec \mu$ is perpendicular to $\vec B$).

---

## Task 3.4: Determine the potential energy $U$

The work done by an external agent to rotate the magnetic dipole in the field is stored as magnetic potential energy. By convention, $U = 0$ when $\theta = 90^\circ$.

The potential energy is defined as:


$$U = -\vec \mu \cdot \vec B$$

Using the dot product definition:


$$U(\theta) = -\mu B \cos(\theta) = -N I S B \cos(\theta)$$

---

## Task 3.5: Stable and Unstable Positions

The stability of the loop depends on the extrema of the potential energy function $U(\theta)$.

| Position Type | Angle $\theta$ | Potential Energy $U$ | Description |
| --- | --- | --- | --- |
| **Stable Equilibrium** | $0^\circ$ | $- \mu B$ (Minimum) | $\vec \mu$ is parallel to $\vec B$. If displaced, the torque pulls it back. |
| **Unstable Equilibrium** | $180^\circ$ | $+\mu B$ (Maximum) | $\vec \mu$ is anti-parallel to $\vec B$. Any small displacement causes it to flip. |

---

## Visual Analysis & Animation Concept

To visualize the relationship between the angle $\theta$, Torque $M$, and Energy $U$, we can use the following data representation:

### Torque vs. Energy Chart

| Angle $\theta$ | $\sin(\theta)$ (Torque Factor) | $\cos(\theta)$ (Energy Factor) |
| --- | --- | --- |
| $0^\circ$ | 0 | 1 (Lowest Energy) |
| $90^\circ$ | 1 (Max Torque) | 0 |
| $180^\circ$ | 0 | -1 (Highest Energy) |

