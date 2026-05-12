


# Problem 7: Loop pulled into a B field region

## 1. Theoretical Analysis

### Problem Statement

A rectangular conducting loop (dimensions $a \times b$, resistance $R$) is pulled with a constant velocity $v$ into a region of uniform magnetic field $B$ perpendicular to the loop.

### 1.1 Magnetic Flux $\Phi(t)$

As the loop enters the field, only the area $S_{in} = b \cdot x(t)$ is inside the magnetic field, where $x(t) = v \cdot t$.
The magnetic flux is given by:


$$\Phi(t) = B \cdot S_{in} = B \cdot b \cdot v \cdot t$$

### 1.2 Induced EMF and Current

According to Faraday's Law of Induction:


$$\mathcal{E} = -\frac{d\Phi}{dt} = -\frac{d}{dt}(B b v t) = -B b v$$


The magnitude of the induced current $I$ (Ohm's Law) is:


$$I = \frac{|\mathcal{E}|}{R} = \frac{B b v}{R}$$

### 1.3 Braking Force $F(v)$

The magnetic field exerts a Lorentz force on the side of the loop inside the field carrying the current $I$. The force $F = I L B \sin(\theta)$ acts on the leading edge of length $b$:


$$F_{mag} = I \cdot b \cdot B = \left( \frac{B b v}{R} \right) b B = \frac{B^2 b^2 v}{R}$$


This force opposes the motion (Lenz's Law). To maintain constant velocity, an external mechanical force $F_{ext}$ of equal magnitude must be applied.

### 1.4 Power Balance

* **Mechanical Power ($P_{mech}$):** $P = F_{ext} \cdot v = \frac{B^2 b^2 v^2}{R}$
* **Thermal Power (Joule Heat $P_J$):** $P = I^2 R = \left( \frac{B b v}{R} \right)^2 R = \frac{B^2 b^2 v^2}{R}$
**Conclusion:** $P_{mech} = P_J$. All mechanical work done to pull the loop is converted into heat.

### 1.5 Steady State (Fully inside)

When the loop is entirely within the uniform field, the flux $\Phi = B \cdot a \cdot b$ is constant.


$$\frac{d\Phi}{dt} = 0 \implies \mathcal{E} = 0 \implies I = 0$$


There is no induced current or braking force once the loop is fully submerged in a uniform field.

---

## 2. Numerical Data Summary

| Parameter | Symbol | Value |
| --- | --- | --- |
| Loop Length | $a$ | $0.20\ \text{m}$ |
| Loop Width | $b$ | $0.10\ \text{m}$ |
| Magnetic Field | $B$ | $0.60\ \text{T}$ |
| Resistance | $R$ | $0.40\ \Omega$ |
| Velocity | $v$ | $1.5\ \text{m/s}$ |



---

## 4. Reasoning & Results

1. **Flux Change:** Only occurs during the transition across the boundary of the $B$ field.
2. **Energy Conservation:** The work required to overcome the magnetic force exactly matches the electrical energy dissipated as heat in the resistor.
3. **Lenz's Law:** The induced current creates its own magnetic field that tries to oppose the change in flux (the "dragging" of the loop into the field).