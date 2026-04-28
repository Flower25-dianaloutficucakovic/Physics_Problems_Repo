# Problem 1 – Newton's second law (constant force)

## Given Data

- Mass: $m = 2\ \mathrm{kg}$
- Constant force: $\vec F = [6, 2]\ \mathrm{N}$
- Initial velocity: $\vec v(0) = (1, -1)\ \mathrm{\frac{m}{s}}$
- Initial position: $\vec r(0) = (0, 0)\ \mathrm{m}$

## Solution

### 1. Determine $\vec a(t)$

Using Newton's second law:

$$\vec F = m\vec a$$

$$\vec a = \frac{\vec F}{m} = \frac{[6, 2]}{2} = [3, 1]\ \mathrm{\frac{m}{s^2}}$$

Since the force is constant, the acceleration is also constant:

$$\vec a(t) = [3, 1]\ \mathrm{\frac{m}{s^2}} \quad \text{(independent of time)}$$

---

### 2. Determine $\vec v(t)$

For constant acceleration:

$$\vec v(t) = \vec v(0) + \vec a \cdot t$$

$$\vec v(t) = (1, -1) + [3, 1] \cdot t$$

$$\vec v(t) = (1 + 3t, -1 + t)\ \mathrm{\frac{m}{s}}$$

**Component form:**

$$v_x(t) = 1 + 3t$$

$$v_y(t) = -1 + t$$

---

### 3. Determine $\vec r(t)$

For constant acceleration:

$$\vec r(t) = \vec r(0) + \vec v(0) \cdot t + \frac{1}{2}\vec a \cdot t^2$$

$$\vec r(t) = (0, 0) + (1, -1) \cdot t + \frac{1}{2}[3, 1] \cdot t^2$$

$$\vec r(t) = (t, -t) + \left(\frac{3t^2}{2}, \frac{t^2}{2}\right)$$

$$\vec r(t) = \left(t + \frac{3t^2}{2}, -t + \frac{t^2}{2}\right)\ \mathrm{m}$$

**Component form:**

$$x(t) = t + \frac{3t^2}{2}$$

$$y(t) = -t + \frac{t^2}{2}$$

---

### 4. Draw the trajectory of the motion

The trajectory is a parabola in the $(x, y)$ plane. 

**At selected times:**

| $t$ (s) | $x(t)$ (m) | $y(t)$ (m) |
|---------|------------|------------|
| 0 | 0.00 | 0.00 |
| 1 | 2.50 | -0.50 |
| 2 | 8.00 | -1.00 |
| 3 | 15.50 | -1.50 |

To eliminate the parameter $t$, from $x(t) = t + \frac{3t^2}{2}$, we can solve for $t$ (implicitly) and substitute into $y(t)$.

**Trajectory description:** The body starts at the origin, initially moving in the direction $(1, -1)$ (upper right, downward), but the force $[6, 2]$ gradually redirects the motion toward the upper right, creating a parabolic path.

---

### 5. Calculate the work done by the force at time $t = 3\ \mathrm{s}$

Work is defined as:

$$W = \int_{\vec r(0)}^{\vec r(t)} \vec F \cdot d\vec r$$

For a constant force:

$$W = \vec F \cdot \Delta \vec r = \vec F \cdot (\vec r(t) - \vec r(0))$$

**At $t = 3$ s:**

$$\vec r(3) = \left(3 + \frac{3 \cdot 3^2}{2}, -3 + \frac{3^2}{2}\right) = \left(3 + 13.5, -3 + 4.5\right) = (16.5, 1.5)\ \mathrm{m}$$

$$\Delta \vec r = \vec r(3) - \vec r(0) = (16.5, 1.5) - (0, 0) = (16.5, 1.5)\ \mathrm{m}$$

$$W = [6, 2] \cdot (16.5, 1.5) = 6 \times 16.5 + 2 \times 1.5 = 99 + 3 = 102\ \mathrm{J}$$

---

### 6. Check the consistency with the work-energy theorem

The work-energy theorem states:

$$W = \Delta T = T(t) - T(0) = \frac{1}{2}m|\vec v(t)|^2 - \frac{1}{2}m|\vec v(0)|^2$$

**Initial kinetic energy:**

$$T(0) = \frac{1}{2}m|\vec v(0)|^2 = \frac{1}{2} \times 2 \times |(1, -1)|^2 = 1 \times \sqrt{1^2 + (-1)^2}^2 = 1 \times 2 = 2\ \mathrm{J}$$

**Velocity at $t = 3$ s:**

$$\vec v(3) = (1 + 3 \times 3, -1 + 3) = (10, 2)\ \mathrm{\frac{m}{s}}$$

**Kinetic energy at $t = 3$ s:**

$$T(3) = \frac{1}{2}m|\vec v(3)|^2 = \frac{1}{2} \times 2 \times |(10, 2)|^2 = 1 \times (10^2 + 2^2) = 1 \times 104 = 104\ \mathrm{J}$$

**Work done by the force (from kinetic energy change):**

$$W = T(3) - T(0) = 104 - 2 = 102\ \mathrm{J}$$

$$\boxed{\text{Consistency check: } W_{\text{calculated}} = 102\ \mathrm{J} = W_{\text{from energy theorem}} \quad \checkmark}$$

The results match perfectly, confirming the work-energy theorem.
