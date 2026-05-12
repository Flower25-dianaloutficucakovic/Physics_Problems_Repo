

# Problem 10: Eddy Currents

## 1. Theoretical Foundation

**Eddy currents** (also known as Foucault currents) are loops of electrical current induced within conductors by a changing magnetic field in the conductor, according to Faraday's law of induction.

### The Mechanism of Braking

When a conductor moves through a non-uniform magnetic field or experiences a changing flux, the induced eddy currents create their own magnetic field. According to **Lenz's Law**, the direction of these currents will be such that their magnetic field opposes the change that created them.

The interaction between the external magnetic field $\vec{B}$ and the induced current density $\vec{J}$ results in a **Lorentz force** density:


$$\vec{f} = \vec{J} \times \vec{B}$$


This force acts in the direction opposite to the velocity $\vec{v}$ of the conductor, resulting in a braking effect known as **magnetic damping**.

---

## 2. Mathematical Analysis

The power dissipated as heat due to eddy currents in a thin sheet can be approximated by the formula:


$$P = \frac{\pi^2 B_p^2 d^2 f^2}{6 \rho D}$$


Where:

* $B_p$ is the peak magnetic field.
* $d$ is the thickness of the sheet.
* $f$ is the frequency of field changes (proportional to velocity).
* $\rho$ is the resistivity of the material.
* $D$ is the density of the material.

The braking force $F_b$ is generally proportional to the velocity at low speeds:


$$F_b \approx -k \sigma v$$


Where:

* $\sigma$ is the electrical conductivity.
* $v$ is the velocity.
* $k$ is a constant depending on the geometry and magnetic field strength.

---

## 3. Practical Application & Properties

| Feature | Description |
| --- | --- |
| **Best Materials** | High conductivity materials like **Copper** or **Aluminum**. |
| **Advantages** | No mechanical wear (frictionless), high reliability, smooth deceleration. |
| **Disadvantages** | Ineffective at low speeds (force drops as $v \to 0$), generates significant heat. |
| **Increasing Force** | Increase $B$ (stronger magnets), use materials with lower resistivity, or increase the volume of the conductor. |




---

## 5. Summary Table

| Question | Answer |
| --- | --- |
| **Where to use?** | High-speed trains (Maglev), roller coasters, industrial scales. |
| **How to increase force?** | Use stronger NdFeB magnets or decrease the gap between magnet and conductor. |
| **What happens to energy?** | Kinetic energy is converted into **Joule Heat** ($Q = I^2Rt$) within the conductor. |