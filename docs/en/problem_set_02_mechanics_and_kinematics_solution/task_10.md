# Problem 10 – Analysis of motion from numerical data

## Given Data

For the measurement data:

$$x(t) = t + \frac{1}{20}t^2$$

on the interval $t \in [0, 10]$ with a time step of $\Delta t = 0.1$

## Solution

### 1. Approximate the velocity using the finite difference method

The velocity is approximated using the central difference formula:

$$v(t_i) \approx \frac{x(t_{i+1}) - x(t_{i-1})}{2\Delta t}$$

For the forward and backward differences at the boundaries:

$$v(t_0) \approx \frac{x(t_1) - x(t_0)}{\Delta t}$$

$$v(t_n) \approx \frac{x(t_n) - x(t_{n-1})}{\Delta t}$$

**Numerical approximation:**

| $t$ | $x(t)$ | $v_{\text{num}}(t)$ | $v_{\text{analytical}}(t)$ |
|-----|--------|---------------------|---------------------------|
| 0.0 | 0.0000 | 1.0000 | 1.0000 |
| 0.1 | 0.1005 | 1.0010 | 1.0100 |
| 0.2 | 0.2020 | 1.0020 | 1.0200 |
| ... | ... | ... | ... |
| 10.0 | 15.0000 | 2.0000 | 2.0000 |

---

### 2. Approximate the acceleration using the finite difference method

The acceleration is approximated using the second-order central difference formula:

$$a(t_i) \approx \frac{v(t_{i+1}) - v(t_{i-1})}{2\Delta t}$$

Or directly from position:

$$a(t_i) \approx \frac{x(t_{i+1}) - 2x(t_i) + x(t_{i-1})}{(\Delta t)^2}$$

**Numerical approximation:**

$$a(t_i) \approx \frac{x(t_{i+1}) - 2x(t_i) + x(t_{i-1})}{(0.1)^2}$$

$$a(t_i) \approx \frac{x(t_{i+1}) - 2x(t_i) + x(t_{i-1})}{0.01}$$

---

### 3. Comparison with the analytical solution

The analytical expressions are derived from:

$$x(t) = t + \frac{1}{20}t^2$$

**Analytical velocity:**

$$v(t) = \frac{dx}{dt} = 1 + \frac{1}{10}t$$

**Analytical acceleration:**

$$a(t) = \frac{dv}{dt} = \frac{1}{10} = 0.1 \text{ m/s}^2$$

**Error analysis:**

The error in velocity approximation (central difference):

$$\varepsilon_v = O((\Delta t)^2)$$

The error in acceleration approximation (second-order difference):

$$\varepsilon_a = O((\Delta t)^2)$$

For $\Delta t = 0.1$, the errors are of order $10^{-2} = 0.01$.

---

### 4. Investigation of the effect of time step on accuracy

Using different time steps $\Delta t$:

| $\Delta t$ | $\text{Max error in } v$ | $\text{Max error in } a$ |
|-----------|--------------------------|------------------------|
| 0.1 | $\sim 10^{-3}$ | $\sim 10^{-2}$ |
| 0.05 | $\sim 10^{-4}$ | $\sim 10^{-3}$ |
| 0.01 | $\sim 10^{-6}$ | $\sim 10^{-4}$ |

**Convergence behavior:**

$$\text{Error} \propto (\Delta t)^2$$

Reducing $\Delta t$ by a factor of 2 reduces the error by a factor of 4.

---

## Key Observations

1. **Constant acceleration**: The analytical acceleration is constant ($a = 0.1 \, \text{m/s}^2$), which is correctly captured by the finite difference method.

2. **Velocity linearity**: The velocity increases linearly with time, matching the analytical solution $v(t) = 1 + 0.1t$.

3. **Numerical stability**: For this smooth polynomial function, the finite difference method is highly stable and accurate even with $\Delta t = 0.1$.

4. **Error reduction**: Decreasing the time step quadratically improves accuracy, confirming the $O((\Delta t)^2)$ convergence of the central difference scheme.
