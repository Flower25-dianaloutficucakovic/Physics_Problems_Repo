# Problem 6 – Curve Length and Numerical Integration

## Given

A parametric trajectory in 2D:

$$
x(t) = t, \qquad y(t) = t^2, \qquad t \in [0, 1]
$$

---

## Step 1 – Velocity Vector

$$
\vec{v}(t) = \frac{d\vec{r}}{dt} = \left(\frac{dx}{dt},\, \frac{dy}{dt}\right) = (1,\, 2t)
$$

---

## Step 2 – Magnitude of the Velocity

$$
|\vec{v}(t)| = \sqrt{\left(\frac{dx}{dt}\right)^2 + \left(\frac{dy}{dt}\right)^2} = \sqrt{1^2 + (2t)^2} = \sqrt{1 + 4t^2}
$$

---

## Step 3 – Arc Length as an Integral

$$
s = \int_0^1 |\vec{v}(t)|\, dt = \int_0^1 \sqrt{1 + 4t^2}\, dt
$$

---

## Step 4 – Analytical Evaluation

We use the standard formula:

$$
\int \sqrt{1 + a^2 t^2}\, dt = \frac{t}{2}\sqrt{1 + a^2 t^2} + \frac{1}{2a}\ln\!\left(at + \sqrt{1 + a^2 t^2}\right) + C
$$

With $a = 2$:

$$
\int_0^1 \sqrt{1 + 4t^2}\, dt
= \left[\frac{t}{2}\sqrt{1 + 4t^2} + \frac{1}{4}\ln\!\left(2t + \sqrt{1 + 4t^2}\right)\right]_0^1
$$

Evaluating at $t = 1$:

$$
\frac{1}{2}\sqrt{5} + \frac{1}{4}\ln\!\left(2 + \sqrt{5}\right)
$$

Evaluating at $t = 0$:

$$
0 + \frac{1}{4}\ln(0 + 1) = \frac{1}{4}\ln 1 = 0
$$

Therefore:

$$
\boxed{s = \frac{\sqrt{5}}{2} + \frac{1}{4}\ln\!\left(2 + \sqrt{5}\right) \approx 1.4789}
$$

---

## Step 5 – Trapezoidal Rule in HTML/JS

The **trapezoidal rule** approximates an integral by dividing $[0,1]$ into $N$ subintervals of width $h = 1/N$:

$$
s \approx h \left[\frac{f(t_0)}{2} + f(t_1) + f(t_2) + \cdots + f(t_{N-1}) + \frac{f(t_N)}{2}\right]
$$

where $f(t) = \sqrt{1 + 4t^2}$ and $t_k = k \cdot h$.

The **error** of the trapezoidal rule scales as $O(h^2) = O(1/N^2)$, meaning doubling $N$ reduces the error by a factor of $4$.

See [`task_06.html`](task_06.html) for the interactive implementation with:
- trajectory visualization,
- convergence table (error vs. $N$),
- error plot as a function of $N$.