I'll solve Problem 1, Task 3 — the dot product and angle between vectors. Here's the solution formatted for clean VSCode Markdown rendering:

---

## Problem 1 – Task 3: Dot Product and Angle Between Vectors

### Given

$$
\vec{a} = (2, -1, 3), \qquad \vec{b} = (1, 4, -2)
$$

---

### Step 1: Dot Product Formula

For two vectors $\vec{a} = (a_1, a_2, a_3)$ and $\vec{b} = (b_1, b_2, b_3)$:

$$
\vec{a} \cdot \vec{b} = a_1 b_1 + a_2 b_2 + a_3 b_3
$$

### Step 2: Substituting Values

$$
\vec{a} \cdot \vec{b} = (2)(1) + (-1)(4) + (3)(-2)
$$

$$
= 2 - 4 - 6
$$

$$
\boxed{\vec{a} \cdot \vec{b} = -8}
$$

---

### Step 3: Angle Between Vectors

The angle $\theta$ between two vectors is defined by:

$$
\cos\theta = \frac{\vec{a} \cdot \vec{b}}{|\vec{a}|\ |\vec{b}|}
$$

We already know $\vec{a} \cdot \vec{b} = -8$. We need the magnitudes $|\vec{a}|$ and $|\vec{b}|$ (computed in Tasks 1 and 2):

$$
|\vec{a}| = \sqrt{2^2 + (-1)^2 + 3^2} = \sqrt{4 + 1 + 9} = \sqrt{14}
$$

$$
|\vec{b}| = \sqrt{1^2 + 4^2 + (-2)^2} = \sqrt{1 + 16 + 4} = \sqrt{21}
$$

### Step 4: Computing $\cos\theta$

$$
\cos\theta = \frac{-8}{\sqrt{14} \cdot \sqrt{21}} = \frac{-8}{\sqrt{294}}
$$

Simplifying $\sqrt{294}$:

$$
\sqrt{294} = \sqrt{2 \cdot 3 \cdot 7^2} = 7\sqrt{6}
$$

$$
\cos\theta = \frac{-8}{7\sqrt{6}}
$$

### Step 5: Numerical Value

$$
7\sqrt{6} \approx 7 \times 2.4495 = 17.146
$$

$$
\cos\theta \approx \frac{-8}{17.146} \approx -0.4667
$$

$$
\boxed{\theta = \arccos\!\left(\frac{-8}{7\sqrt{6}}\right) \approx 117.8°}
$$

---

### Interpretation

| Quantity | Value |
|---|---|
| $\vec{a} \cdot \vec{b}$ | $-8$ |
| $\cos\theta$ | $\approx -0.467$ |
| $\theta$ | $\approx 117.8°$ |

Since $\vec{a} \cdot \vec{b} < 0$, the angle between the vectors is **obtuse** (greater than $90°$), which is confirmed by $\theta \approx 117.8°$.