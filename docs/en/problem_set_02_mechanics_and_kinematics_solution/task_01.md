# Task 1 – Uniform and Uniformly Accelerated Motion

## Given

The equation of motion:

$$
x(t) = x_0 + v_0 t + \frac{1}{2}a t^2
$$

---

## Part 1 – Velocity and Acceleration

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

The acceleration is **constant** — this is the definition of uniformly accelerated motion.

---

## Part 2 – Numerical Example

### Given parameters:

$$
x_0 = 0\ \text{m}, \qquad v_0 = 5\ \frac{\text{m}}{\text{s}}, \qquad a = -2\ \frac{\text{m}}{\text{s}^2}
$$

### Stopping time

The body stops when $v(t) = 0$:

$$
v_0 + at = 0 \implies t_{\text{stop}} = -\frac{v_0}{a}
$$

$$
t_{\text{stop}} = -\frac{5}{-2} = \boxed{2.5\ \text{s}}
$$

### Maximum velocity

Since $a < 0$, the velocity **decreases** over time. Therefore:

- The **maximum velocity** occurs at $t = 0$:

$$
v_{\max} = v_0 = 5\ \frac{\text{m}}{\text{s}}
$$

**General rule:**
- If $a > 0$: velocity increases without bound — $v_{\max}$ occurs at the latest time considered.
- If $a < 0$: velocity decreases — $v_{\max} = v_0$ at $t = 0$, then the body decelerates and stops.
- If $a = 0$: uniform motion, $v(t) = v_0 = \text{const}$.

### Maximum displacement

The maximum displacement is reached at $t = t_{\text{stop}} = 2.5\ \text{s}$, because after this moment the body would move backwards (velocity becomes negative):

$$
x_{\max} = x(t_{\text{stop}}) = x_0 + v_0 t_{\text{stop}} + \frac{1}{2}a\, t_{\text{stop}}^2
$$

$$
x_{\max} = 0 + 5 \cdot 2.5 + \frac{1}{2}\cdot(-2)\cdot(2.5)^2
$$

$$
x_{\max} = 12.5 - 1 \cdot 6.25 = 12.5 - 6.25
$$

$$
\boxed{x_{\max} = 6.25\ \text{m}}
$$

---

## Part 3 – Visualization (HTML/JS)

Save the file below as `task_01_visualization.html` in the same solution folder and open it in a browser.

The app plots $x(t)$, $v(t)$, $a(t)$ with sliders for $x_0$, $v_0$, and $a$.