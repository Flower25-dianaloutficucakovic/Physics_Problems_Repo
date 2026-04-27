# Problem Set 4 – Solutions

## Problem 1 – Harmonic Motion

Given the harmonic motion:

$$
x(t) = A \cos(\omega t + \varphi)
$$

---

### 1. Period and Frequency

The angular frequency $\omega$ is related to the period $T$ and frequency $f$:

$$
T = \frac{2\pi}{\omega}
$$

$$
f = \frac{1}{T} = \frac{\omega}{2\pi}
$$

---

### 2. Maximum Velocity and Maximum Acceleration

Velocity is the first derivative of position:

$$
v(t) = \frac{dx}{dt} = -A \omega \sin(\omega t + \varphi)
$$

The maximum value occurs when $\sin(\cdot) = \pm 1$:

$$
v_{\max} = A \omega
$$

---

Acceleration is the second derivative:

$$
a(t) = \frac{d^2x}{dt^2} = -A \omega^2 \cos(\omega t + \varphi)
$$

Maximum acceleration:

$$
a_{\max} = A \omega^2
$$

---

### 3. Numerical Calculations

Given:

- $A = 0.2\ \mathrm{m}$
- $f = 2\ \mathrm{Hz}$

---

#### Angular Frequency

$$
\omega = 2\pi f = 2\pi \cdot 2 = 4\pi\ \mathrm{rad/s}
$$

---

#### Maximum Velocity

$$
v_{\max} = A \omega = 0.2 \cdot 4\pi = 0.8\pi\ \mathrm{m/s}
$$

Numerically:

$$
v_{\max} \approx 2.51\ \mathrm{m/s}
$$

---

#### Maximum Acceleration

$$
a_{\max} = A \omega^2 = 0.2 \cdot (4\pi)^2
$$

$$
a_{\max} = 0.2 \cdot 16\pi^2 = 3.2\pi^2\ \mathrm{m/s^2}
$$

Numerically:

$$
a_{\max} \approx 31.6\ \mathrm{m/s^2}
$$

---

### Interpretation

- The motion is periodic with frequency $f = 2\ \mathrm{Hz}$, meaning the system completes 2 oscillations per second.
- Velocity is maximal at equilibrium ($x = 0$).
- Acceleration is maximal at extreme displacements ($x = \pm A$).
- Higher $\omega$ leads to significantly larger acceleration due to the $\omega^2$ dependence.
