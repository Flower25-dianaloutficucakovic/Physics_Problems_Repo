## Problem 1 – Task 4: Cross product and area of the parallelogram

**Given:**

$$
\vec{a} = (2,\,-1,\,3), \qquad \vec{b} = (1,\,4,\,-2)
$$

---

### Step 1 – Formula for the cross product

The cross product is computed via the symbolic determinant:

$$
\vec{a} \times \vec{b} =
\begin{vmatrix}
\hat{i} & \hat{j} & \hat{k} \\
a_1 & a_2 & a_3 \\
b_1 & b_2 & b_3
\end{vmatrix}
=
\begin{vmatrix}
\hat{i} & \hat{j} & \hat{k} \\
2 & -1 & 3 \\
1 & 4 & -2
\end{vmatrix}
$$

---

### Step 2 – Expanding along the first row

$$
\vec{a} \times \vec{b} =
\hat{i}\begin{vmatrix}-1 & 3 \\ 4 & -2\end{vmatrix}
-\hat{j}\begin{vmatrix}2 & 3 \\ 1 & -2\end{vmatrix}
+\hat{k}\begin{vmatrix}2 & -1 \\ 1 & 4\end{vmatrix}
$$

Compute each $2\times 2$ determinant:

$$
\begin{vmatrix}-1 & 3 \\ 4 & -2\end{vmatrix}
= (-1)(-2) - (3)(4) = 2 - 12 = -10
$$

$$
\begin{vmatrix}2 & 3 \\ 1 & -2\end{vmatrix}
= (2)(-2) - (3)(1) = -4 - 3 = -7
$$

$$
\begin{vmatrix}2 & -1 \\ 1 & 4\end{vmatrix}
= (2)(4) - (-1)(1) = 8 + 1 = 9
$$

---

### Step 3 – Result of the cross product

$$
\vec{a} \times \vec{b}
= (-10)\,\hat{i} - (-7)\,\hat{j} + 9\,\hat{k}
= (-10,\;7,\;9)
$$

---

### Step 4 – Verification: orthogonality check

The cross product must be perpendicular to both $\vec{a}$ and $\vec{b}$:

$$
(\vec{a} \times \vec{b}) \cdot \vec{a}
= (-10)(2) + (7)(-1) + (9)(3)
= -20 - 7 + 27 = 0 \quad \checkmark
$$

$$
(\vec{a} \times \vec{b}) \cdot \vec{b}
= (-10)(1) + (7)(4) + (9)(-2)
= -10 + 28 - 18 = 0 \quad \checkmark
$$

---

### Step 5 – Area of the parallelogram

The area of the parallelogram spanned by $\vec{a}$ and $\vec{b}$ equals the magnitude of the cross product:

$$
S = |\vec{a} \times \vec{b}|
= \sqrt{(-10)^2 + 7^2 + 9^2}
= \sqrt{100 + 49 + 81}
= \sqrt{230}
$$

$$
\boxed{S = \sqrt{230} \approx 15.17}
$$

---

### Geometric interpretation

- The vector $\vec{a} \times \vec{b}$ is **perpendicular** to the plane containing $\vec{a}$ and $\vec{b}$.
- Its **direction** is given by the right-hand rule: curl the fingers from $\vec{a}$ toward $\vec{b}$, and the thumb points in the direction of $\vec{a} \times \vec{b}$.
- Its **magnitude** equals the area of the parallelogram with sides $\vec{a}$ and $\vec{b}$.
- The area of the triangle spanned by $\vec{a}$ and $\vec{b}$ would be $\dfrac{S}{2} = \dfrac{\sqrt{230}}{2} \approx 7.58$.