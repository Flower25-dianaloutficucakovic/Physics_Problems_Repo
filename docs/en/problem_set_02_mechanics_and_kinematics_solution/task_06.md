# Problem 6 – Cycloid: Trajectory of a Point on a Rolling Circle

## Given Information

A circle of radius $R$ rolls without slipping along the $x$-axis. A point on the rim traces a cycloid with parametric equations:

$$x(t) = R(\omega t - \sin(\omega t))$$

$$y(t) = R(1 - \cos(\omega t))$$

---

## 1. Velocity and Acceleration Vectors

### Velocity $\vec{v}(t)$

Taking the time derivatives of position components:

$$v_x(t) = \frac{dx}{dt} = R\omega(1 - \cos(\omega t))$$

$$v_y(t) = \frac{dy}{dt} = R\omega\sin(\omega t)$$

**Velocity vector:**

$$\vec{v}(t) = R\omega\begin{pmatrix} 1 - \cos(\omega t) \\ \sin(\omega t) \end{pmatrix}$$

### Acceleration $\vec{a}(t)$

Taking derivatives of velocity components:

$$a_x(t) = \frac{dv_x}{dt} = R\omega^2\sin(\omega t)$$

$$a_y(t) = \frac{dv_y}{dt} = R\omega^2\cos(\omega t)$$

**Acceleration vector:**

$$\vec{a}(t) = R\omega^2\begin{pmatrix} \sin(\omega t) \\ \cos(\omega t) \end{pmatrix}$$

---

## 2. Magnitude of Velocity

$$|\vec{v}(t)| = R\omega\sqrt{(1 - \cos(\omega t))^2 + \sin^2(\omega t)}$$

Expanding:

$$(1 - \cos(\omega t))^2 + \sin^2(\omega t) = 1 - 2\cos(\omega t) + \cos^2(\omega t) + \sin^2(\omega t)$$

$$= 1 - 2\cos(\omega t) + 1 = 2(1 - \cos(\omega t))$$

Using the identity $1 - \cos(\theta) = 2\sin^2(\theta/2)$:

$$|\vec{v}(t)| = R\omega\sqrt{2 \cdot 2\sin^2(\omega t/2)} = 2R\omega|\sin(\omega t/2)|$$

**For $0 \leq \omega t \leq 2\pi$:**

$$|\vec{v}(t)| = 2R\omega\sin(\omega t/2)$$

### When Does the Point Temporarily Stop?

The velocity magnitude becomes zero when:

$$\sin(\omega t/2) = 0 \implies \omega t = 0, 2\pi, 4\pi, \ldots$$

$$\boxed{\text{Stopping times: } t = \frac{2\pi n}{\omega} \text{ where } n = 0, 1, 2, \ldots}$$

At these moments, the point on the rim touches the ground momentarily. This happens once per complete rotation of the circle.

---

## 3. Magnitude of Acceleration

$$|\vec{a}(t)| = R\omega^2\sqrt{\sin^2(\omega t) + \cos^2(\omega t)} = R\omega^2$$

**The acceleration magnitude is constant!**

### Maximum Values

- **Maximum $|\vec{v}|$**: $|\vec{v}|_{\max} = 2R\omega$ (occurs at $\omega t = \pi$, the top of the circle)

- **Maximum $|\vec{a}|$**: $|\vec{a}|_{\max} = R\omega^2$ (constant for all $t$)

The maximum velocity occurs when the point is at the top of the rolling circle, moving fastest relative to the ground. The acceleration is centripetal, always pointing toward the center of the rolling circle.

---

## 4. Physical Interpretation

| Aspect | Value | Meaning |
|--------|-------|---------|
| **Velocity at bottom** | $0$ | Point touches ground, momentarily at rest |
| **Velocity at top** | $2R\omega$ | Point moves fastest, double the center's speed |
| **Acceleration magnitude** | $R\omega^2$ | Constant centripetal acceleration toward circle center |
| **Acceleration direction** | Toward circle center | Always perpendicular to velocity (except at cusps) |

---

## 5. Cycloid Properties Summary

- **Period**: $T = \frac{2\pi}{\omega}$ (one complete arch per circle rotation)

- **Arc length of one arch**: $s = 8R$

- **Height of one arch**: $h = 2R$

- **Cusps**: Located at $\omega t = 2\pi n$ (ground contact points)

- **The velocity is NOT constant**, unlike circular motion in the circle's frame

