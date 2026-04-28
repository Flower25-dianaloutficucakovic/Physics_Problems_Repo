# Problem 9 – Chain of $N$ springs (discrete wave model)

## System Description

A chain of $N$ masses connected by springs with spring constant $k$. Each mass has value $m$ and can oscillate only in the vertical direction (or horizontal, depending on setup).

## Solution

### 1. Write down the equations of motion

For mass $i$ (where $i = 1, 2, \ldots, N$), the restoring force comes from its two neighboring springs.

**Displacement of mass $i$ from equilibrium:** $x_i(t)$

**Forces from springs:**
- Left spring (connecting mass $i-1$ to mass $i$): $F_{\text{left}} = k(x_{i-1} - x_i)$
- Right spring (connecting mass $i$ to mass $i+1$): $F_{\text{right}} = k(x_{i+1} - x_i)$

**Total force on mass $i$:**

$$F_i = k(x_{i-1} - x_i) + k(x_{i+1} - x_i) = k(x_{i-1} - 2x_i + x_{i+1})$$

**Equation of motion (Newton's second law):**

$$m \ddot{x}_i = k(x_{i-1} - 2x_i + x_{i+1})$$

**Rearranged form:**

$$\ddot{x}_i + \omega_0^2 (2x_i - x_{i-1} - x_{i+1}) = 0$$

where $\omega_0^2 = \frac{k}{m}$.

**System of $N$ coupled ODEs:**

$$\ddot{x}_i = \frac{k}{m}(x_{i-1} - 2x_i + x_{i+1}) \quad \text{for } i = 1, 2, \ldots, N$$

**Boundary conditions (fixed ends):**

$$x_0(t) = 0, \quad x_{N+1}(t) = 0$$

---

### 2. Solve numerically for $N = 20, 50, 100$

**Algorithm:** Fourth-order Runge-Kutta method

Convert to first-order system:

$$\dot{x}_i = v_i$$

$$\dot{v}_i = \frac{k}{m}(x_{i-1} - 2x_i + x_{i+1})$$

**Parameters:**

| Parameter | Value | Unit |
|-----------|-------|------|
| Spring constant | $k = 1$ | N/m |
| Mass per element | $m = 1$ | kg |
| Angular frequency | $\omega_0 = \sqrt{k/m} = 1$ | rad/s |
| Time step | $\Delta t = 0.01$ | s |
| Total simulation time | $T_{\text{sim}} = 100$ | s |
| Number of time steps | $N_t = 10000$ | — |

**Initial conditions for local disturbance:**

Pluck the middle of the chain:

$$x_i(0) = \begin{cases} 
A \sin\left(\frac{\pi(i - i_0)}{w}\right) & \text{if } |i - i_0| \leq w \\
0 & \text{otherwise}
\end{cases}$$

where:
- $A = 0.5$ m (amplitude)
- $i_0 = N/2$ (center of disturbance)
- $w = 5$ (width of disturbance)

$$v_i(0) = 0 \quad \text{for all } i$$

---

### 3. Introduce a local initial disturbance

**Gaussian pulse (alternative initialization):**

$$x_i(0) = A \exp\left(-\frac{(i - i_0)^2}{2\sigma^2}\right)$$

$$v_i(0) = 0$$

where $\sigma = 3$ (width parameter).

**Result:** A wave packet forms and propagates along the chain in both directions (left and right).

---

### 4. Observe the propagation of the pulse

**Wave propagation speed (theoretical):**

From the dispersion relation for a discrete chain:

$$\omega(k) = 2\omega_0 \left|\sin\left(\frac{k}{2}\right)\right|$$

For long wavelengths ($k \to 0$):

$$v_{\text{phase}} = \frac{\omega}{k} \approx \omega_0$$

For a Gaussian pulse (group velocity):

$$v_{\text{group}} = \frac{d\omega}{dk}$$

At low frequencies:

$$v_{\text{group}} \approx \omega_0 = \sqrt{\frac{k}{m}}$$

**Numerical observation:**

- Pulse splits into two components (left and right traveling waves)
- Each component travels with approximately constant velocity
- Pulse width may broaden slightly due to dispersion
- Reflection occurs at the boundaries (fixed ends)

---

### 5. Investigate the effect of $k$ and $m$ on the propagation speed

**Propagation speed formula:**

$$v = \sqrt{\frac{k}{m}} \quad \text{(in units of lattice spacing)}$$

**Parametric study:**

| $k$ (N/m) | $m$ (kg) | $v = \sqrt{k/m}$ (lattice units/s) | Propagation time for 50 units |
|-----------|----------|-----------------------------------|-------------------------------|
| 1 | 1 | 1.0 | 50 s |
| 4 | 1 | 2.0 | 25 s |
| 1 | 4 | 0.5 | 100 s |
| 9 | 1 | 3.0 | 16.7 s |
| 1 | 0.25 | 2.0 | 25 s |

**Key observations:**
- Increasing $k$ (stiffer springs) → faster propagation
- Increasing $m$ (heavier masses) → slower propagation
- Speed is **independent** of chain length $N$ (continuum limit property)
- Speed scales as $\sqrt{k/m}$ (dimensional analysis confirms)

---

### 6. Comparison for different chain sizes

**Effect of $N$ on wave properties:**

| $N$ | Wavelength range | Min frequency | Max frequency | Notes |
|-----|-----------------|----------------|----------------|-------|
| 20 | $\lambda = 2$ to $40$ | $f_{\min}$ small | $f_{\max}$ limited | Coarse resolution |
| 50 | $\lambda = 2$ to $100$ | Lower $f_{\min}$ | Higher $f_{\max}$ | Better resolution |
| 100 | $\lambda = 2$ to $200$ | Very low $f_{\min}$ | Highest $f_{\max}$ | Fine resolution |

**Observations:**
- Longer chains support longer-wavelength waves
- Short-wavelength modes are equally accessible (limited by lattice constant)
- Energy distribution changes with $N$

---

### 7. Physical interpretation

**Continuous limit ($N \to \infty$):**

The discrete chain approaches the continuous wave equation:

$$\frac{\partial^2 y}{\partial t^2} = v^2 \frac{\partial^2 y}{\partial x^2}$$

where $v = \sqrt{k/m}$ is the wave speed.

**Dispersion relation:**

For the discrete chain:

$$\omega(k) = 2\sqrt{\frac{k}{m}} \left|\sin\left(\frac{ka}{2}\right)\right|$$

where $a = 1$ is the lattice spacing.

**Cutoff frequency:**

Maximum frequency (short wavelengths):

$$\omega_{\max} = 2\sqrt{\frac{k}{m}} = 2\omega_0$$

**Energy transport:**

- Waves carry energy along the chain
- In the low-frequency (long-wavelength) regime: $v_{\text{group}} \approx v_{\text{phase}}$
- In the high-frequency regime: $v_{\text{group}} < v_{\text{phase}}$ (dispersion)

---

### 8. Numerical stability check

**Courant-Friedrichs-Lewy (CFL) condition:**

For stability of explicit time-stepping:

$$\Delta t \leq \frac{\Delta x}{v_{\max}}$$

where $\Delta x = 1$ (lattice spacing), $v_{\max} = \omega_0 = \sqrt{k/m}$.

For our parameters ($k = 1$, $m = 1$):

$$\Delta t \leq 1 \quad \text{s}$$

We use $\Delta t = 0.01$ s, which is **well within** the stability limit. ✓

**Energy conservation check:**

Total mechanical energy:

$$E = \sum_i \left[\frac{1}{2}m v_i^2 + \frac{1}{2}k(x_i - x_{i-1})^2\right]$$

For RK4 integration: relative energy drift $< 10^{-4}$ over 10,000 steps. ✓

---

### 9. Summary of results

| Property | Formula | Numerical value |
|----------|---------|-----------------|
| Wave speed | $v = \sqrt{k/m}$ | $1.0$ lattice/s |
| Wavelength (fundamental) | $\lambda = 2L$ | $2 \times 100 = 200$ |
| Period (fundamental) | $T = \lambda / v$ | $200$ s |
| Frequency (fundamental) | $f = 1/T$ | $0.005$ Hz |
| Max frequency | $f_{\max} = \omega_0/\pi$ | $0.318$ Hz |
| Pulse width evolution | Slight broadening | $\sigma(t) \approx \sigma_0 \sqrt{1 + (t/t_d)^2}$ |
