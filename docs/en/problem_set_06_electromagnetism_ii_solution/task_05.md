

# Problem 5 – Induction in a moving rod

## Theoretical and Mathematical Solution

### 1. Determine $\mathcal{E}$

When a conductor moves through a magnetic field, the Lorentz force acts on the free charges within the rod, creating a motional electromotive force (EMF). For a rod moving perpendicular to a uniform field:


$$\mathcal{E} = B \cdot L \cdot v$$


Given: $L = 0.25\ \text{m}$, $v = 4\ \text{m/s}$, $B = 0.6\ \text{T}$.


$$\mathcal{E} = 0.6 \cdot 0.25 \cdot 4 = 0.6\ \text{V}$$

### 2. Determine the potential difference between the ends

In an open circuit (the rod moving alone), the charges redistribute until the electric force $F_e = qE$ balances the magnetic Lorentz force $F_m = qvB$. The potential difference $\Delta V$ is equal to the induced EMF:


$$\Delta V = \mathcal{E} = 0.6\ \text{V}$$

### 3. What will happen if the motion is not perpendicular to $\vec B$?

If the velocity vector $\vec v$ makes an angle $\theta$ with the magnetic field $\vec B$, only the component of velocity perpendicular to the field contributes to the induction. The formula becomes:


$$\mathcal{E} = B L v \sin(\theta)$$


If the motion is parallel to the field ($\theta = 0^\circ$), the induced EMF is zero.

### 4. How does $\mathcal{E}$ depend on $L$?

The EMF is **linearly proportional** to the length of the rod.


$$\mathcal{E} \propto L$$


This is because a longer rod allows for a greater accumulation of charge at the ends, creating a larger integrated potential difference across the distance $L$.

### 5. Where does the energy of the electric field in the rod come from?

**The Theoretical Explanation:**
The energy does not appear from nowhere; it is a transformation of **mechanical work**.

* As the rod moves, the Lorentz force separates charges.
* If this rod were part of a circuit, a current $I$ would flow.
* The magnetic field would then exert a "braking" Ampere force $\vec{F}_A = I(\vec{L} \times \vec{B})$ opposing the motion.
* To maintain a constant velocity $v$, an external agent must perform mechanical work against this magnetic force.
* Therefore, the electrical energy is derived from the **mechanical work done by the external force** moving the rod through the field.

---



### Data Summary Table

| Parameter | Symbol | Value (Example) | Unit |
| --- | --- | --- | --- |
| Length | $L$ | 0.25 | $\text{m}$ |
| Velocity | $v$ | 4.0 | $\text{m/s}$ |
| Magnetic Flux Density | $B$ | 0.6 | $\text{T}$ |
| **Induced EMF** | $\mathcal{E}$ | **0.6** | **V** |