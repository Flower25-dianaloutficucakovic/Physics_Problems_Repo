# Problem 6 – Damped oscillator

## Equation of Motion

$$m \frac{d^2 x}{dt^2} + b \frac{dx}{dt} + k x = 0$$

where:
- $m$ = mass (kg)
- $b$ = damping coefficient (N·s/m)
- $k$ = spring constant (N/m)

---

## 1. Derive the general solution for each case

### Standard form

Divide by $m$:

$$\frac{d^2 x}{dt^2} + 2\gamma \frac{dx}{dt} + \omega_0^2 x = 0$$

where:
- $\gamma = \frac{b}{2m}$ = damping parameter
- $\omega_0 = \sqrt{\frac{k}{m}}$ = natural frequency (undamped)

### Characteristic equation

Assume $x(t) = e^{\lambda t}$:

$$\lambda^2 + 2\gamma \lambda + \omega_0^2 = 0$$

Solution:

$$\lambda = -\gamma \pm \sqrt{\gamma^2 - \omega_0^2}$$

Define the discriminant:

$$\Delta = \gamma^2 - \omega_0^2$$

---

## 2. Classification of cases

### Case A: Underdamped ($\gamma < \omega_0$ or $b < 2\sqrt{mk}$)

**Condition:** $\Delta < 0$

Define: $\omega_d = \sqrt{\omega_0^2 - \gamma^2}$ (damped frequency)

**Characteristic roots:**

$$\lambda = -\gamma \pm i\omega_d$$

**General solution:**

$$x(t) = e^{-\gamma t}\left(C_1 \cos(\omega_d t) + C_2 \sin(\omega_d t)\right)$$

Or equivalently:

$$x(t) = A_0 e^{-\gamma t} \cos(\omega_d t + \varphi)$$

where $A_0$ and $\varphi$ are determined by initial conditions.

**Period of oscillation:**

$$T_d = \frac{2\pi}{\omega_d}$$

**Characteristic time (decay):**

$$\tau = \frac{1}{\gamma} = \frac{2m}{b}$$

---

### Case B: Critically damped ($\gamma = \omega_0$ or $b = 2\sqrt{mk}$)

**Condition:** $\Delta = 0$

**Characteristic root (repeated):**

$$\lambda = -\gamma$$

**General solution:**

$$x(t) = (C_1 + C_2 t) e^{-\gamma t}$$

Or:

$$x(t) = (A + Bt) e^{-\gamma t}$$

where $A$, $B$ are determined by initial conditions.

**Behavior:** Fastest return to equilibrium without oscillation.

---

### Case C: Overdamped ($\gamma > \omega_0$ or $b > 2\sqrt{mk}$)

**Condition:** $\Delta > 0$

Define: $\beta = \sqrt{\gamma^2 - \omega_0^2}$

**Characteristic roots:**

$$\lambda_1 = -\gamma + \beta, \quad \lambda_2 = -\gamma - \beta$$

**General solution:**

$$x(t) = C_1 e^{(-\gamma + \beta)t} + C_2 e^{(-\gamma - \beta)t}$$

Or:

$$x(t) = e^{-\gamma t}\left(A e^{\beta t} + B e^{-\beta t}\right)$$

where $A$, $B$ are determined by initial conditions.

**Behavior:** Slow return to equilibrium, no oscillation. Dominated by the slower decaying term $\lambda_1 = -\gamma + \beta$.

---

## 3. Solve the equation numerically (RK4)

### Convert to first-order system

Let $v = \frac{dx}{dt}$. Then:

$$\frac{dx}{dt} = v$$

$$\frac{dv}{dt} = -2\gamma v - \omega_0^2 x$$

### Runge-Kutta 4th order algorithm
