# Task 2 – Projectile Motion

## Setup

A body is launched with initial speed $v_0$ at angle $\alpha$ above the horizontal.
No air resistance. Gravitational acceleration $g$ acts downward.

**Initial conditions:**

$$
x(0) = 0, \qquad y(0) = 0
$$

$$
v_x(0) = v_0 \cos\alpha, \qquad v_y(0) = v_0 \sin\alpha
$$

---

## 1. Equations of Motion

**Horizontal direction** — no force acts, so acceleration is zero:

$$
\ddot{x} = 0
$$

Integrating once:

$$
\dot{x}(t) = v_0 \cos\alpha
$$

Integrating again:

$$
\boxed{x(t) = v_0 \cos\alpha \cdot t}
$$

**Vertical direction** — gravity acts downward:

$$
\ddot{y} = -g
$$

Integrating once:

$$
\dot{y}(t) = v_0 \sin\alpha - g t
$$

Integrating again:

$$
\boxed{y(t) = v_0 \sin\alpha \cdot t - \frac{1}{2} g t^2}
$$

---

## 2. Time of Flight

The projectile lands when $y(t) = 0$ again:

$$
v_0 \sin\alpha \cdot t - \frac{1}{2} g t^2 = 0
$$

Factor out $t$:

$$
t \left( v_0 \sin\alpha - \frac{1}{2} g t \right) = 0
$$

Two solutions:

- $t = 0$ — launch moment (trivial),
- $t = T$ — landing moment:

$$
v_0 \sin\alpha - \frac{1}{2} g T = 0
\quad \Longrightarrow \quad
\boxed{T = \frac{2 v_0 \sin\alpha}{g}}
$$

**Interpretation:** The total flight time is twice the time to reach the apex, because the trajectory is symmetric.

---

## 3. Maximum Height

At the apex, the vertical velocity component is zero:

$$
\dot{y}(t_{\text{top}}) = 0 \quad \Longrightarrow \quad v_0 \sin\alpha - g\, t_{\text{top}} = 0 \quad \Longrightarrow \quad t_{\text{top}} = \frac{v_0 \sin\alpha}{g}
$$

Substitute into $y(t)$:

$$
H = v_0 \sin\alpha \cdot \frac{v_0 \sin\alpha}{g} - \frac{1}{2} g \left(\frac{v_0 \sin\alpha}{g}\right)^2
$$

$$
H = \frac{v_0^2 \sin^2\alpha}{g} - \frac{1}{2} \cdot \frac{v_0^2 \sin^2\alpha}{g}
$$

$$
\boxed{H = \frac{v_0^2 \sin^2\alpha}{2g}}
$$

**Note:** $H$ is maximized when $\sin\alpha = 1$, i.e., $\alpha = 90°$ (straight up).

---

## 4. Range

The horizontal distance traveled during the full flight $T$:

$$
L = x(T) = v_0 \cos\alpha \cdot T = v_0 \cos\alpha \cdot \frac{2 v_0 \sin\alpha}{g}
$$

Using the double-angle identity $2\sin\alpha\cos\alpha = \sin(2\alpha)$:

$$
\boxed{L = \frac{v_0^2 \sin(2\alpha)}{g}}
$$

---

## 5. Angle for Maximum Range

The range $L = \dfrac{v_0^2 \sin(2\alpha)}{g}$ is maximized when $\sin(2\alpha) = 1$:

$$
2\alpha = 90° \quad \Longrightarrow \quad \boxed{\alpha = 45°}
$$

**Interpretation:** At $\alpha = 45°$ there is the optimal balance between horizontal speed and flight time. Shallower angles give more horizontal speed but shorter flight time; steeper angles give longer flight time but less horizontal speed.

---

## 6. Summary Table

| Quantity | Formula |
|---|---|
| Time of flight | $T = \dfrac{2v_0 \sin\alpha}{g}$ |
| Maximum height | $H = \dfrac{v_0^2 \sin^2\alpha}{2g}$ |
| Range | $L = \dfrac{v_0^2 \sin(2\alpha)}{g}$ |
| Optimal angle | $\alpha = 45°$ |

---

## 7. Elimination of Parameter $t$ (Trajectory Equation)

From the horizontal equation: $t = \dfrac{x}{v_0 \cos\alpha}$

Substitute into $y(t)$:

$$
y = v_0 \sin\alpha \cdot \frac{x}{v_0 \cos\alpha} - \frac{1}{2}g\left(\frac{x}{v_0\cos\alpha}\right)^2
$$

$$
\boxed{y = x\tan\alpha - \frac{g}{2v_0^2\cos^2\alpha}\, x^2}
$$

This is a **downward-opening parabola** in the $xy$ plane.