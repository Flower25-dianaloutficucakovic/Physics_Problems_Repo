# Task 4 – Circular Motion

## Given

A body moves in a circle of radius $R$ with constant angular velocity $\omega$.

---

## 1. Position, Velocity, and Acceleration Vectors

### Position vector

$$
\vec{r}(t) = \bigl(R\cos(\omega t),\ R\sin(\omega t)\bigr)
$$

### Velocity vector

Differentiate $\vec{r}(t)$ with respect to $t$:

$$
\vec{v}(t) = \dot{\vec{r}}(t) = \frac{d}{dt}\bigl(R\cos(\omega t),\ R\sin(\omega t)\bigr)
$$

$$
\boxed{\vec{v}(t) = \bigl(-R\omega\sin(\omega t),\ R\omega\cos(\omega t)\bigr)}
$$

### Acceleration vector

Differentiate $\vec{v}(t)$ with respect to $t$:

$$
\vec{a}(t) = \dot{\vec{v}}(t) = \frac{d}{dt}\bigl(-R\omega\sin(\omega t),\ R\omega\cos(\omega t)\bigr)
$$

$$
\boxed{\vec{a}(t) = \bigl(-R\omega^2\cos(\omega t),\ -R\omega^2\sin(\omega t)\bigr)}
$$

---

## 2. Magnitudes

### Magnitude of position (radius):

$$
|\vec{r}(t)| = \sqrt{R^2\cos^2(\omega t) + R^2\sin^2(\omega t)} = R\sqrt{\cos^2(\omega t) + \sin^2(\omega t)} = R
$$

$$
\boxed{|\vec{r}(t)| = R = \text{const}}
$$

### Magnitude of velocity (speed):

$$
|\vec{v}(t)| = \sqrt{(-R\omega\sin(\omega t))^2 + (R\omega\cos(\omega t))^2}
= R\omega\sqrt{\sin^2(\omega t) + \cos^2(\omega t)}
$$

$$
\boxed{|\vec{v}(t)| = R\omega = \text{const}}
$$

### Magnitude of acceleration:

$$
|\vec{a}(t)| = \sqrt{(-R\omega^2\cos(\omega t))^2 + (-R\omega^2\sin(\omega t))^2}
= R\omega^2\sqrt{\cos^2(\omega t) + \sin^2(\omega t)}
$$

$$
\boxed{|\vec{a}(t)| = R\omega^2 = \text{const}}
$$

---

## 3. The Acceleration is Centripetal

To show that $\vec{a}(t)$ always points toward the origin, we compare it with $\vec{r}(t)$:

$$
\vec{a}(t) = \bigl(-R\omega^2\cos(\omega t),\ -R\omega^2\sin(\omega t)\bigr) = -\omega^2\bigl(R\cos(\omega t),\ R\sin(\omega t)\bigr)
$$

$$
\boxed{\vec{a}(t) = -\omega^2\,\vec{r}(t)}
$$

**Conclusion:** The acceleration vector is always **antiparallel** to the position vector — it points directly toward the center of the circle. This is the definition of **centripetal** (center-seeking) acceleration.

We can also verify this by checking orthogonality of $\vec{v}$ and $\vec{a}$:

$$
\vec{v}(t) \cdot \vec{a}(t) = (-R\omega\sin(\omega t))(-R\omega^2\cos(\omega t)) + (R\omega\cos(\omega t))(-R\omega^2\sin(\omega t))
$$

$$
= R^2\omega^3\sin(\omega t)\cos(\omega t) - R^2\omega^3\cos(\omega t)\sin(\omega t) = 0
$$

$$
\boxed{\vec{v}(t) \cdot \vec{a}(t) = 0}
$$

The velocity is always **perpendicular** to the acceleration, which confirms that the speed $|\vec{v}|$ does not change — the acceleration only changes the **direction** of motion, not its magnitude.

---

## 4. Physical Interpretation

| Quantity | Expression | Magnitude |
|---|---|---|
| Position | $\vec{r}(t)$ | $R$ |
| Velocity | $\vec{v}(t)$ | $R\omega$ |
| Acceleration | $\vec{a}(t) = -\omega^2\vec{r}(t)$ | $R\omega^2$ |

Key relationships:

$$
v = R\omega, \qquad a_c = R\omega^2 = \frac{v^2}{R}
$$

- $\vec{r}$, $\vec{v}$, $\vec{a}$ are all **constant in magnitude** throughout the motion.
- $\vec{v} \perp \vec{r}$ (tangent to the circle).
- $\vec{a} \perp \vec{v}$ and $\vec{a} \parallel -\vec{r}$ (toward the center).
- The centripetal acceleration is responsible exclusively for **changing the direction** of the velocity vector.