# Problem 3 – Field at a point from a system of charges

## System Configuration

Two point charges in a 2D plane:

* Charge $+q$ at position $(-a, 0)$
* Charge $+2q$ at position $(a, 0)$

---

## 1. Determine the field vector $\vec{E}(x, y)$

### General formula for electric field

The electric field at point $(x, y)$ due to a point charge $Q$ at position $(x_0, y_0)$ is:

$$\vec{E} = k\frac{Q}{r^2}\hat{r}$$

where $r$ is the distance and $\hat{r}$ is the unit vector pointing from the charge to the field point.

### Field from first charge $+q$ at $(-a, 0)$

Distance from charge 1 to point $(x, y)$:

$$r_1 = \sqrt{(x + a)^2 + y^2}$$

Unit vector:

$$\hat{r}_1 = \frac{(x + a, y)}{r_1}$$

Electric field:

$$\vec{E}_1 = k\frac{q}{r_1^2}\hat{r}_1 = k\frac{q}{[(x+a)^2 + y^2]^{3/2}}(x + a, y)$$

Components:

$$E_{1x} = k\frac{q(x + a)}{[(x+a)^2 + y^2]^{3/2}}$$

$$E_{1y} = k\frac{qy}{[(x+a)^2 + y^2]^{3/2}}$$

### Field from second charge $+2q$ at $(a, 0)$

Distance from charge 2 to point $(x, y)$:

$$r_2 = \sqrt{(x - a)^2 + y^2}$$

Unit vector:

$$\hat{r}_2 = \frac{(x - a, y)}{r_2}$$

Electric field:

$$\vec{E}_2 = k\frac{2q}{r_2^2}\hat{r}_2 = k\frac{2q}{[(x-a)^2 + y^2]^{3/2}}(x - a, y)$$

Components:

$$E_{2x} = k\frac{2q(x - a)}{[(x-a)^2 + y^2]^{3/2}}$$

$$E_{2y} = k\frac{2qy}{[(x-a)^2 + y^2]^{3/2}}$$

### Total field

$$\vec{E}(x, y) = \vec{E}_1 + \vec{E}_2$$

$$E_x(x, y) = kq\left[\frac{x + a}{[(x+a)^2 + y^2]^{3/2}} + \frac{2(x - a)}{[(x-a)^2 + y^2]^{3/2}}\right]$$

$$E_y(x, y) = kq\left[\frac{y}{[(x+a)^2 + y^2]^{3/2}} + \frac{2y}{[(x-a)^2 + y^2]^{3/2}}\right]$$

---

## 2. Conditions for zero field components

### On the y-axis: $\vec{E}(0, y)$

Substituting $x = 0$:

$$E_x(0, y) = kq\left[\frac{a}{[a^2 + y^2]^{3/2}} + \frac{2(-a)}{[a^2 + y^2]^{3/2}}\right]$$

$$E_x(0, y) = kq\left[\frac{a - 2a}{[a^2 + y^2]^{3/2}}\right] = -\frac{kqa}{[a^2 + y^2]^{3/2}}$$

$$E_x(0, y) \neq 0 \text{ for any } y$$

$$E_y(0, y) = kqy\left[\frac{1}{[a^2 + y^2]^{3/2}} + \frac{2}{[a^2 + y^2]^{3/2}}\right] = \frac{3kqy}{[a^2 + y^2]^{3/2}}$$

$$E_y(0, y) = 0 \text{ only when } y = 0$$

**Conclusion:** On the y-axis, the field is zero only at the origin $(0, 0)$ if the two contributions cancel there.

### On the x-axis: $\vec{E}(x, 0)$

Substituting $y = 0$:

$$E_x(x, 0) = kq\left[\frac{x + a}{|x+a|^3} + \frac{2(x - a)}{|x-a|^3}\right]$$

$$E_y(x, 0) = 0$$

For $E_x(x, 0) = 0$:

$$\frac{x + a}{|x+a|^3} = -\frac{2(x - a)}{|x-a|^3}$$

**Case 1:** $x > a$ (both terms positive denominator)

$$\frac{x + a}{(x+a)^3} + \frac{2(x - a)}{(x-a)^3} = 0$$

$$\frac{1}{(x+a)^2} = -\frac{2}{(x-a)^2}$$

This has no real solution (left side positive, right side negative).

**Case 2:** $-a < x < a$

$$\frac{x + a}{(x+a)^3} - \frac{2(x - a)}{(x-a)^3} = 0$$

$$\frac{1}{(x+a)^2} = \frac{2}{(x-a)^2}$$

$$(x-a)^2 = 2(x+a)^2$$

$$x - a = -\sqrt{2}(x + a)$$

$$x - a = -\sqrt{2}x - \sqrt{2}a$$

$$x(1 + \sqrt{2}) = a(1 - \sqrt{2})$$

$$x = a\frac{1 - \sqrt{2}}{1 + \sqrt{2}} = a\frac{(1-\sqrt{2})^2}{(1+\sqrt{2})(1-\sqrt{2})} = a\frac{1 - 2\sqrt{2} + 2}{1 - 2} = a(3 - 2\sqrt{2})$$

