# Problem 7 – Vertical throw with drag

## Given

Equation of motion:

$$m\frac{dv}{dt} = -mg - kv$$

Initial conditions: $v(0) = v_0$, $x(0) = 0$

---

## Solution

### 1. Solve the equation

Rewrite the differential equation:

$$\frac{dv}{dt} = -g - \frac{k}{m}v$$

Let $\beta = \frac{k}{m}$. Then:

$$\frac{dv}{dt} + \beta v = -g$$

This is a first-order linear ODE. The solution is:

$$v(t) = e^{-\beta t}\left(v_0 + \frac{g}{\beta}\right) - \frac{g}{\beta}$$

or equivalently:

$$v(t) = \left(v_0 + \frac{g}{\beta}\right)e^{-\beta t} - \frac{g}{\beta}$$

where $\beta = \frac{k}{m}$.

**Terminal velocity** (as $t \to \infty$):

$$v_{\infty} = -\frac{g}{\beta} = -\frac{mg}{k}$$

The negative sign indicates downward motion.

To find position, integrate velocity:

$$x(t) = \int_0^t v(\tau) d\tau = \int_0^t \left[\left(v_0 + \frac{g}{\beta}\right)e^{-\beta \tau} - \frac{g}{\beta}\right] d\tau$$

$$x(t) = \frac{1}{\beta}\left(v_0 + \frac{g}{\beta}\right)(1 - e^{-\beta t}) - \frac{g}{\beta}t$$

---

### 2. Determine the maximum height

At maximum height, velocity equals zero: $v(t_{\max}) = 0$

$$0 = \left(v_0 + \frac{g}{\beta}\right)e^{-\beta t_{\max}} - \frac{g}{\beta}$$

$$e^{-\beta t_{\max}} = \frac{g/\beta}{v_0 + g/\beta}$$

$$t_{\max} = \frac{1}{\beta}\ln\left(1 + \frac{\beta v_0}{g}\right)$$

Maximum height:

$$h_{\max} = x(t_{\max}) = \frac{1}{\beta}\left(v_0 + \frac{g}{\beta}\right)(1 - e^{-\beta t_{\max}}) - \frac{g}{\beta}t_{\max}$$

Substituting $e^{-\beta t_{\max}} = \frac{g/\beta}{v_0 + g/\beta}$:

$$h_{\max} = \frac{1}{\beta}\left(v_0 + \frac{g}{\beta}\right) \cdot \frac{v_0}{v_0 + g/\beta} - \frac{g}{\beta^2}\ln\left(1 + \frac{\beta v_0}{g}\right)$$

$$h_{\max} = \frac{v_0}{\beta} - \frac{g}{\beta^2}\ln\left(1 + \frac{\beta v_0}{g}\right)$$

---

### 3. Compare with the case without drag

**Without drag** ($k = 0$, $\beta \to 0$):

Using L'Hôpital's rule or Taylor expansion as $\beta \to 0$:

$$h_{\max}^{\text{no drag}} = \lim_{\beta \to 0} \left[\frac{v_0}{\beta} - \frac{g}{\beta^2}\ln\left(1 + \frac{\beta v_0}{g}\right)\right]$$

Using $\ln(1 + x) \approx x - \frac{x^2}{2} + \frac{x^3}{3} - \ldots$:

$$\ln\left(1 + \frac{\beta v_0}{g}\right) \approx \frac{\beta v_0}{g} - \frac{\beta^2 v_0^2}{2g^2}$$

$$h_{\max}^{\text{no drag}} = \frac{v_0^2}{2g}$$

**Key observation:** Drag reduces maximum height: $h_{\max}(\text{with drag}) < \frac{v_0^2}{2g}$

---

### 4. Numerical simulation

```python
import numpy as np
import matplotlib.pyplot as plt

# Parameters
m = 1.0          # mass [kg]
g = 9.81         # gravitational acceleration [m/s^2]
k = 0.1          # drag coefficient [kg/s]
v0 = 20.0        # initial velocity [m/s]
beta = k / m     # drag parameter [1/s]

# Time parameters
t_max = 5.0
dt = 0.01
t = np.arange(0, t_max, dt)

# Numerical solution (Euler method)
v_num = np.zeros_like(t)
x_num = np.zeros_like(t)
v_num[0] = v0
x_num[0] = 0

for i in range(1, len(t)):
    dv_dt = -g - beta * v_num[i-1]
    v_num[i] = v_num[i-1] + dv_dt * dt
    x_num[i] = x_num[i-1] + v_num[i-1] * dt

# Analytical solution
v_analytical = (v0 + g/beta) * np.exp(-beta * t) - g/beta
x_analytical = (1/beta) * (v0 + g/beta) * (1 - np.exp(-beta * t)) - (g/beta) * t

# Plotting
fig, axes = plt.subplots(1, 2, figsize=(12, 5))

# Velocity vs time
axes[0].plot(t, v_num, 'b-', label='Numerical', linewidth=2)
axes[0].plot(t, v_analytical, 'r--', label='Analytical', linewidth=2)
axes[0].axhline(y=-g/beta, color='k', linestyle=':', label=f'Terminal velocity')
axes[0].set_xlabel('Time [s]', fontsize=11)
axes[0].set_ylabel('Velocity [m/s]', fontsize=11)
axes[0].set_title('Velocity vs Time (with drag)', fontsize=12)
axes[0].grid(True, alpha=0.3)
axes[0].legend()

# Position vs time
axes[1].plot(t, x_num, 'b-', label='Numerical', linewidth=2)
axes[1].plot(t, x_analytical, 'r--', label='Analytical', linewidth=2)
axes[1].set_xlabel('Time [s]', fontsize=11)
axes[1].set_ylabel('Position [m]', fontsize=11)
axes[1].set_title('Position vs Time (with drag)', fontsize=12)
axes[1].grid(True, alpha=0.3)
axes[1].legend()

plt.tight_layout()
plt.show()

# Find maximum height
h_max_index = np.argmax(x_num)
h_max_num = x_num[h_max_index]
t_max_num = t[h_max_index]

h_max_analytical = v0/beta - (g/beta**2) * np.log(1 + beta*v0/g)
t_max_analytical = (1/beta) * np.log(1 + beta*v0/g)

print(f"Maximum height (numerical):  {h_max_num:.4f} m at t = {t_max_num:.4f} s")
print(f"Maximum height (analytical): {h_max_analytical:.4f} m at t = {t_max_analytical:.4f} s")
print(f"Terminal velocity: {-g/beta:.4f} m/s")