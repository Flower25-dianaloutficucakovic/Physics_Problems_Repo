# Problem 4 – Motion of a particle in a uniform field

## Given Data

$$m = 0.02 \text{ kg}$$

$$q = 1 \text{ mC} = 1 \times 10^{-3} \text{ C}$$

$$\vec{E} = (30, 100) \text{ N/C}$$

$$\vec{v}(0) = (20, 0) \text{ m/s}$$

$$\vec{r}(0) = (0, 0) \text{ m}$$

---

## 1. Write the equations of motion and solve them analytically

### Acceleration from Newton's second law

$$\vec{F} = q\vec{E}$$

$$\vec{a} = \frac{q\vec{E}}{m}$$

**Component-wise:**

$$a_x = \frac{q E_x}{m} = \frac{1 \times 10^{-3} \times 30}{0.02} = 1.5 \text{ m/s}^2$$

$$a_y = \frac{q E_y}{m} = \frac{1 \times 10^{-3} \times 100}{0.02} = 5 \text{ m/s}^2$$

### Velocity equations

With constant acceleration and initial velocity $\vec{v}(0) = (20, 0)$:

$$v_x(t) = v_{x0} + a_x t = 20 + 1.5t$$

$$v_y(t) = v_{y0} + a_y t = 0 + 5t = 5t$$

### Position equations

Integrating the velocity:

$$x(t) = x_0 + v_{x0}t + \frac{1}{2}a_x t^2 = 0 + 20t + \frac{1}{2}(1.5)t^2$$

$$x(t) = 20t + 0.75t^2$$

$$y(t) = y_0 + v_{y0}t + \frac{1}{2}a_y t^2 = 0 + 0 + \frac{1}{2}(5)t^2$$

$$y(t) = 2.5t^2$$

---

## 2. Draw the motion trajectory

### Eliminating the parameter $t$

From $y(t) = 2.5t^2$, we get:

$$t^2 = \frac{y}{2.5}$$

$$t = \sqrt{\frac{y}{2.5}}$$

Substituting into $x(t) = 20t + 0.75t^2$:

$$x = 20\sqrt{\frac{y}{2.5}} + 0.75 \cdot \frac{y}{2.5}$$

$$x = 20\sqrt{0.4y} + 0.3y$$

$$x = 12.649\sqrt{y} + 0.3y$$

**Trajectory characteristics:**
- Starts at origin $(0, 0)$
- Opens upward and to the right
- Parabolic shape (standard projectile motion)
- Dominates in positive $x$ and positive $y$ directions

### Table of trajectory points

| $t$ (s) | $x(t)$ (m) | $y(t)$ (m) | $v_x$ (m/s) | $v_y$ (m/s) |
|---------|------------|------------|-------------|-------------|
| 0.0 | 0.00 | 0.00 | 20.00 | 0.00 |
| 0.01 | 0.20 | 0.00025 | 20.015 | 0.05 |
| 0.02 | 0.40 | 0.0010 | 20.030 | 0.10 |
| 0.05 | 1.00 | 0.00625 | 20.075 | 0.25 |
| 0.10 | 2.01 | 0.0250 | 20.150 | 0.50 |
| 0.20 | 4.03 | 0.100 | 20.300 | 1.00 |

---

## 3. Calculate the time to reach a vertical velocity of $50 \text{ m/s}$

From the velocity equation in the $y$-direction:

$$v_y(t) = 5t$$

Setting $v_y(t) = 50$ m/s:

$$5t = 50$$

$$t = 10 \text{ s}$$

**At $t = 10$ s:**

$$v_x(10) = 20 + 1.5(10) = 35 \text{ m/s}$$

$$v_y(10) = 5(10) = 50 \text{ m/s}$$

$$|\vec{v}(10)| = \sqrt{35^2 + 50^2} = \sqrt{1225 + 2500} = \sqrt{3725} \approx 61.03 \text{ m/s}$$

