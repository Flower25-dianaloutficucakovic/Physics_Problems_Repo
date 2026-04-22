Below is a **clean Markdown + LaTeX document** you can copy directly into **VS Code (`.md` file)**. It will render correctly with extensions like *Markdown Preview Enhanced* or *KaTeX*.

---

# 📘 Solutions — Oscillations and Waves

## Problem 1 – Harmonic motion

Given:
$$
x(t) = A \cos(\omega t + \varphi)
$$

### 1. Period and frequency

By definition:
$$
\omega = \frac{2\pi}{T}
\quad \Rightarrow \quad
T = \frac{2\pi}{\omega}
$$

Frequency:
$$
f = \frac{1}{T} = \frac{\omega}{2\pi}
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
A = 0.2\ \text{m}, \quad f = 2\ \text{Hz}
$$

Angular frequency:
$$
\omega = 2\pi f = 4\pi
$$

Max velocity:
$$
v_{\max} = A\omega = 0.2 \cdot 4\pi = 0.8\pi \approx 2.51\ \text{m/s}
$$

Max acceleration:
$$
a_{\max} = A\omega^2 = 0.2 \cdot (4\pi)^2 = 3.2\pi^2 \approx 31.6\ \text{m/s}^2
$$

---

## Problem 2 – Energy of oscillator

Given:
$$
m=1,\quad k=100,\quad x_0=2,\quad v_0=1
$$

### 1. Natural frequency

$$
\omega_0 = \sqrt{\frac{k}{m}} = 10\ \text{rad/s}
$$

---

### 2. Total energy

$$
E = \frac{1}{2}mv^2 + \frac{1}{2}kx^2
$$

$$
E = \frac{1}{2}(1)(1)^2 + \frac{1}{2}(100)(2)^2
= 0.5 + 200 = 200.5\ \text{J}
$$

---

### 3. When kinetic energy is 50%

$$
E_k = \frac{1}{2}E = 100.25
$$

$$
E_p = E - E_k = 100.25 = \frac{1}{2}kx^2
$$

$$
50x^2 = 100.25
\Rightarrow x = \sqrt{2.005} \approx 1.42\ \text{m}
$$

---

## Problem 3 – Harmonic wave

$$
y(x,t)=A\sin(kx-\omega t)
$$

### 1. Wavelength

$$
k = \frac{2\pi}{\lambda}
\Rightarrow \lambda = \frac{2\pi}{k}
$$

---

### 2. Phase velocity

$$
v = \frac{\omega}{k}
$$

---

### 3. Numerical value

$$
k=4\pi,\quad \omega=20\pi
$$

$$
v = \frac{20\pi}{4\pi} = 5\ \text{m/s}
$$

---

### 4. Phase comparison

At $x=\lambda$:
$$
kx = k\lambda = 2\pi
$$

Thus:
$$
\sin(2\pi - \omega t) = \sin(-\omega t)
$$

Same oscillation ⇒ **points are in phase**

---

## Problem 4 – Wave equation

Given:
$$
y = A\cos(kx-\omega t)
$$

Second derivatives:

$$
\frac{\partial^2 y}{\partial t^2} = -\omega^2 A\cos(kx-\omega t)
$$

$$
\frac{\partial^2 y}{\partial x^2} = -k^2 A\cos(kx-\omega t)
$$

Insert into equation:

$$
-\omega^2 y = v^2 (-k^2 y)
$$

Thus:
$$
\omega^2 = v^2 k^2
\Rightarrow v = \frac{\omega}{k}
$$

---

## Problem 5 – Superposition & beats

### 1. Sum of waves

$$
y = y_1 + y_2
$$

Use identity:
$$
\sin a + \sin b = 2\sin\left(\frac{a+b}{2}\right)\cos\left(\frac{a-b}{2}\right)
$$

Result:
$$
y = 2A \cos\left(\frac{\Delta\omega}{2}t\right)
\sin\left(kx - \omega t - \frac{\Delta\omega}{2}t\right)
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

* Envelope: slow amplitude modulation
* Carrier: fast oscillation

---

## Problem 6 – Damped oscillator

Equation:
$$
m\ddot{x}+b\dot{x}+kx=0
$$

Characteristic equation:
$$
mr^2 + br + k = 0
$$

### Cases:

* **Underdamped** ($b^2 < 4mk$):
  $$
  x(t)=Ae^{-\gamma t}\cos(\omega t+\phi)
  $$

* **Critical damping**:
  $$
  x(t)=(A+Bt)e^{-\gamma t}
  $$

* **Overdamped**:
  $$
  x(t)=A e^{r_1 t}+B e^{r_2 t}
  $$

---

## Problem 7 – Forced oscillator

$$
m\ddot{x}+b\dot{x}+kx=F_0\cos(\Omega t)
$$

Amplitude:
$$
A(\Omega)=\frac{F_0/m}{\sqrt{(\omega_0^2-\Omega^2)^2+(b\Omega/m)^2}}
$$

Resonance when:
$$
\Omega \approx \omega_0
$$

---

## Problem 8 – Two coupled masses

Equations:
$$
m\ddot{x}_1 = -k_1 x_1 - k_2(x_1 - x_2)
$$

$$
m\ddot{x}_2 = -k_3 x_2 - k_2(x_2 - x_1)
$$

Normal modes from eigenvalue problem:
$$
\det(K - \omega^2 M)=0
$$

---

## Problem 9 – Chain of springs

Discrete equation:
$$
m\ddot{x}*n = k(x*{n+1} - 2x_n + x_{n-1})
$$

Wave speed:
$$
v = a\sqrt{\frac{k}{m}}
$$

---

## Problem 10 – Double pendulum

Equations (nonlinear):

$$
\ddot{\theta}_1 = f(\theta_1,\theta_2,\dot{\theta}_1,\dot{\theta}_2)
$$

$$
\ddot{\theta}_2 = g(\theta_1,\theta_2,\dot{\theta}_1,\dot{\theta}_2)
$$

Key result: **chaotic behavior**

---

# ✅ Notes for VS Code

To render properly:

1. Install:

   * Markdown Preview Enhanced
   * or KaTeX extension

2. Use:

```
Ctrl + Shift + V
```

3. Ensure:

```
$$ ... $$
```

blocks are preserved (don’t convert to inline)

---

If you want, I can also generate:

* ✅ Python simulations (RK4, animations)
* ✅ HTML interactive visualizations
* ✅ ready-to-run VS Code project structure
