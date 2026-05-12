



## Problem 2 – Velocity selection (crossed fields)

### 1. Derive the condition for rectilinear motion

For a particle with charge $q$ moving through crossed electric and magnetic fields, two forces act upon it. The net force is the **Lorentz force**:

$$\vec{F} = \vec{F}_e + \vec{F}_m = q\vec{E} + q(\vec{v} \times \vec{B})$$

Given:

* $\vec{E} = (0, E, 0)$
* $\vec{B} = (0, 0, B)$
* Assume velocity $\vec{v} = (v, 0, 0)$ (along the x-axis).

**Step-by-step derivation:**

1. **Electric Force:** $\vec{F}_e = q(0, E, 0) = (0, qE, 0)$. This force points in the $y$-direction.
2. **Magnetic Force:** $\vec{F}_m = q(\vec{v} \times \vec{B})$.

$$\vec{v} \times \vec{B} = \begin{vmatrix} \mathbf{\hat{i}} & \mathbf{\hat{j}} & \mathbf{\hat{k}} \\ v & 0 & 0 \\ 0 & 0 & B \end{vmatrix} = (0, -vB, 0)$$



So, $\vec{F}_m = (0, -qvB, 0)$. This force points in the negative $y$-direction.
3. **Condition for Rectilinear Motion:** For the particle to move in a straight line (rectilinear), the net force in the $y$-direction must be zero ($\sum F_y = 0$):

$$qE - qvB = 0$$


$$qE = qvB$$


$$v = \frac{E}{B}$$



---

### 2. Calculate $v_d$ for $E = 400\ \text{V/m}$, $B = 0.8\ \text{T}$

Using the derived selection condition:


$$v_d = \frac{E}{B} = \frac{400\ \text{V/m}}{0.8\ \text{T}} = 500\ \text{m/s}$$

---

### 3. Does the kinetic energy change in steady motion?

**No.** In steady motion (rectilinear), the net force is zero. According to the **Work-Energy Theorem**, if the net force is zero, no work is done on the particle ($W = \Delta K = 0$). Furthermore, the magnetic force is always perpendicular to velocity ($\vec{F}_m \perp \vec{v}$), meaning it never does work. In this specific "balanced" case, the work done by the electric field is exactly canceled by the opposition of the magnetic field's effect on the trajectory.

---

### 4. Operating principle of the velocity selector

A velocity selector acts as a **filter**. When a beam of particles with various speeds enters the crossed fields:

* **Particles with $v = E/B$**: The electric and magnetic forces cancel out perfectly. They travel in a straight line and pass through the exit slit.
* **Particles with $v > E/B$**: The magnetic force ($qvB$) dominates, causing the particle to curve "downward."
* **Particles with $v < E/B$**: The electric force ($qE$) dominates, causing the particle to curve "upward."



---

### Data Summary Table

| Parameter | Symbol | Value | Unit |
| --- | --- | --- | --- |
| Electric Field | $E$ | 400 | V/m |
| Magnetic Field | $B$ | 0.8 | T |
| Selection Velocity | $v_d$ | 500 | m/s |
| Trajectory (at $v_d$) | - | Rectilinear | - |
| Net Force (at $v_d$) | $\sum F$ | 0 | N |