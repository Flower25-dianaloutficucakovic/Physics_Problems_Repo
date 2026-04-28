# Problem 1 – Task 5: Trajectory Curvature and Normal Acceleration

## Ellipse parametrization

$$
x = a\cos t, \qquad y = b\sin t
$$

---

## 1. Velocity and Acceleration Vectors

**Velocity:**

$$
\vec{v}(t) = \frac{d\vec{r}}{dt} = \left(-a\sin t,\ b\cos t\right)
$$

**Acceleration:**

$$
\vec{a}(t) = \frac{d\vec{v}}{dt} = \left(-a\cos t,\ -b\sin t\right)
$$

Note that $\vec{a}(t) = -\vec{r}(t)$, i.e., the acceleration always points toward the origin (center of the ellipse).

---

## 2. Unit Tangent Vector

The magnitude of velocity:

$$
|\vec{v}(t)| = \sqrt{a^2\sin^2 t + b^2\cos^2 t}
$$

Unit tangent vector:

$$
\hat{T}(t) = \frac{\vec{v}(t)}{|\vec{v}(t)|} = \frac{(-a\sin t,\ b\cos t)}{\sqrt{a^2\sin^2 t + b^2\cos^2 t}}
$$

---

## 3. Decomposition of Acceleration into Tangential and Normal Components

The **tangential acceleration** is the projection of $\vec{a}$ onto $\hat{T}$:

$$
a_t(t) = \vec{a}(t) \cdot \hat{T}(t) = \frac{(-a\cos t)(-a\sin t) + (-b\sin t)(b\cos t)}{\sqrt{a^2\sin^2 t + b^2\cos^2 t}}
$$

$$
a_t(t) = \frac{a^2\sin t\cos t - b^2\sin t\cos t}{\sqrt{a^2\sin^2 t + b^2\cos^2 t}} = \frac{(a^2 - b^2)\sin t\cos t}{\sqrt{a^2\sin^2 t + b^2\cos^2 t}}
$$

The tangential acceleration vector:

$$
\vec{a}_t(t) = a_t(t)\,\hat{T}(t)
$$

The **normal acceleration vector** is the remainder:

$$
\vec{a}_n(t) = \vec{a}(t) - \vec{a}_t(t)
$$

The **magnitude of normal acceleration**:

$$
a_n(t) = \sqrt{|\vec{a}(t)|^2 - a_t(t)^2}
$$

where:

$$
|\vec{a}(t)|^2 = a^2\cos^2 t + b^2\sin^2 t
$$

$$
a_t(t)^2 = \frac{(a^2-b^2)^2\sin^2 t\cos^2 t}{a^2\sin^2 t + b^2\cos^2 t}
$$

Therefore:

$$
\boxed{a_n(t) = \frac{ab}{\sqrt{a^2\sin^2 t + b^2\cos^2 t}}}
$$

**Derivation detail** — expanding $|\vec{a}|^2 - a_t^2$:

$$
a_n^2 = \frac{(a^2\cos^2 t + b^2\sin^2 t)(a^2\sin^2 t + b^2\cos^2 t) - (a^2-b^2)^2\sin^2 t\cos^2 t}{a^2\sin^2 t + b^2\cos^2 t}
$$

The numerator simplifies to $a^2 b^2$ (using $\sin^2+\cos^2=1$), giving:

$$
a_n(t) = \frac{ab}{\sqrt{a^2\sin^2 t + b^2\cos^2 t}}
$$

---

## 4. Radius of Curvature at $t = 0$

Using the relation $a_n = \dfrac{v^2}{R}$, we solve for $R$:

$$
R = \frac{v^2}{a_n}
$$

At $t = 0$:

$$
\vec{v}(0) = (0,\ b) \implies |\vec{v}(0)|^2 = b^2
$$

$$
a_n(0) = \frac{ab}{\sqrt{a^2 \cdot 0 + b^2 \cdot 1}} = \frac{ab}{b} = a
$$

Therefore:

$$
\boxed{R(t=0) = \frac{b^2}{a}}
$$

This is the radius of curvature at the end of the **major semi-axis** (vertex $(a, 0)$).

---

## 5. Comparison with a Circle ($a = b = R_0$)

For a circle:

$$
R_{\text{circle}} = \frac{R_0^2}{R_0} = R_0
$$

which is just the radius of the circle — consistent with the known result that a circle has constant curvature $\kappa = 1/R_0$.

---

## Physical Interpretation

**Does greater curvature imply greater normal acceleration?**

Yes. Since $a_n = v^2/R$, for a fixed speed a smaller radius of curvature $R$ (more "curved" path) gives a larger normal acceleration $a_n$.

**Where is the ellipse more curved: major or minor semi-axis?**

At the end of the **minor semi-axis** ($t = \pi/2$), the radius of curvature is:

$$
R\!\left(\tfrac{\pi}{2}\right) = \frac{a^2}{b}
$$

Since $a > b$, we have $\dfrac{a^2}{b} > \dfrac{b^2}{a}$, so the curvature $\kappa = 1/R$ is **larger** at the end of the **major semi-axis**. The trajectory is more "curved" (tighter bend) at the tips of the longer axis.

**Why does normal acceleration cause change of direction?**

The tangential component $\vec{a}_t$ changes the **speed** (magnitude of $\vec{v}$), while the normal component $\vec{a}_n$ is always perpendicular to $\vec{v}$ and therefore changes only its **direction**. By Newton's second law, a net force perpendicular to the velocity deflects the trajectory without doing work — exactly the role of the centripetal force in circular/curved motion.