


# Problem 6 Solution

## Rod on Metal Rails in a $\vec{B}$ Field

### 1. Motional EMF $\mathcal{E}(v)$ and Current $I(v)$

When a rod moves through a magnetic field, the Lorentz force acts on the charges within the rod, creating a separation of charge and thus an electromotive force (EMF). According to Faraday’s Law of Induction:

$$\Phi_B = \int \vec{B} \cdot d\vec{A} = B \cdot L \cdot x$$

The induced EMF is the negative rate of change of magnetic flux:


$$\mathcal{E} = -\frac{d\Phi_B}{dt} = -B \cdot L \cdot \frac{dx}{dt} = -BLv$$

Using Ohm's Law for the circuit with total resistance $R$, the magnitude of the induced current is:


$$I = \frac{|\mathcal{E}|}{R} = \frac{BLv}{R}$$

---

### 2. Magnetic Braking Force

A current $I$ flowing through a conductor of length $L$ in a magnetic field $B$ experiences a magnetic force (Lenz's Law ensures this force opposes motion):


$$\vec{F}_m = I(\vec{L} \times \vec{B})$$

Since the rod is perpendicular to the field, the magnitude is:


$$F_m = ILB = \left( \frac{BLv}{R} \right) LB = \frac{B^2 L^2 v}{R}$$


This force acts in the direction opposite to the velocity $v$, acting as a "magnetic brake."

---

### 3. Equation of Motion

We consider the rod on an incline at angle $\alpha$. The forces acting along the incline are the component of gravity pulling it down and the magnetic braking force pushing it up.

Using Newton's Second Law ($F_{net} = ma$):


$$m \frac{dv}{dt} = mg \sin\alpha - F_m$$

$$m \frac{dv}{dt} = mg \sin\alpha - \frac{B^2 L^2}{R}v$$

Divide by $m$ to get the standard form of "damping proportional to velocity":


$$\frac{dv}{dt} = g \sin\alpha - \gamma v, \quad \text{where } \gamma = \frac{B^2 L^2}{mR}$$

---

### 4. Terminal Velocity $v_\infty$

Terminal velocity is reached when acceleration becomes zero ($\frac{dv}{dt} = 0$), meaning the forces are perfectly balanced:


$$mg \sin\alpha = \frac{B^2 L^2 v_\infty}{R}$$

Solving for $v_\infty$:


$$v_\infty = \frac{mg R \sin\alpha}{B^2 L^2}$$

**Numerical Calculation:**
Using $m=0.20, L=0.30, B=0.80, R=0.50, \alpha=25^\circ, g=9.81$:


$$v_\infty = \frac{0.20 \cdot 9.81 \cdot 0.50 \cdot \sin(25^\circ)}{0.80^2 \cdot 0.30^2} \approx \frac{0.4146}{0.0576} \approx 7.20\ \mathrm{m/s}$$

---

### 5. Power Balance

In steady state ($v = v_\infty$), the mechanical power input from gravity must equal the electrical power dissipated as heat.

* **Mechanical Power (Gravity):** $P_{mech} = F_g \cdot v = (mg \sin\alpha) v$
* **Electrical Power (Joule Heat):** $P_{heat} = I^2 R$

Since $mg \sin\alpha = \frac{B^2 L^2 v}{R}$ and $I = \frac{BLv}{R}$:


$$I^2 R = \left( \frac{BLv}{R} \right)^2 R = \frac{B^2 L^2 v^2}{R} = \left( \frac{B^2 L^2 v}{R} \right) \cdot v$$


Substituting the force balance:


$$I^2 R = (mg \sin\alpha) \cdot v$$



---

### Data Summary Table

| Parameter | Symbol | Value | Unit |
| --- | --- | --- | --- |
| Magnetic Field | $B$ | 0.80 | T |
| Rod Length | $L$ | 0.30 | m |
| Mass | $m$ | 0.20 | kg |
| Resistance | $R$ | 0.50 | $\Omega$ |
| Terminal Velocity | $v_\infty$ | ~7.20 | m/s |