$$x \approx -0.172a$$

**Zero field point on x-axis:** $x_0 = a(3 - 2\sqrt{2}) \approx -0.172a$

---

## 3. Calculate the field for given values

**Given:**
- $a = 0.2$ m
- $y = 0.3$ m  
- $q = 2$ μC $= 2 \times 10^{-6}$ C
- $k = 8.99 \times 10^9$ N⋅m²/C²

**At point $(0, 0.3)$:**

$$r_1^2 = (0 + 0.2)^2 + (0.3)^2 = 0.04 + 0.09 = 0.13 \text{ m}^2$$

$$r_1 = 0.3606 \text{ m}$$

$$r_2^2 = (0 - 0.2)^2 + (0.3)^2 = 0.04 + 0.09 = 0.13 \text{ m}^2$$

$$r_2 = 0.3606 \text{ m}$$

$$E_{1x} = 8.99 \times 10^9 \times \frac{2 \times 10^{-6} \times 0.2}{(0.13)^{3/2}} = 8.99 \times 10^9 \times \frac{4 \times 10^{-7}}{0.0468}$$

$$E_{1x} = 7.69 \times 10^4 \text{ N/C}$$

$$E_{2x} = 8.99 \times 10^9 \times \frac{2 \times 2 \times 10^{-6} \times (-0.2)}{(0.13)^{3/2}} = -1.54 \times 10^5 \text{ N/C}$$

$$E_x(0, 0.3) = 7.69 \times 10^4 - 1.54 \times 10^5 = -7.69 \times 10^4 \text{ N/C}$$

$$E_{1y} = 8.99 \times 10^9 \times \frac{2 \times 10^{-6} \times 0.3}{(0.13)^{3/2}} = 1.15 \times 10^5 \text{ N/C}$$

$$E_{2y} = 8.99 \times 10^9 \times \frac{2 \times 2 \times 10^{-6} \times 0.3}{(0.13)^{3/2}} = 2.31 \times 10^5 \text{ N/C}$$

$$E_y(0, 0.3) = 1.15 \times 10^5 + 2.31 \times 10^5 = 3.46 \times 10^5 \text{ N/C}$$

**Field at $(0, 0.3)$:**

$$\vec{E}(0, 0.3) = (-7.69 \times 10^4, 3.46 \times 10^5) \text{ N/C}$$

$$|\vec{E}| = \sqrt{(7.69 \times 10^4)^2 + (3.46 \times 10^5)^2} = 3.54 \times 10^5 \text{ N/C}$$

---

## 4. Investigate the limit $y \gg a$

For a point far from the x-axis where $y \gg a$:

$$r_1 \approx \sqrt{y^2} = y, \quad r_2 \approx \sqrt{y^2} = y$$

$$E_x(x, y) \approx kq\left[\frac{a}{y^3} + \frac{2(-a)}{y^3}\right] = -\frac{kqa}{y^3}$$

$$E_y(x, y) \approx kq\left[\frac{y}{y^3} + \frac{2y}{y^3}\right] = \frac{3kq}{y^2}$$

**Asymptotic behavior:**

- The $E_x$ component falls off as $y^{-3}$ (dipole-like for $x = 0$)
- The $E_y$ component falls off as $y^{-2}$ (monopole-like, dominated by $+2q$)

The field resembles that of a total charge $Q_{\text{total}} = q + 2q = 3q$ at large distances.

---

## 5. Does a point of zero field exist on the y-axis?

**Analysis on the y-axis ($x = 0$):**

$$E_x(0, y) = -\frac{kqa}{(a^2 + y^2)^{3/2}} \neq 0$$

Since $E_x$ is always nonzero on the y-axis, **no point of zero field exists on the y-axis**.

The field always has a leftward component (negative $x$ direction) at every point on the y-axis.

**Physical interpretation:** The charge $+q$ at $(-a, 0)$ pushes in the positive $x$ direction, while $+2q$ at $(a, 0)$ pushes twice as strongly in the negative $x$ direction. The asymmetry means these forces never cancel along the y-axis.

**Zero field location:** As found in section 2, the unique zero field point exists on the x-axis at:

$$x_0 = a(3 - 2\sqrt{2}) \approx -0.172a$$

This is between the two charges, closer to the weaker charge $+q$.

---

## Summary Table

| Quantity | Value | Units |
|----------|-------|-------|
| Position of $+q$ | $(-0.2, 0)$ | m |
| Position of $+2q$ | $(0.2, 0)$ | m |
| Field at $(0, 0.3)$ x-component | $-7.69 \times 10^4$ | N/C |
| Field at $(0, 0.3)$ y-component | $3.46 \times 10^5$ | N/C |
| Field magnitude at $(0, 0.3)$ | $3.54 \times 10^5$ | N/C |
| Zero field point on x-axis | $-0.0344$ | m |
