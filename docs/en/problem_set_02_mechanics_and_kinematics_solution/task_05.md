# Task 5 – Elliptical Motion (Purely Kinematic)

## Given

$$
x(t) = a\cos(\omega t), \qquad y(t) = b\sin(\omega t)
$$

---

## 1. Velocity Vector

Differentiate each component with respect to $t$:

$$
v_x(t) = \dot{x}(t) = -a\omega\sin(\omega t)
$$

$$
v_y(t) = \dot{y}(t) = b\omega\cos(\omega t)
$$

$$
\boxed{\vec{v}(t) = \bigl(-a\omega\sin(\omega t),\ b\omega\cos(\omega t)\bigr)}
$$

---

## 2. Acceleration Vector

Differentiate the velocity:

$$
a_x(t) = \dot{v}_x(t) = -a\omega^2\cos(\omega t)
$$

$$
a_y(t) = \dot{v}_y(t) = -b\omega^2\sin(\omega t)
$$

$$
\boxed{\vec{a}(t) = \bigl(-a\omega^2\cos(\omega t),\ -b\omega^2\sin(\omega t)\bigr)}
$$

Notice the elegant relationship:

$$
\vec{a}(t) = -\omega^2\,\vec{r}(t)
$$

The acceleration always points **toward the center** (the origin), scaled by $\omega^2$.

---

## 3. Is the Magnitude of Velocity Constant?

Compute $|\vec{v}(t)|$:

$$
|\vec{v}(t)|^2 = v_x^2 + v_y^2 = a^2\omega^2\sin^2(\omega t) + b^2\omega^2\cos^2(\omega t)
$$

$$
|\vec{v}(t)| = \omega\sqrt{a^2\sin^2(\omega t) + b^2\cos^2(\omega t)}
$$

**In general ($a \neq b$): NO**, the speed is not constant — it varies with time.

**Special case $a = b = R$ (circle):**

$$
|\vec{v}| = \omega\sqrt{R^2\sin^2(\omega t) + R^2\cos^2(\omega t)} = \omega R = \text{const}
$$

Only for a circle is the speed constant.

---

## 4. Where Is the Velocity Maximum?

$$
|\vec{v}(t)|^2 = \omega^2\bigl[a^2\sin^2(\omega t) + b^2\cos^2(\omega t)\bigr]
$$

Rewrite using $\sin^2 = 1 - \cos^2$:

$$
|\vec{v}(t)|^2 = \omega^2\bigl[a^2 - (a^2 - b^2)\cos^2(\omega t)\bigr]
$$

**Case $a > b$ (major axis along $x$):**

- $(a^2 - b^2) > 0$, so the expression is **maximized** when $\cos^2(\omega t) = 0$, i.e., $\omega t = \frac{\pi}{2} + k\pi$
- This corresponds to the **ends of the minor semi-axis**: $(0, \pm b)$

$$
|\vec{v}|_{\max} = a\omega \quad \text{at } (x, y) = (0, \pm b)
$$

- The expression is **minimized** when $\cos^2(\omega t) = 1$, i.e., $\omega t = k\pi$
- This corresponds to the **ends of the major semi-axis**: $(\pm a, 0)$

$$
|\vec{v}|_{\min} = b\omega \quad \text{at } (x, y) = (\pm a, 0)
$$

**Physical interpretation:** The body moves fastest where the ellipse is most curved (the narrow ends), and slowest at the flat ends — analogous to Kepler's second law.

---

## 5. Magnitude of Acceleration

$$
|\vec{a}(t)|^2 = a^2\omega^4\cos^2(\omega t) + b^2\omega^4\sin^2(\omega t)
$$

$$
|\vec{a}(t)| = \omega^2\sqrt{a^2\cos^2(\omega t) + b^2\sin^2(\omega t)}
$$

Again, this is **not constant** unless $a = b$.

**Maximum of $|\vec{a}|$:** when $\cos^2(\omega t) = 1$ → at $(\pm a, 0)$:

$$
|\vec{a}|_{\max} = a\omega^2
$$

**Minimum of $|\vec{a}|$:** when $\sin^2(\omega t) = 1$ → at $(0, \pm b)$:

$$
|\vec{a}|_{\min} = b\omega^2
$$

Note: $|\vec{a}|$ is **largest where $|\vec{v}|$ is smallest**, and vice versa.

---

## Summary Table

| Quantity | General expression | Maximum | Minimum |
|---|---|---|---|
| $\|\vec{v}(t)\|$ | $\omega\sqrt{a^2\sin^2(\omega t)+b^2\cos^2(\omega t)}$ | $a\omega$ at $(0,\pm b)$ | $b\omega$ at $(\pm a, 0)$ |
| $\|\vec{a}(t)\|$ | $\omega^2\sqrt{a^2\cos^2(\omega t)+b^2\sin^2(\omega t)}$ | $a\omega^2$ at $(\pm a,0)$ | $b\omega^2$ at $(0,\pm b)$ |

*(valid for $a > b > 0$)*