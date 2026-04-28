# Problem 10 – Numerical model of a dynamical system

## Given Potential

$$U(x) = \frac{k}{2}x^2 + \lambda x^4$$

## Solution

### 1. Determine the force

The force is derived from the potential using:

$$F(x) = -\frac{dU}{dx}$$

Taking the derivative:

$$F(x) = -\frac{d}{dx}\left(\frac{k}{2}x^2 + \lambda x^4\right)$$

$$F(x) = -kx - 4\lambda x^3$$

---

### 2. Write down the equation of motion

Newton's second law gives:

$$m\ddot{x} = -kx - 4\lambda x^3$$

Rearranging:

$$\ddot{x} + \frac{k}{m}x + \frac{4\lambda}{m}x^3 = 0$$

Let $\omega_0^2 = \frac{k}{m}$ and $\beta = \frac{4\lambda}{m}$:

$$\ddot{x} + \omega_0^2 x + \beta x^3 = 0$$

This is a **nonlinear oscillator** equation (Duffing oscillator when $\lambda > 0$).

---

### 3. Solve numerically for selected parameters

**Algorithm:** Fourth-order Runge-Kutta method

Convert to system of first-order ODEs:

$$\dot{x} = v$$

$$\dot{v} = -\omega_0^2 x - \beta x^3$$

**Parameters:**
- $k = 1$ (N/m)
- $m = 1$ (kg)
- $\lambda = 0.1$ (hardening nonlinearity)
- $\omega_0 = 1$ rad/s
- $\beta = 0.4$
- Time step: $dt = 0.01$ s
- Total time: $T = 50$ s

**Initial conditions:**

| Case | $x(0)$ | $v(0)$ | $E_{\text{total}}$ |
|------|--------|--------|------------------|
| A | 1.0 | 0.0 | 1.0 J |
| B | 2.0 | 0.0 | 6.0 J |
| C | 3.0 | 0.0 | 16.2 J |

---

### 4. Investigate the effect of initial energy on the type of motion

**Energy conservation check:**

$$E(t) = \frac{1}{2}mv^2 + U(x) = \text{constant}$$

$$E(t) = \frac{1}{2}v^2 + \frac{k}{2}x^2 + \lambda x^4$$

**Classification by energy:**

**Low energy** ($E < E_{\text{barrier}}$):
- **Oscillatory motion** around $x = 0$
- Bounded in phase space
- Amplitude increases with energy

**High energy** ($E > E_{\text{barrier}}$):
- **Unbounded motion** or escape to infinity
- For $\lambda > 0$: still oscillatory but with larger amplitude
- Characteristic frequency decreases with amplitude

**Energy barrier analysis:**

For the potential $U(x) = \frac{k}{2}x^2 + \lambda x^4$:

$$\frac{dU}{dx} = kx + 4\lambda x^3 = x(k + 4\lambda x^2) = 0$$

Critical points: $x = 0$ (minimum)

For $\lambda > 0$: $U(x)$ is monotonically increasing away from $x = 0$ → all oscillations are bounded.

---

### 5. Create a visualization of $x(t)$ and the phase portrait

#### Position vs. Time

Three representative solutions:

$$\text{Case A: } x(0) = 1.0 \text{ m} \quad \Rightarrow \quad \text{Small amplitude oscillation}$$

$$\text{Case B: } x(0) = 2.0 \text{ m} \quad \Rightarrow \quad \text{Medium amplitude oscillation}$$

$$\text{Case C: } x(0) = 3.0 \text{ m} \quad \Rightarrow \quad \text{Large amplitude oscillation}$$

The period increases with amplitude due to the $x^3$ nonlinearity.

#### Phase Portrait ($v$ vs. $x$)

The phase space trajectories are **closed curves** (ellipse-like but deformed):

- **Low energy ($E < 1$ J):** Nearly circular orbits (linear oscillator behavior dominates)
- **Medium energy ($1 < E < 10$ J):** Noticeably deformed ellipses
- **High energy ($E > 10$ J):** Strongly distorted orbits, asymmetric shape

**Key features:**
- All trajectories are **closed** (periodic orbits)
- Trajectories **do not intersect** (uniqueness of solutions)
- Orbits are **symmetric** about the $x$-axis due to energy conservation
- The shape depends on the relative strength of $k$ vs. $\lambda$

---

### 6. Numerical Results Summary

| Parameter | Value | Unit |
|-----------|-------|------|
| Spring constant | $k = 1$ | N/m |
| Mass | $m = 1$ | kg |
| Nonlinear coefficient | $\lambda = 0.1$ | — |
| Natural frequency | $\omega_0 = 1$ | rad/s |
| Harmonic approximation period (small amp.) | $T_0 = 2\pi \approx 6.28$ | s |

**Frequency shift due to nonlinearity:**

$$\omega_{\text{eff}}(A) = \omega_0 \sqrt{1 + \frac{3\lambda A^2}{2k}}$$

For amplitude $A = 2$ m:

$$\omega_{\text{eff}} = 1 \cdot \sqrt{1 + \frac{3 \times 0.1 \times 4}{2 \times 1}} = \sqrt{1.6} \approx 1.265 \text{ rad/s}$$

Period: $T \approx \frac{2\pi}{1.265} \approx 4.97$ s (shorter period for higher energy)

---

### 7. Physical Interpretation

**Hardening spring** ($\lambda > 0$):
- Effective stiffness **increases** with displacement
- Oscillations have **shorter period** than linear oscillator for the same energy
- The system is **stable** against unbounded growth

**Duffing oscillator analogy:**
- This model mimics mechanical oscillators with nonlinear restoring forces
- Examples: cantilever beams, nonlinear springs, shock absorbers
- The $x^3$ term represents **hardening** behavior (cf. $x^3$ in plasma physics, molecular dynamics)

**Energy dissipation (in damped case):**
- Without damping ($\lambda$ term only): energy is perfectly conserved
- Phase portrait: closed, non-intersecting curves
- With damping: energy spirals inward toward $x = 0$ (attractor)
