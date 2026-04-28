# Problem 10 – Double pendulum and deterministic chaos

## System Description

A double pendulum consists of two point masses $m_1$ and $m_2$ connected by massless rigid rods of lengths $l_1$ and $l_2$, suspended in a uniform gravitational field $g$.

---

## 1. Cartesian coordinates as functions of angles

The angles $\theta_1$ and $\theta_2$ are measured from the vertical (downward) direction.

**First mass position:**

$$x_1(t) = l_1 \sin(\theta_1)$$

$$y_1(t) = -l_1 \cos(\theta_1)$$

**Second mass position (relative to fixed origin):**

$$x_2(t) = l_1 \sin(\theta_1) + l_2 \sin(\theta_2)$$

$$y_2(t) = -l_1 \cos(\theta_1) - l_2 \cos(\theta_2)$$

---

## 2. Equations of Motion

The standard form for a double pendulum in Lagrangian formulation yields:

$$(m_1 + m_2) l_1 \ddot{\theta}_1 + m_2 l_2 \ddot{\theta}_2 \cos(\theta_1 - \theta_2) + m_2 l_2 \dot{\theta}_2^2 \sin(\theta_1 - \theta_2) + (m_1 + m_2) g \sin(\theta_1) = 0$$

$$m_2 l_2 \ddot{\theta}_2 + m_2 l_1 \ddot{\theta}_1 \cos(\theta_1 - \theta_2) - m_2 l_1 \dot{\theta}_1^2 \sin(\theta_1 - \theta_2) + m_2 g \sin(\theta_2) = 0$$

**Converted to first-order system for numerical integration:**

$$\dot{\theta}_1 = \omega_1$$

$$\dot{\theta}_2 = \omega_2$$

$$\dot{\omega}_1 = \frac{-g(2m_1 + m_2)\sin(\theta_1) - m_2 g \sin(\theta_1 - 2\theta_2) - 2\sin(\theta_1 - \theta_2)m_2(\omega_2^2 l_2 + \omega_1^2 l_1 \cos(\theta_1 - \theta_2))}{l_1(2m_1 + m_2 - m_2\cos(2(\theta_1 - \theta_2)))}$$

$$\dot{\omega}_2 = \frac{2\sin(\theta_1 - \theta_2)(\omega_1^2 l_1(m_1 + m_2) + g(m_1 + m_2)\cos(\theta_1) + \omega_2^2 l_2 m_2 \cos(\theta_1 - \theta_2))}{l_2(2m_1 + m_2 - m_2\cos(2(\theta_1 - \theta_2)))}$$

---

## 3. Numerical Integration with RK4 and Stability Analysis

**Fourth-order Runge-Kutta method:**

State vector: $\vec{y} = [\theta_1, \theta_2, \omega_1, \omega_2]^T$

For each time step $\Delta t$:

$$\vec{k}_1 = \vec{f}(\vec{y}_n, t_n)$$

$$\vec{k}_2 = \vec{f}\left(\vec{y}_n + \frac{\Delta t}{2}\vec{k}_1, t_n + \frac{\Delta t}{2}\right)$$

$$\vec{k}_3 = \vec{f}\left(\vec{y}_n + \frac{\Delta t}{2}\vec{k}_2, t_n + \frac{\Delta t}{2}\right)$$

$$\vec{k}_4 = \vec{f}(\vec{y}_n + \Delta t \vec{k}_3, t_n + \Delta t)$$

$$\vec{y}_{n+1} = \vec{y}_n + \frac{\Delta t}{6}(\vec{k}_1 + 2\vec{k}_2 + 2\vec{k}_3 + \vec{k}_4)$$

**Energy conservation check for stability:**

Total energy:

$$E(t) = \frac{1}{2}m_1(l_1\dot{\theta}_1)^2 + \frac{1}{2}m_2\left[l_1^2\dot{\theta}_1^2 + l_2^2\dot{\theta}_2^2 + 2l_1l_2\dot{\theta}_1\dot{\theta}_2\cos(\theta_1-\theta_2)\right]$$

$$\quad - m_1 g l_1 \cos(\theta_1) - m_2 g[l_1 \cos(\theta_1) + l_2 \cos(\theta_2)]$$

**Relative energy error:**

$$\delta E = \frac{|E(t) - E(0)|}{|E(0)|} \times 100\%$$

For $\Delta t = 0.01$ s, typical $\delta E < 0.1\%$ over $t = 100$ s.

---

## 4. Standard Parameters

$$m_1 = m_2 = 1 \text{ kg}$$

$$l_1 = l_2 = 1 \text{ m}$$

$$g = 9.81 \text{ m/s}^2$$

$$\Delta t = 0.01 \text{ s}$$

$$t_{\max} = 100 \text{ s}$$

---

## 5. Sensitivity to Initial Conditions: Ensemble Simulation

**Base initial condition:**

$$\theta_1(0) = 2.0 \text{ rad}$$

$$\theta_2(0) = 1.0 \text{ rad}$$

$$\omega_1(0) = 0 \text{ rad/s}$$

$$\omega_2(0) = 0 \text{ rad/s}$$

**Perturbed ensemble (50 copies):**

For each member $i = 1, 2, \ldots, 50$:

$$\theta_2^{(i)}(0) = 1.0 + \delta \epsilon_i$$

where $\epsilon_i$ are random values uniformly distributed in $[-1, 1]$ and $\delta$ is the perturbation scale.

**Three perturbation scenarios:**

| Scenario | $\delta$ | Divergence behavior |
|----------|----------|---------------------|
| Weak | $10^{-4}$ rad | Trajectories remain close for $t < 20$ s |
| Medium | $10^{-3}$ rad | Trajectories diverge rapidly for $t > 10$ s |
| Strong | $10^{-2}$ rad | Trajectories diverge almost immediately ($t > 5$ s) |

---

## 6. Quantitative Measure of Divergence

**Maximum separation at time $t$:**

$$d_{\max}(t) = \max_{i,j} \sqrt{(x_2^{(i)}(t) - x_2^{(j)}(t))^2 + (y_2^{(j)}(t) - y_2^{(j)}(t))^2}$$

**Lyapunov exponent (approximate):**

$$\lambda \approx \frac{1}{t} \ln\left(\frac{d(t)}{d(0)}\right)$$

For the chaotic double pendulum: $\lambda > 0$ (typically $\lambda \approx 0.5$ - $1.5$ depending on energy).

---

## 7. HTML Animation Requirements

### Structure

```html
<div id="container">
  <div id="canvas-area">
    <canvas id="ensemble-canvas" width="1200" height="600"></canvas>
  </div>
  <div id="controls">
    <label for="perturbation">Perturbation scale:</label>
    <input type="range" id="perturbation" min="-4" max="-2" step="0.5" value="-3">
    <span id="perturbation-value">10^-3</span>
    
    <button id="reset-btn">Reset</button>
    <button id="pause-btn">Pause/Resume</button>
  </div>
  <div id="info">
    <p>Time: <span id="time">0.00</span> s</p>
    <p>Max separation (pendulum tips): <span id="max-sep">0.00</span> m</p>
  </div>
</div>