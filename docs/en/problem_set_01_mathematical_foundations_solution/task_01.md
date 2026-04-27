# Task 01 – Vectors and linear transformations

## Problem Statement

Given two vectors in three-dimensional space:

$$
\vec a = (2,-1,3), \qquad \vec b = (1,4,-2)
$$

* Calculate the lengths of the vectors $|\vec a|$, $|\vec b|$.
* Determine the normalized vector $\hat a = \frac{\vec a}{|\vec a|}$.
* Calculate the dot product $\vec a \cdot \vec b$ and the angle between the vectors.
* Calculate the cross product $\vec a \times \vec b$ and the area of the parallelogram spanned by these vectors.

For the matrix:

$$
A =
\begin{pmatrix}
2 & 1 & 0 \\
0 & 1 & -1 \\
1 & 0 & 1
\end{pmatrix}
$$

* Calculate $A\vec a$.
* Calculate $\det A$.
* Check if the transformation preserves the orientation of the space.

## Theory

The magnitude of a vector $\vec v = (v_x, v_y, v_z)$ is defined by the Euclidean norm:

$$
|\vec v| = \sqrt{v_x^2 + v_y^2 + v_z^2}
$$

The dot product of two vectors $\vec a$ and $\vec b$ relates to the angle $\theta$ between them:

$$
\vec a \cdot \vec b = |\vec a| |\vec b| \cos \theta
$$

The cross product $\vec a \times \vec b$ results in a vector perpendicular to both, with a magnitude equal to the area of the parallelogram formed by the two vectors:

$$
\text{Area} = |\vec a \times \vec b|
$$

A linear transformation $A$ preserves orientation if its determinant is positive ($\det A > 0$) and reverses it if the determinant is negative ($\det A < 0$).

## Step-by-Step Solution

### 1. Vector Lengths

The length of vector $\vec a$:

$$
|\vec a| = \sqrt{2^2 + (-1)^2 + 3^2} = \sqrt{4 + 1 + 9} = \sqrt{14}
$$

The length of vector $\vec b$:

$$
|\vec b| = \sqrt{1^2 + 4^2 + (-2)^2} = \sqrt{1 + 16 + 4} = \sqrt{21}
$$

### 2. Normalization

The unit vector $\hat a$ is:

$$
\hat a = \frac{1}{\sqrt{14}} (2, -1, 3) = \left( \frac{2}{\sqrt{14}}, -\frac{1}{\sqrt{14}}, \frac{3}{\sqrt{14}} \right)
$$

### 3. Dot Product and Angle

The dot product is calculated as:

$$
\vec a \cdot \vec b = (2)(1) + (-1)(4) + (3)(-2) = 2 - 4 - 6 = -8
$$

To find the angle:

$$
\cos \theta = \frac{\vec a \cdot \vec b}{|\vec a| |\vec b|} = \frac{-8}{\sqrt{14}\sqrt{21}} = \frac{-8}{\sqrt{294}} = \frac{-8}{7\sqrt{6}}
$$

$$
\theta = \arccos\left( \frac{-8}{7\sqrt{6}} \right)
$$

### 4. Cross Product and Area

$$
\vec a \times \vec b = 
\begin{vmatrix}
\hat i & \hat j & \hat k \\
2 & -1 & 3 \\
1 & 4 & -2
\end{vmatrix}
$$

$$
\begin{align}
\vec a \times \vec b &= \hat i ((-1)(-2) - (3)(4)) - \hat j ((2)(-2) - (3)(1)) + \hat k ((2)(4) - (-1)(1)) \\
&= \hat i (2 - 12) - \hat j (-4 - 3) + \hat k (8 + 1) \\
&= (-10, 7, 9)
\end{align}
$$

The area of the parallelogram is the magnitude:

$$
|\vec a \times \vec b| = \sqrt{(-10)^2 + 7^2 + 9^2} = \sqrt{100 + 49 + 81} = \sqrt{230}
$$

### 5. Matrix Transformation and Determinant

Applying the matrix $A$ to vector $\vec a$:

$$
A\vec a = 
\begin{pmatrix}
2 & 1 & 0 \\
0 & 1 & -1 \\
1 & 0 & 1
\end{pmatrix}
\begin{pmatrix}
2 \\ -1 \\ 3
\end{pmatrix} =
\begin{pmatrix}
2(2) + 1(-1) + 0(3) \\
0(2) + 1(-1) - 1(3) \\
1(2) + 0(-1) + 1(3)
\end{pmatrix} =
\begin{pmatrix}
3 \\ -4 \\ 5
\end{pmatrix}
$$

Calculating the determinant of $A$:

$$
\det A = 2 \begin{vmatrix} 1 & -1 \\ 0 & 1 \end{vmatrix} - 1 \begin{vmatrix} 0 & -1 \\ 1 & 1 \end{vmatrix} + 0 \begin{vmatrix} 0 & 1 \\ 1 & 0 \end{vmatrix}
$$

$$
\det A = 2(1 - 0) - 1(0 - (-1)) = 2(1) - 1(1) = 1
$$

## Final Result

* $|\vec a| = \sqrt{14}$, $|\vec b| = \sqrt{21}$
* $\hat a = \left( \frac{2}{\sqrt{14}}, -\frac{1}{\sqrt{14}}, \frac{3}{\sqrt{14}} \right)$
* $\vec a \cdot \vec b = -8$, $\theta \approx 117.8^\circ$
* $\vec a \times \vec b = (-10, 7, 9)$, $\text{Area} = \sqrt{230}$
* $A\vec a = (3, -4, 5)$
* $\det A = 1$

## Interpretation

Since $\det A = 1$, which is greater than zero, the linear transformation $A$ **preserves the orientation** of the space. This means that a right-handed coordinate system will remain right-handed after the transformation. The negative dot product indicates that the angle between the two vectors is obtuse.