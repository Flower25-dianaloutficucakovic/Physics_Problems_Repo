# Problem 8 – Relative Motion

Body A moves with velocity $\vec{v}_A = (3, 1)$, body B with velocity $\vec{v}_B = (1, -2)$.

## 1. Determine the relative velocity $\vec{v}_{A/B}$

The relative velocity of body A with respect to body B is defined as:

$$\vec{v}_{A/B} = \vec{v}_A - \vec{v}_B$$

Substituting the given values:

$$\vec{v}_{A/B} = (3, 1) - (1, -2) = (3 - 1, 1 - (-2)) = (2, 3)$$

**Result:** $\vec{v}_{A/B} = (2, 3)$ m/s

---

## 2. Determine the direction of the relative motion

The direction is characterized by the angle $\theta$ that the relative velocity vector makes with the positive $x$-axis:

$$\theta = \arctan\left(\frac{v_{A/B,y}}{v_{A/B,x}}\right) = \arctan\left(\frac{3}{2}\right)$$

$$\theta \approx 56.31°$$

The magnitude of the relative velocity is:

$$|\vec{v}_{A/B}| = \sqrt{v_{A/B,x}^2 + v_{A/B,y}^2} = \sqrt{2^2 + 3^2} = \sqrt{4 + 9} = \sqrt{13} \approx 3.606 \text{ m/s}$$

**Result:** Body A moves relative to body B at an angle of approximately $56.31°$ above the positive $x$-axis, with a speed of $\sqrt{13} \approx 3.606$ m/s.

---

## 3. Visualize the motion in different reference frames

### Reference Frame 1: Inertial frame (origin of coordinate system)

In the inertial frame, both bodies move in straight lines with constant velocities.

Assuming both bodies start at the origin at $t = 0$:

$$\vec{r}_A(t) = \vec{v}_A \cdot t = (3t, t)$$

$$\vec{r}_B(t) = \vec{v}_B \cdot t = (t, -2t)$$

### Reference Frame 2: Frame attached to Body A

In body A's reference frame, body A is stationary and body B appears to move with the relative velocity:

$$\vec{v}_{B/A} = \vec{v}_B - \vec{v}_A = (1, -2) - (3, 1) = (-2, -3)$$

Body B's trajectory in A's frame (starting from some initial position $\vec{r}_{B0}$ relative to A):

$$\vec{r}_{B/A}(t) = \vec{r}_{B0} + \vec{v}_{B/A} \cdot t = \vec{r}_{B0} + (-2t, -3t)$$

### Reference Frame 3: Frame attached to Body B

In body B's reference frame, body B is stationary and body A appears to move with the relative velocity:

$$\vec{v}_{A/B} = \vec{v}_A - \vec{v}_B = (3, 1) - (1, -2) = (2, 3)$$

Body A's trajectory in B's frame (starting from some initial position $\vec{r}_{A0}$ relative to B):

$$\vec{r}_{A/B}(t) = \vec{r}_{A0} + \vec{v}_{A/B} \cdot t = \vec{r}_{A0} + (2t, 3t)$$

---

## Summary

| Quantity | Value |
|----------|-------|
| $\vec{v}_{A/B}$ | $(2, 3)$ m/s |
| $\|\vec{v}_{A/B}\|$ | $\sqrt{13} \approx 3.606$ m/s |
| Direction angle $\theta$ | $\arctan(3/2) \approx 56.31°$ |
| $\vec{v}_{B/A}$ | $(-2, -3)$ m/s |
