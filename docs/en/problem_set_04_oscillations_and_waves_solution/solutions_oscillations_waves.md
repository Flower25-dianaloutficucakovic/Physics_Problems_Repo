# Solutions — Oscillations and Waves

---

## Problem 1 – Harmonic Motion

Given:
$$
x(t) = A \cos(\omega t + \varphi)
$$

### 1. Period and frequency

$$
T = \frac{2\pi}{\omega}, \quad f = \frac{1}{T} = \frac{\omega}{2\pi}
$$

---

### 2. Maximum velocity and acceleration

Velocity:
$$
v(t) = \frac{dx}{dt} = -A\omega \sin(\omega t + \varphi)
$$

$$
v_{\max} = A\omega
$$

Acceleration:
$$
a(t) = \frac{d^2x}{dt^2} = -A\omega^2 \cos(\omega t + \varphi)
$$

$$
a_{\max} = A\omega^2
$$

---

### 3. Numerical values

Given:
$$
A = 0.2,\quad f = 2
$$

$$
\omega = 2\pi f = 4\pi
$$

$$
v_{\max} = A\omega = 0.2 \cdot 4\pi = 0.8\pi
$$

$$
a_{\max} = A\omega^2 = 0.2 \cdot (4\pi)^2 = 3.2\pi^2
$$

---

## Problem 2 – Energy of Oscillator

Given:
$$
m=1,\quad k=100,\quad x_0=2,\quad v_0=1
$$

---

### 1. Natural frequency

$$
\omega = \sqrt{\frac{k}{m}} = 10
$$

---

### 2. Total energy

$$
E = \frac{1}{2}mv^2 + \frac{1}{2}kx^2
$$

$$
E = \frac{1}{2}(1)(1)^2 + \frac{1}{2}(100)(2)^2 = 0.5 + 200 = 200.5
$$

---

### 3. When kinetic energy is 50%

$$
K = \frac{E}{2}
$$

$$
\frac{1}{2}kx^2 = \frac{E}{2}
$$

$$
50x^2 = 100.25
$$

$$
x = \sqrt{2.005}
$$

---

## Problem 3 – Harmonic Wave

Given:
$$
y(x,t) = A \sin(kx - \omega t)
$$

---

### 1. Wavelength

$$
\lambda = \frac{2\pi}{k}
$$

---

### 2. Phase velocity

$$
v = \frac{\omega}{k}
$$

---

### 3. Numerical value

$$
k = 4\pi,\quad \omega = 20\pi
$$

$$
v = \frac{20\pi}{4\pi} = 5
$$

---

### 4. Phase comparison

Points separated by $\lambda$ are in phase:

$$
y(\lambda,t) = y(0,t)
$$

---

## Problem 4 – Wave Equation

Given:
$$
y(x,t) = A \cos(kx - \omega t)
$$

---

### Derivatives

$$
\frac{\partial^2 y}{\partial t^2} = -\omega^2 A \cos(kx - \omega t)
$$

$$
\frac{\partial^2 y}{\partial x^2} = -k^2 A \cos(kx - \omega t)
$$

---

### Condition

$$
-\omega^2 A \cos(...) = v^2 (-k^2 A \cos(...))
$$

$$
\omega^2 = v^2 k^2
$$

$$
v = \frac{\omega}{k}
$$

---

## Problem 5 – Beats

Given:
$$
y_1 = A\sin(kx-\omega t)
$$
$$
y_2 = A\sin(kx-(\omega+\Delta\omega)t)
$$

---

### 1. Superposition

Using identity:

$$
y = 2A \cos\left(\frac{\Delta\omega t}{2}\right)
\sin\left(kx - \omega t - \frac{\Delta\omega t}{2}\right)
$$

---

### 2. Beat frequency

$$
f_{\text{beat}} = \frac{\Delta\omega}{2\pi}
$$

$$
T_{\text{beat}} = \frac{2\pi}{\Delta\omega}
$$

---

### 3. Interpretation

- Envelope: amplitude modulation  
- Carrier: fast oscillation  

---

## Problem 6 – Damped Oscillator

Equation:
$$
m\ddot{x} + b\dot{x} + kx = 0
$$

---

### Characteristic equation

$$
mr^2 + br + k = 0
$$

---

### Cases

**Underdamped:**
$$
x(t)=Ae^{-\gamma t}\cos(\omega_d t + \phi)
$$

$$
\gamma = \frac{b}{2m},\quad \omega_d = \sqrt{\omega_0^2 - \gamma^2}
$$

---

**Critical:**
$$
x(t)=(A+Bt)e^{-\gamma t}
$$

---

**Overdamped:**
$$
x(t)=C_1 e^{r_1 t}+C_2 e^{r_2 t}
$$

---

## Problem 7 – Forced Oscillator

Equation:
$$
m\ddot{x}+b\dot{x}+kx = F_0 \cos(\Omega t)
$$

---

### Amplitude

$$
A(\Omega)=\frac{F_0/m}{\sqrt{(\omega_0^2-\Omega^2)^2 + \left(\frac{b\Omega}{m}\right)^2}}
$$

---

### Phase

$$
\tan\delta = \frac{b\Omega}{m(\omega_0^2-\Omega^2)}
$$

---

## Problem 8 – Two Masses

Equations:
$$
m\ddot{x}_1 = -k_1 x_1 + k_2(x_2 - x_1)
$$

$$
m\ddot{x}_2 = -k_3 x_2 - k_2(x_2 - x_1)
$$

---

### Matrix form

$$
M\ddot{x} + Kx = 0
$$

Eigenvalues → natural frequencies

---

## Problem 9 – Chain of Masses

$$
m\ddot{x}_n = k(x_{n+1} - 2x_n + x_{n-1})
$$

---

### Interpretation

- Discrete wave equation  
- Leads to wave propagation  

---

## Problem 10 – Double Pendulum

Coordinates:

$$
x_1 = l_1 \sin\theta_1,\quad y_1 = -l_1 \cos\theta_1
$$

$$
x_2 = x_1 + l_2 \sin\theta_2,\quad y_2 = y_1 - l_2 \cos\theta_2
$$

---

### Key properties

- Nonlinear system  
- Chaotic behavior  
- Sensitive to initial conditions  

---

# End of Solutions