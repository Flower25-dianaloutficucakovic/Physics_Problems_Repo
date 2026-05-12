

---

# Problem 1: Lorentz Force Analysis

## 1. Determination of the Lorentz Force $\vec F$

The Lorentz force acting on a charge $q$ moving with velocity $\vec v$ in a magnetic field $\vec B$ (with no electric field $\vec E = 0$) is given by the formula:

$$\vec F = q(\vec v \times \vec B)$$

**Given Data:**

* $q = 1\ \text{mC} = 10^{-3}\ \text{C}$
* $\vec v = (2, 3, 0)\ \text{m/s}$
* $\vec B = (0, 0, 1)\ \text{T}$

**Calculation:**
The cross product $\vec v \times \vec B$ is calculated as follows:

$$\vec v \times \vec B = \begin{vmatrix} \mathbf{\hat{i}} & \mathbf{\hat{j}} & \mathbf{\hat{k}} \\ 2 & 3 & 0 \\ 0 & 0 & 1 \end{vmatrix} = \mathbf{\hat{i}}(3 \cdot 1 - 0 \cdot 0) - \mathbf{\hat{j}}(2 \cdot 1 - 0 \cdot 0) + \mathbf{\hat{k}}(2 \cdot 0 - 3 \cdot 0)$$

$$\vec v \times \vec B = (3, -2, 0)\ \text{N/C}$$

Multiplying by $q$:


$$\vec F = 10^{-3} \cdot (3, -2, 0) = (3 \cdot 10^{-3}, -2 \cdot 10^{-3}, 0)\ \text{N}$$

---

## 2. Equation of Motion and Trajectory

The equation of motion is derived from Newton's Second Law: $m\vec a = q(\vec v \times \vec B)$. Since the force is always perpendicular to the velocity, the particle undergoes **uniform circular motion** in the $xy$-plane (because the velocity is perpendicular to the $z$-axis field).

**Initial Conditions at $t=0$:**

* Position: $\vec r(0) = (0, 0, 0)$
* Velocity: $\vec v(0) = (2, 3, 0)$

The general solution for the position $\vec r(t)$ in this field configuration is:


$$x(t) = R \sin(\omega t + \phi) + x_0$$

$$y(t) = R \cos(\omega t + \phi) + y_0$$

$$z(t) = 0$$

Where $\omega = \frac{qB}{m}$ is the cyclotron frequency.

---

## 3. Magnitude of the Force $|\vec F|$

The magnitude can be calculated from the vector components found in step 1:

$$|\vec F| = \sqrt{F_x^2 + F_y^2 + F_z^2}$$

$$|\vec F| = \sqrt{(3 \cdot 10^{-3})^2 + (-2 \cdot 10^{-3})^2 + 0^2}$$

$$|\vec F| = \sqrt{9 \cdot 10^{-6} + 4 \cdot 10^{-6}} = \sqrt{13} \cdot 10^{-3}\ \text{N} \approx 3.61 \cdot 10^{-3}\ \text{N}$$

Alternatively, using $|\vec F| = qvB\sin\theta$:


$$v = \sqrt{2^2 + 3^2} = \sqrt{13}\ \text{m/s}$$

$$|\vec F| = (10^{-3}\ \text{C})(\sqrt{13}\ \text{m/s})(1\ \text{T})\sin(90^\circ) = \sqrt{13} \cdot 10^{-3}\ \text{N}$$

---

## 4. Does the magnetic force do work?

**No.** The magnetic force does no work on a free charge.

**Reasoning:**
The power $P$ delivered by a force is $P = \vec F \cdot \vec v$.
Since $\vec F = q(\vec v \times \vec B)$, the force is by definition perpendicular to the velocity vector ($\vec F \perp \vec v$).


$$P = \vec F \cdot \vec v = q(\vec v \times \vec B) \cdot \vec v = 0$$


Since power is the rate of doing work ($P = \frac{dW}{dt}$), the work done $W$ is zero. The magnetic field changes the **direction** of motion, but not the **kinetic energy**.

---

## 5. Radius of the Trajectory

Given $m = 0.01\ \text{kg}$, we use the centripetal force relation:


$$F_c = \frac{mv^2}{r}$$


Since the magnetic force provides the centripetal acceleration:


$$qvB = \frac{mv^2}{r} \implies r = \frac{mv}{qB}$$

**Calculation:**


$$r = \frac{(0.01\ \text{kg})(\sqrt{13}\ \text{m/s})}{(10^{-3}\ \text{C})(1\ \text{T})}$$

$$r = \frac{0.01 \cdot 3.605}{0.001} = 10 \cdot 3.605 = 36.05\ \text{m}$$

---

## 6. Effect of Doubling $B$

If the magnetic field $B$ is doubled ($B' = 2B$):
From the formula $r = \frac{mv}{qB}$, we see that the radius is **inversely proportional** to the magnetic field strength ($r \propto \frac{1}{B}$).

| Magnetic Field | Radius Formula | Result |
| --- | --- | --- |
| Original ($B$) | $r = \frac{mv}{qB}$ | $r$ |
| Doubled ($2B$) | $r' = \frac{mv}{q(2B)}$ | $r' = \frac{1}{2}r$ |

**Conclusion:** When the value of $B$ is doubled, the radius of the trajectory is **halved**.

---

## Visualization: Motion Parameters

Below is a summary of the system dynamics:

| Parameter | Value | Unit |
| --- | --- | --- |
| Velocity Magnitude ($v$) | $\sqrt{13} \approx 3.61$ | m/s |
| Force Magnitude ($F$) | $\sqrt{13} \cdot 10^{-3}$ | N |
| Mass ($m$) | 0.01 | kg |
| Radius ($r$) | 36.05 | m |
| Work Done ($W$) | 0 | J |

