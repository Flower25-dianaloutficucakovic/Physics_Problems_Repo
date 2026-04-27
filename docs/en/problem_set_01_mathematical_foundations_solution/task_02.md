FILE: task_01_02.md

# Task 01.2 – Vector Normalization

## Problem Statement

Given the vector in three-dimensional space:

$$
\vec a = (2, -1, 3)
$$

Determine the normalized vector (unit vector) $\hat a$:

$$
\hat a = \frac{\vec a}{|\vec a|}
$$

## Theory

A normalized vector, or unit vector, is a vector that points in the same direction as the original vector but has a magnitude (length) of exactly 1. 

The magnitude of a vector $\vec a = (a_x, a_y, a_z)$ in Euclidean space is calculated using the formula:

$$
|\vec a| = \sqrt{a_x^2 + a_y^2 + a_z^2}
$$

The normalization process involves dividing each component of the vector by its total magnitude:

$$
\hat a = \left( \frac{a_x}{|\vec a|}, \frac{a_y}{|\vec a|}, \frac{a_z}{|\vec a|} \right)
$$

## Step-by-Step Solution

### 1. Calculate the magnitude of $\vec a$

First, we square each component of the vector $\vec a = (2, -1, 3)$:

$$
\begin{align}
a_x^2 &= 2^2 = 4 \\
a_y^2 &= (-1)^2 = 1 \\
a_z^2 &= 3^2 = 9
\end{align}
$$

Next, we sum these values and take the square root:

$$
|\vec a| = \sqrt{4 + 1 + 9} = \sqrt{14}
$$

### 2. Divide the vector by its magnitude

We divide each component of $\vec a$ by $|\vec a| = \sqrt{14}$:

$$
\hat a = \frac{(2, -1, 3)}{\sqrt{14}}
$$

Applying the division to each component:

$$
\hat a = \left( \frac{2}{\sqrt{14}}, -\frac{1}{\sqrt{14}}, \frac{3}{\sqrt{14}} \right)
$$

## Final Result

The normalized vector is:

$$
\hat a = \left( \frac{2}{\sqrt{14}}, -\frac{1}{\sqrt{14}}, \frac{3}{\sqrt{14}} \right) \approx (0.534, -0.267, 0.801)
$$

## Interpretation

The vector $\hat a$ maintains the same orientation in 3D space as $\vec a$, but it has been scaled so that its length is unity. In physics, unit vectors are essential for defining directions (such as the direction of a force or a trajectory) independently of the quantity's magnitude. We can verify the result by checking the length of $\hat a$:

$$
|\hat a| = \sqrt{\left(\frac{2}{\sqrt{14}}\right)^2 + \left(-\frac{1}{\sqrt{14}}\right)^2 + \left(\frac{3}{\sqrt{14}}\right)^2} = \sqrt{\frac{4}{14} + \frac{1}{14} + \frac{9}{14}} = \sqrt{\frac{14}{14}} = 1
$$