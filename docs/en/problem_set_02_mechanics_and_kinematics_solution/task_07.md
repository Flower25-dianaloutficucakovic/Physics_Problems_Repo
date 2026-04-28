# Problem 7 – 2D Motion with a Given Acceleration

## Given Information

- Acceleration: $\vec{a} = (2, -3)$ m/s²
- Initial velocity: $\vec{v}(0) = (1, 0)$ m/s
- Initial position: $\vec{r}(0) = (0, 0)$ m

---

## Part 1: Determine $\vec{v}(t)$

### Solution

Since acceleration is constant, we integrate to find velocity:

$$
\vec{v}(t) = \vec{v}(0) + \int_0^t \vec{a} \, dt'
$$

$$
\vec{v}(t) = \vec{v}(0) + \vec{a} \cdot t
$$

Substituting the given values:

$$
\vec{v}(t) = (1, 0) + (2, -3) \cdot t
$$

$$
\boxed{\vec{v}(t) = (1 + 2t, -3t) \text{ m/s}}
$$

### Components:

$$
v_x(t) = 1 + 2t
$$

$$
v_y(t) = -3t
$$

### Speed (magnitude of velocity):

$$
|\vec{v}(t)| = \sqrt{v_x^2(t) + v_y^2(t)} = \sqrt{(1 + 2t)^2 + (-3t)^2}
$$

$$
|\vec{v}(t)| = \sqrt{1 + 4t + 4t^2 + 9t^2} = \sqrt{1 + 4t + 13t^2}
$$

$$
\boxed{|\vec{v}(t)| = \sqrt{1 + 4t + 13t^2} \text{ m/s}}
$$

---

## Part 2: Determine $\vec{r}(t)$

### Solution

Integrating the velocity to find position:

$$
\vec{r}(t) = \vec{r}(0) + \int_0^t \vec{v}(t') \, dt'
$$

$$
\vec{r}(t) = (0, 0) + \int_0^t (1 + 2t', -3t') \, dt'
$$

Computing each component:

$$
x(t) = \int_0^t (1 + 2t') \, dt' = \left[t' + t'^2\right]_0^t = t + t^2
$$

$$
y(t) = \int_0^t (-3t') \, dt' = \left[-\frac{3t'^2}{2}\right]_0^t = -\frac{3t^2}{2}
$$

Therefore:

$$
\boxed{\vec{r}(t) = \left(t + t^2, -\frac{3t^2}{2}\right) \text{ m}}
$$

### Components:

$$
x(t) = t + t^2
$$

$$
y(t) = -\frac{3t^2}{2}
$$

---

## Part 3: Trajectory Analysis

### Eliminate the parameter $t$

From $x(t) = t + t^2$, we can express $t$ implicitly. However, it's more useful to express $y$ in terms of $x$:

From $x = t + t^2 = t(1 + t)$, solving for $t$ is complex. Instead, we eliminate $t$ differently:

From $y = -\frac{3t^2}{2}$, we get:

$$
t^2 = -\frac{2y}{3}
$$

$$
t = \sqrt{-\frac{2y}{3}} \quad \text{(valid for } y \leq 0 \text{)}
$$

Substituting into $x = t + t^2$:

$$
x = \sqrt{-\frac{2y}{3}} - \frac{2y}{3}
$$

This is the **trajectory equation** in implicit form.

### Alternative: Parametric analysis

- At $t = 0$: position $(0, 0)$, velocity $(1, 0)$ (moving to the right)
- At $t = 0.5$ s: position $(0.75, -0.375)$, velocity $(2, -1.5)$
- At $t = 1$ s: position $(2, -1.5)$, velocity $(3, -3)$
- At $t = 2$ s: position $(6, -6)$, velocity $(5, -6)$

The trajectory is a **parabolic curve** opening downward and to the right.

---

## Part 4: Visualization Notes

### For VSCode Visualization:

1. **Trajectory Plot** (parametric):
   - Plot $(x(t), y(t))$ for $t \in [0, 3]$ seconds
   - The curve starts at origin and curves downward-right
   - Shape: parabolic path

2. **Velocity Vectors** at selected times:
   - $t = 0$: $\vec{v} = (1, 0)$
   - $t = 1$: $\vec{v} = (3, -3)$
   - $t = 2$: $\vec{v} = (5, -6)$

3. **Acceleration Vector**:
   - Constant: $\vec{a} = (2, -3)$ (drawn at each point)

### Physical Interpretation:

- The object starts with velocity in the positive $x$-direction only
- Constant acceleration in positive $x$ and negative $y$ directions causes the velocity vector to rotate downward
- The trajectory is a parabolic arc similar to projectile motion
- The object continuously accelerates, speeding up in both direction and magnitude

---

## Summary

| Quantity | Expression |
|----------|-----------|
| Velocity | $\vec{v}(t) = (1 + 2t, -3t)$ m/s |
| Speed | $\|\vec{v}(t)\| = \sqrt{1 + 4t + 13t^2}$ m/s |
| Position | $\vec{r}(t) = (t + t^2, -\frac{3t^2}{2})$ m |
| Acceleration | $\vec{a} = (2, -3)$ m/s² (constant) |
