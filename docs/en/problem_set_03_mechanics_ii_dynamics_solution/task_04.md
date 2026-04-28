# Problem 4 – Conservation of energy

## Given Information

A body falls from a height $h$ without air resistance.

## Solution

### 1. Total energy as a function of height

The total mechanical energy is conserved:

$$E_{\text{total}} = T(h) + U(h) = \text{constant}$$

where:
- Kinetic energy: $T(h) = \frac{1}{2}mv^2(h)$
- Potential energy: $U(h) = mgh$ (taking $h=0$ as reference)

At the initial position (height $h_0$, at rest):

$$E_{\text{total}} = 0 + mgh_0 = mgh_0$$

At arbitrary height $h$ during the fall:

$$E_{\text{total}} = \frac{1}{2}mv^2(h) + mgh = mgh_0$$

---

### 2. Velocity as a function of height

From energy conservation:

$$\frac{1}{2}mv^2(h) + mgh = mgh_0$$

Solving for $v(h)$:

$$\frac{1}{2}mv^2(h) = mg(h_0 - h)$$

$$v^2(h) = 2g(h_0 - h)$$

$$v(h) = \sqrt{2g(h_0 - h)}$$

Equivalently, if we denote the distance fallen as $\Delta h = h_0 - h$:

$$v(\Delta h) = \sqrt{2g\Delta h}$$

---

### 3. Comparison with Newton's second law

Using Newton's second law for constant gravitational acceleration:

$$a = g$$

With initial conditions $v(0) = 0$ and $x(0) = 0$:

$$v(t) = gt$$

$$x(t) = \frac{1}{2}gt^2$$

From the kinematic relation $v^2 = v_0^2 + 2a\Delta x$ with $v_0 = 0$:

$$v^2 = 2g\Delta x$$

$$v = \sqrt{2g\Delta x}$$

**This matches exactly with the energy method result.**

---

### 4. Height where kinetic energy is 75% of total energy

At height $h$, the kinetic energy is:

$$T(h) = \frac{1}{2}mv^2(h) = mg(h_0 - h)$$

The total energy is:

$$E_{\text{total}} = mgh_0$$

The condition is:

$$T(h) = 0.75 \cdot E_{\text{total}}$$

$$mg(h_0 - h) = 0.75 \cdot mgh_0$$

$$(h_0 - h) = 0.75h_0$$

$$h_0 - h = 0.75h_0$$

$$h = h_0 - 0.75h_0$$

$$h = 0.25h_0$$

**Answer:** The kinetic energy accounts for 75% of the total energy at height $\boxed{h = 0.25h_0}$

Alternatively, the body has fallen a distance:

$$\Delta h = h_0 - h = 0.75h_0$$

### Verification

At this height:
- Kinetic energy: $T = mg(0.75h_0) = 0.
