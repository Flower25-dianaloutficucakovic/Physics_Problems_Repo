# Task 08 – First-Order Differential Equation

## Problem Statement

Solve the differential equation:

$$
\frac{dy}{dt} = -k\,y
$$

---

## 1. Analytical Solution

This is a **separable first-order ODE**. We separate variables and integrate both sides.

**Step 1 – Separate variables:**

$$
\frac{dy}{y} = -k\,dt
$$

**Step 2 – Integrate both sides:**

$$
\int \frac{1}{y}\,dy = \int -k\,dt
$$

$$
\ln|y| = -k\,t + C_1
$$

**Step 3 – Exponentiate:**

$$
|y| = e^{-kt + C_1} = e^{C_1} \cdot e^{-kt}
$$

Let $C = \pm e^{C_1}$ be an arbitrary constant absorbing the sign:

$$
\boxed{y(t) = C\,e^{-kt}}
$$

**Step 4 – Apply initial condition $y(0) = y_0$:**

$$
y(0) = C\,e^{0} = C = y_0
$$

Therefore the particular solution is:

$$
\boxed{y(t) = y_0\,e^{-kt}}
$$

---

## 2. Interpretation

| Parameter | Effect |
|-----------|--------|
| $k > 0$   | Exponential **decay** – $y(t) \to 0$ as $t \to \infty$ |
| $k < 0$   | Exponential **growth** – $y(t) \to \infty$ as $t \to \infty$ |
| $k = 0$   | $y(t) = y_0 = \text{const}$ (no change) |
| $y_0 > 0$ | Solution stays positive for all $t$ |
| $y_0 < 0$ | Solution stays negative for all $t$ |

The quantity $\tau = \frac{1}{k}$ (for $k > 0$) is called the **time constant** – it is the time after which the value drops to $\frac{1}{e} \approx 36.8\%$ of its initial value:

$$
y(\tau) = y_0\,e^{-1} \approx 0.368\,y_0
$$

**Physical examples of this equation:**
- Radioactive decay ($k = \lambda$, the decay constant)
- Newton's law of cooling
- RC circuit discharge
- Population decline with constant mortality rate

---

## 3. Verification

Differentiate $y(t) = y_0 e^{-kt}$:

$$
\frac{dy}{dt} = y_0 \cdot (-k)\,e^{-kt} = -k\,\underbrace{y_0\,e^{-kt}}_{y(t)} = -k\,y(t) \quad \checkmark
$$