# Task 10 – Angular Momentum in Circular Motion

## Given

Circular motion in the $xy$ plane:

$$
\vec{r}(t) = \bigl(R\cos(\omega t),\ R\sin(\omega t),\ 0\bigr)
$$

---

## 1. Velocity

Differentiate $\vec{r}(t)$ component by component:

$$
\vec{v}(t) = \dot{\vec{r}}(t) = \frac{d}{dt}\bigl(R\cos(\omega t),\ R\sin(\omega t),\ 0\bigr)
$$

$$
\boxed{\vec{v}(t) = \bigl(-R\omega\sin(\omega t),\ R\omega\cos(\omega t),\ 0\bigr)}
$$

---

## 2. Angular Momentum

$$
\vec{L}(t) = m\,\vec{r}(t) \times \vec{v}(t)
$$

Compute the cross product using the determinant formula:

$$
\vec{r} \times \vec{v} =
\begin{vmatrix}
\hat{i} & \hat{j} & \hat{k} \\
R\cos(\omega t) & R\sin(\omega t) & 0 \\
-R\omega\sin(\omega t) & R\omega\cos(\omega t) & 0
\end{vmatrix}
$$

Expand along the third row (only the $\hat{k}$ component survives since both vectors lie in the $xy$ plane):

$$
\vec{r} \times \vec{v} = \hat{k}\,\bigl[R\cos(\omega t)\cdot R\omega\cos(\omega t) - R\sin(\omega t)\cdot(-R\omega\sin(\omega t))\bigr]
$$

$$
= \hat{k}\,\bigl[R^2\omega\cos^2(\omega t) + R^2\omega\sin^2(\omega t)\bigr]
$$

$$
= \hat{k}\,R^2\omega\bigl[\cos^2(\omega t) + \sin^2(\omega t)\bigr]
= \hat{k}\,R^2\omega
$$

Therefore:

$$
\boxed{\vec{L}(t) = m\,\vec{r}(t) \times \vec{v}(t) = \bigl(0,\ 0,\ mR^2\omega\bigr)}
$$

---

## 3. Magnitude and Direction of $\vec{L}$

**Magnitude:**

$$
|\vec{L}| = \sqrt{0^2 + 0^2 + (mR^2\omega)^2} = mR^2\omega = \text{const}
$$

The magnitude is constant — it does not depend on $t$.

**Direction:**

$$
\vec{L} = mR^2\omega\,\hat{k}
$$

$\vec{L}$ points along the $+z$ axis, which is **perpendicular to the $xy$ plane** of motion. ✓

---

## 4. Right-Hand Rule Interpretation

Using the right-hand rule for $\vec{r} \times \vec{v}$:

- Point fingers along $\vec{r}$ (radially outward).
- Curl them toward $\vec{v}$ (tangential, in the direction of motion).
- The thumb points in the $+z$ direction (out of the $xy$ plane).

For **counterclockwise** motion (positive $\omega$), $\vec{L}$ points **upward** ($+\hat{k}$).  
For **clockwise** motion (negative $\omega$), $\vec{L}$ points **downward** ($-\hat{k}$).

---

## 5. (Optional) Centripetal Force and Torque

The centripetal force always points toward the origin:

$$
\vec{F} = -m\omega^2\,\vec{r}(t) = \bigl(-m\omega^2 R\cos(\omega t),\ -m\omega^2 R\sin(\omega t),\ 0\bigr)
$$

**Torque:**

$$
\vec{\tau} = \vec{r} \times \vec{F} = \vec{r} \times \bigl(-m\omega^2\vec{r}\bigr) = -m\omega^2\,(\vec{r} \times \vec{r}) = \vec{0}
$$

since any vector crossed with itself is zero.

**Verification of $\vec{\tau} = \dfrac{d\vec{L}}{dt}$:**

$$
\frac{d\vec{L}}{dt} = \frac{d}{dt}\bigl(0,\ 0,\ mR^2\omega\bigr) = \vec{0}
$$

$$
\vec{\tau} = \vec{0} = \frac{d\vec{L}}{dt} \quad \checkmark
$$

This confirms that the centripetal force produces **zero torque**, and therefore angular momentum is **conserved** in uniform circular motion.