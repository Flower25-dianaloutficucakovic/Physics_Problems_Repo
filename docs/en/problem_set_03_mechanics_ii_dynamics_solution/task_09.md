# Problem 9 – Potential and conservative field

## Given

Potential energy:

$$U(x,y) = \frac{k}{2}(x^2 + y^2)$$

---

## Solution

### 1. Determine the force as the gradient of the potential

The force is defined as the negative gradient of the potential energy:

$$\vec{F} = -\nabla U = -\left(\frac{\partial U}{\partial x}, \frac{\partial U}{\partial y}\right)$$

**Compute the partial derivatives:**

$$\frac{\partial U}{\partial x} = \frac{\partial}{\partial x}\left[\frac{k}{2}(x^2 + y^2)\right] = kx$$

$$\frac{\partial U}{\partial y} = \frac{\partial}{\partial y}\left[\frac{k}{2}(x^2 + y^2)\right] = ky$$

**Therefore:**

$$\vec{F} = -\nabla U = (-kx, -ky) = -k(x, y) = -k\vec{r}$$

This is a **restoring force proportional to displacement**, directed toward the origin.

---

### 2. Write down the equations of motion

Using Newton's second law $\vec{F} = m\vec{a}$:

$$m\ddot{x} = -kx$$

$$m\ddot{y} = -ky$$

Rearranging:

$$\ddot{x} + \omega^2 x = 0$$

$$\ddot{y} + \omega^2 y = 0$$

where the natural angular frequency is:

$$\omega = \sqrt{\frac{k}{m}}$$

---

### 3. Determine the type of motion

Each component decouples into a **harmonic oscillator equation**. The general solutions are:

$$x(t) = A_x \cos(\omega t) + B_x \sin(\omega t)$$

$$y(t) = A_y \cos(\omega t) + B_y \sin(\omega t)$$

Or equivalently:

$$x(t) = C_x \cos(\omega t + \phi_x)$$

$$y(t) = C_y \cos(\omega t + \phi_y)$$

where $C_x, C_y$ are amplitudes and $\phi_x, \phi_y$ are phase constants determined by initial conditions.

**Type of motion:** The motion in the $(x,y)$ plane is a **2D harmonic oscillator**. Depending on the phase relationship between $x(t)$ and $y(t)$, the trajectory can be:

- **Ellipse** (most general case when $\phi_x \neq \phi_y$)
- **Straight line** (when $\phi_x = \phi_y$ or $\phi_x = \phi_y + \pi$)
- **Circle** (when $C_x = C_y$ and $\phi_x = \phi_y \pm \pi/2$)

---

### 4. Determine the total energy

The total mechanical energy is conserved:

$$E = T + U$$

where kinetic energy is:

$$T = \frac{1}{2}m(\dot{x}^2 + \dot{y}^2)$$

and potential energy is:

$$U(x,y) = \frac{k}{2}(x^2 + y^2)$$

**Total energy:**

$$E = \frac{1}{2}m(\dot{x}^2 + \dot{y}^2) + \frac{k}{2}(x^2 + y^2)$$

For each component independently:

$$E_x = \frac{1}{2}m\dot{x}^2 + \frac{k}{2}x^2 = \frac{1}{2}kC_x^2$$

$$E_y = \frac{1}{2}m\dot{y}^2 + \frac{k}{2}y^2 = \frac{1}{2}kC_y^2$$

**Total energy is constant:**

$$E_{\text{total}} = E_x + E_y = \frac{1}{2}k(C_x^2 + C_y^2) = \text{constant}$$

---

### 5. Interpret the trajectory geometrically

The trajectory traces an **ellipse in the $(x,y)$ plane** (or degenerate cases like a line or circle).

**General parametric form of the trajectory:**

$$x(t) = A \cos(\omega t + \phi)$$

$$y(t) = B \cos(\omega t + \psi)$$

**Equation in Cartesian form (ellipse):**

If $\psi - \phi = \pi/2$ (90° phase difference):

$$\frac{x^2}{A^2} + \frac{y^2}{B^2} = 1$$

This is an **ellipse centered at the origin** with semi-major and semi-minor axes $A$ and $B$.

**Key properties:**

- The particle oscillates periodically with period $T = \frac{2\pi}{\omega}$
- The force field is **central** and **conservative** (curl of force vanishes)
- Energy is **exchanged** between kinetic and potential forms but remains constant
- The trajectory is always **bounded** (confined within the ellipse)

---

## Summary Table

| Property | Value |
|----------|-------|
| **Type of field** | Conservative, central potential |
| **Type of motion** | 2D harmonic oscillator |
| **Trajectory** | Ellipse (or line/circle as special cases) |
| **Period** | $$T = \frac{2\pi}{\omega} = 2\pi\sqrt{\frac{m}{k}}$$ |
| **Total energy** | $$E = \frac{1}{2}k(C_x^2 + C_y^2)