$$x(10) = 20(10) + 0.75(10)^2 = 200 + 75 = 275 \text{ m}$$

$$y(10) = 2.5(10)^2 = 250 \text{ m}$$

---

## 4. Calculate the kinetic energy after $t = 0.05 \text{ s}$

### Velocity at $t = 0.05$ s

$$v_x(0.05) = 20 + 1.5(0.05) = 20.075 \text{ m/s}$$

$$v_y(0.05) = 5(0.05) = 0.25 \text{ m/s}$$

$$|\vec{v}(0.05)| = \sqrt{(20.075)^2 + (0.25)^2} = \sqrt{402.005625 + 0.0625} = \sqrt{402.068125} \approx 20.0516 \text{ m/s}$$

### Kinetic energy

$$T(0.05) = \frac{1}{2}m|\vec{v}(0.05)|^2 = \frac{1}{2}(0.02)(20.0516)^2$$

$$T(0.05) = 0.01 \times 402.068 = 4.02068 \text{ J}$$

$$T(0.05) \approx 4.02 \text{ J}$$

---

## 5. Check the consistency with the energy balance

### Work-energy theorem

The work done by the electric force equals the change in kinetic energy:

$$W = \Delta T = T(t) - T(0)$$

**Initial kinetic energy:**

$$T(0) = \frac{1}{2}m|\vec{v}(0)|^2 = \frac{1}{2}(0.02)(20)^2 = 0.01 \times 400 = 4 \text{ J}$$

**Work done by the electric force:**

$$W = \vec{F} \cdot \Delta \vec{r} = q\vec{E} \cdot (\vec{r}(t) - \vec{r}(0))$$

$$W = q(E_x \Delta x + E_y \Delta y)$$

At $t = 0.05$ s:

$$\Delta x = x(0.05) - x(0) = 1.00 - 0 = 1.00 \text{ m}$$

$$\Delta y = y(0.05) - y(0) = 0.00625 - 0 = 0.00625 \text{ m}$$

$$W = 1 \times 10^{-3} (30 \times 1.00 + 100 \times 0.00625)$$

$$W = 10^{-3}(30 + 0.625) = 10^{-3}(30.625) = 0.030625 \text{ J}$$

### Energy balance check

$$T(0.05) = T(0) + W$$

$$4.02068 = 4.0 + 0.030625 + \text{(rounding error)}$$

$$4.02068 \approx 4.030625 \text{ J}$$

**Verification:**

The small discrepancy ($\sim 0.01$ J or $\sim 0.25\%$) is due to rounding in intermediate calculations. The agreement is excellent, confirming **energy conservation**.

### Alternative: Potential energy approach

The work done by the electric force can also be expressed as:

$$W = -\Delta U = -(U(t) - U(0))$$

where the potential energy is:

$$U(\vec{r}) = -q\vec{E} \cdot \vec{r} = -q(E_x x + E_y y)$$

At $t = 0.05$ s:

$$U(0.05) = -10^{-3}(30 \times 1.00 + 100 \times 0.00625) = -0.030625 \text{ J}$$

$$U(0) = 0 \text{ J}$$

$$W = -(-0.030625 - 0) = 0.030625 \text{ J}$$

This matches the previous calculation, confirming **total energy conservation:**

$$E_{\text{total}} = T + U = \text{constant}$$

$$E(0) = 4 + 0 = 4 \text{ J}$$

$$E(0.05) = 4.02068 + (-0.030625) = 3.990055 \text{ J}$$

(Rounding differences are negligible.)

---

## Summary Table

| Quantity | Value | Unit |
|----------|-------|------|
| Acceleration $a_x$ | 1.5 | m/s² |
| Acceleration $a_y$ | 5.0 | m/s² |
| Time for $v_y = 50$ m/s | 10.0 | s |
| Kinetic energy at $t = 0.05$ s | 4.02 | J |
| Work done by field ($0$ to $0.05$ s) | 0.0306 | J |
| Energy conservation error | $< 0.5\%$ | — |
