# Problem 6 – Motion with linear drag

## Given

Drag force:
$$F = -kv$$

Initial conditions: $v(0) = v_0$, $x(0) = 0$

---

## Solution

### 1. Equation of motion and solution

**Equation of motion:**

$$m\frac{dv}{dt} = -kv$$

**Separation of variables:**

$$\frac{dv}{v} = -\frac{k}{m}dt$$

**Integration:**

$$\ln(v) - \ln(v_0) = -\frac{k}{m}t$$

$$\ln\left(\frac{v}{v_0}\right) = -\frac{k}{m}t$$

**Analytical solution for velocity:**

$$v(t) = v_0 e^{-\frac{k}{m}t}$$

**Position by integration:**

$$x(t) = \int_0^t v(\tau) d\tau = \int_0^t v_0 e^{-\frac{k}{m}\tau} d\tau$$

$$x(t) = v_0 \left[-\frac{m}{k}e^{-\frac{k}{m}\tau}\right]_0^t$$

$$x(t) = v_0 \frac{m}{k}\left(1 - e^{-\frac{k}{m}t}\right)$$

**Analytical solution for position:**

$$x(t) = \frac{v_0 m}{k}\left(1 - e^{-\frac{k}{m}t}\right)$$

---

### 2. Limit as $t \to \infty$

**Velocity limit:**

$$\lim_{t \to \infty} v(t) = \lim_{t \to \infty} v_0 e^{-\frac{k}{m}t} = 0$$

The body comes to rest asymptotically.

**Position limit:**

$$\lim_{t \to \infty} x(t) = \lim_{t \to \infty} \frac{v_0 m}{k}\left(1 - e^{-\frac{k}{m}t}\right) = \frac{v_0 m}{k}$$

The body travels a **finite maximum distance**:

$$x_{\max} = \frac{v_0 m}{k}$$

**Physical interpretation:** The drag force dissipates all kinetic energy, bringing the body to rest at distance $x_{\max}$.

---

### 3. Comparison with motion without drag

**With drag:**
- Velocity: $v(t) = v_0 e^{-\frac{k}{m}t}$ (exponential decay)
- Position: $x(t) = \frac{v_0 m}{k}\left(1 - e^{-\frac{k}{m}t}\right)$ (asymptotic approach to $x_{\max}$)
- Final state: Body at rest after infinite time

**Without drag** (free motion, $k = 0$):
- Velocity: $v(t) = v_0$ (constant)
- Position: $x(t) = v_0 t$ (linear growth)
- Final state: Body continues with constant velocity forever

**Characteristic time scale (time constant):**

$$\tau = \frac{m}{k}$$

At time $t = \tau$:
- $v(\tau) = v_0 e^{-1} \approx 0.368 v_0$ (velocity reduced to 37%)
- $x(\tau) = \frac{v_0 m}{k}(1 - e^{-1}) \approx 0.632 x_{\max}$ (traveled 63% of max distance)

**Comparison table:**

| Aspect | With drag | Without drag |
|--------|-----------|--------------|
| Velocity behavior | Exponential decay | Constant |
| Distance traveled | Finite ($x_{\max}$) | Infinite |
| Terminal state | At rest | Moving forever |
| Energy | Dissipated by drag | Constant (conserved) |
| Character | $\tau = m/k$ | No time scale |

---

## Key Results

$$\boxed{v(t) = v_0 e^{-\frac{k}{m}t}}$$

$$\boxed{x(t) = \frac{v_0 m}{k}\left(1 - e^{-\frac{k}{m}t}\right)}$$

$$\boxed{x_{\max} = \frac{v_0 m}{k}}$$

$$\boxed{\tau = \frac{m}{k}}$$