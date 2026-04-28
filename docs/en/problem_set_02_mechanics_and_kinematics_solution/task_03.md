# Task 3 – Elimination of Time and Interpretation of Acceleration

## Given

$$
x(t) = 2t^2, \qquad y(t) = 3t^3
$$

---

## 1. Eliminating the Parameter $t$

From the first equation, solve for $t$:

$$
x = 2t^2 \implies t^2 = \frac{x}{2} \implies t = \sqrt{\frac{x}{2}}
$$

Substitute into $y(t)$:

$$
y = 3t^3 = 3\left(\sqrt{\frac{x}{2}}\right)^3 = 3 \cdot \frac{x^{3/2}}{2^{3/2}} = \frac{3}{2\sqrt{2}}\, x^{3/2}
$$

$$
\boxed{y = \frac{3}{2\sqrt{2}}\, x^{3/2}}
$$

This is a **power curve** (half-parabola in the $xy$ plane), defined for $x \geq 0$.

---

## 2. Velocity Vector $\vec{v}(t)$

Differentiate each component with respect to $t$:

$$
v_x(t) = \frac{dx}{dt} = \frac{d}{dt}(2t^2) = 4t
$$

$$
v_y(t) = \frac{dy}{dt} = \frac{d}{dt}(3t^3) = 9t^2
$$

$$
\boxed{\vec{v}(t) = (4t,\ 9t^2)}
$$

---

## 3. Magnitude of Velocity $|\vec{v}(t)|$

$$
|\vec{v}(t)| = \sqrt{v_x^2 + v_y^2} = \sqrt{(4t)^2 + (9t^2)^2}
$$

$$
= \sqrt{16t^2 + 81t^4} = |t|\sqrt{16 + 81t^2}
$$

$$
\boxed{|\vec{v}(t)| = |t|\sqrt{16 + 81t^2}}
$$

At $t = 0$: $|\vec{v}(0)| = 0$ — the body momentarily stops at the origin.

---

## 4. Acceleration Vector $\vec{a}(t)$

Differentiate $\vec{v}(t)$:

$$
a_x(t) = \frac{dv_x}{dt} = \frac{d}{dt}(4t) = 4
$$

$$
a_y(t) = \frac{dv_y}{dt} = \frac{d}{dt}(9t^2) = 18t
$$

$$
\boxed{\vec{a}(t) = (4,\ 18t)}
$$

---

## 5. Magnitude of Acceleration $|\vec{a}(t)|$

$$
|\vec{a}(t)| = \sqrt{a_x^2 + a_y^2} = \sqrt{16 + (18t)^2} = \sqrt{16 + 324t^2}
$$

$$
\boxed{|\vec{a}(t)| = \sqrt{16 + 324t^2}}
$$

---

## 6. Is the Acceleration Constant?

The $x$-component of acceleration is constant: $a_x = 4$.  
The $y$-component depends on time: $a_y = 18t$.

Therefore the **acceleration vector is not constant** — it changes direction and magnitude as $t$ varies.

$$
\vec{a}(t) = (4,\ 18t) \neq \text{const}
$$

Only the horizontal component of the acceleration is constant; the vertical component grows linearly with time.

---

## Summary Table

| Quantity | Expression |
|---|---|
| Trajectory (no $t$) | $y = \dfrac{3}{2\sqrt{2}}\, x^{3/2}$ |
| $\vec{v}(t)$ | $(4t,\ 9t^2)$ |
| $\lvert\vec{v}(t)\rvert$ | $\lvert t\rvert\sqrt{16 + 81t^2}$ |
| $\vec{a}(t)$ | $(4,\ 18t)$ |
| $\lvert\vec{a}(t)\rvert$ | $\sqrt{16 + 324t^2}$ |
| Acceleration constant? | **No** — only $a_x = 4$ is constant |