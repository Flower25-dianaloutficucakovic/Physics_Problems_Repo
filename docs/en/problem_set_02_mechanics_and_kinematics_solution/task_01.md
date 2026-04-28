# Task 1 – Uniform and Uniformly Accelerated Motion

## Given

The equation of motion:

$$
x(t) = x_0 + v_0 t + \frac{1}{2} a t^2
$$

---

## 1. Velocity and Acceleration

**Velocity** — first derivative of position with respect to time:

$$
v(t) = \frac{dx}{dt} = \frac{d}{dt}\left(x_0 + v_0 t + \frac{1}{2}a t^2\right)
$$

$$
\boxed{v(t) = v_0 + at}
$$

**Acceleration** — second derivative of position (first derivative of velocity):

$$
a(t) = \frac{dv}{dt} = \frac{d}{dt}(v_0 + at)
$$

$$
\boxed{a(t) = a = \text{const}}
$$

The acceleration is constant — this confirms the motion is **uniformly accelerated**.

---

## 2. Numerical Example

Parameters: $x_0 = 0$, $v_0 = 5\ \text{m/s}$, $a = -2\ \text{m/s}^2$

The equations become:

$$
x(t) = 5t - t^2, \qquad v(t) = 5 - 2t, \qquad a(t) = -2\ \text{m/s}^2
$$

### Stopping Time

The body stops when $v(t) = 0$:

$$
v_0 + at = 0 \implies t_{\text{stop}} = -\frac{v_0}{a}
$$

$$
t_{\text{stop}} = -\frac{5}{-2} = \boxed{2.5\ \text{s}}
$$

### Maximum Velocity

Since $a < 0$, the velocity **decreases** over time. The maximum velocity occurs at $t = 0$:

$$
v_{\text{max}} = v(0) = v_0 = \boxed{5\ \text{m/s}}
$$

**General rule:**
- If $a > 0$: velocity increases indefinitely — there is no maximum (in the classical sense).
- If $a < 0$: velocity decreases; maximum is at $t = 0$ (assuming $v_0 > 0$).
- If $a = 0$: uniform motion, $v = v_0 = \text{const}$.

### Maximum Displacement

Maximum displacement occurs at $t = t_{\text{stop}} = 2.5\ \text{s}$ (when the body momentarily stops):

$$
x_{\text{max}} = x(t_{\text{stop}}) = x_0 + v_0 t_{\text{stop}} + \frac{1}{2}a\, t_{\text{stop}}^2
$$

$$
x_{\text{max}} = 0 + 5 \cdot 2.5 + \frac{1}{2}(-2)(2.5)^2
$$

$$
x_{\text{max}} = 12.5 - \frac{1}{2} \cdot 2 \cdot 6.25 = 12.5 - 6.25
$$

$$
\boxed{x_{\text{max}} = 6.25\ \text{m}}
$$

Alternatively, using the kinematic formula $v^2 = v_0^2 + 2a\,\Delta x$ with $v = 0$:

$$
0 = v_0^2 + 2a\,x_{\text{max}} \implies x_{\text{max}} = -\frac{v_0^2}{2a} = -\frac{25}{-4} = 6.25\ \text{m} \quad \checkmark
$$

---

## 3. Summary Table

| Quantity | Formula | Value (numerical example) |
|---|---|---|
| Stopping time | $t_{\text{stop}} = -v_0/a$ | $2.5\ \text{s}$ |
| Maximum velocity | $v_{\text{max}} = v_0$ (for $a < 0$) | $5\ \text{m/s}$ |
| Maximum displacement | $x_{\text{max}} = -v_0^2/(2a)$ | $6.25\ \text{m}$ |

---

## Physical Interpretation

- The position $x(t)$ is a **parabola** opening downward (since $a < 0$).
- The velocity $v(t)$ is a **linear function** decreasing from $5\ \text{m/s}$ to $0$ at $t = 2.5\ \text{s}$, then becoming negative (body reverses direction).
- The acceleration $a(t)$ is a **horizontal line** at $-2\ \text{m/s}^2$ — constant throughout.