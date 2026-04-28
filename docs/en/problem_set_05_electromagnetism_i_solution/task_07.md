# Problem 7 – Motion in a central field

## System Description

A charged particle moves in a central electric field created by a fixed charge $Q$:

$$E(r) = k \frac{Q}{r^2} \hat{r}$$

where $k = 8.99 \times 10^9$ N·m²/C² (Coulomb's constant).

---

## 1. Equation of Motion of the Particle

**Force on test charge $q$:**

$$\vec{F} = q \vec{E} = k \frac{qQ}{r^2} \hat{r}$$

**Newton's second law in vector form:**

$$m\frac{d^2\vec{r}}{dt^2} = k \frac{qQ}{r^2} \hat{r}$$

**In component form (Cartesian):**

$$m\ddot{x} = k \frac{qQ}{r^3} x$$

$$m\ddot{y} = k \frac{qQ}{r^3} y$$

where $r = \sqrt{x^2 + y^2}$.

**In polar coordinates $(r, \theta)$:**

$$\ddot{r} - r\dot{\theta}^2 = \frac{kqQ}{mr^2}$$

$$r\ddot{\theta} + 2\dot{r}\dot{\theta} = 0$$

The second equation yields **conservation of angular momentum:**

$$L = mr^2\dot{\theta} = \text{constant}$$

---

## 2. Case of Radial Motion

**Pure radial motion:** $\theta = \text{const}$, so $\dot{\theta} = 0$

The equation simplifies to:

$$\ddot{r} = \frac{kqQ}{mr^2}$$

**Energy conservation:**

$$E_{\text{total}} = \frac{1}{2}m\dot{r}^2 + U_{\text{eff}}(r)$$

where the effective potential is:

$$U_{\text{eff}}(r) = k\frac{qQ}{r} + \frac{L^2}{2mr^2}$$

For pure radial motion ($L = 0$):

$$E = \frac{1}{2}m\dot{r}^2 + k\frac{qQ}{r}$$

---

## 3. Numerical Integration: RK4 Method

**State vector for 2D motion:**

$$\vec{y} = [x, y, v_x, v_y]^T$$

**System of first-order ODEs:**

$$\dot{x} = v_x$$

$$\dot{y} = v_y$$

$$\dot{v}_x = \frac{kqQ}{m} \frac{x}{(x^2 + y^2)^{3/2}}$$

$$\dot{v}_y = \frac{kqQ}{m} \frac{y}{(x^2 + y^2)^{3/2}}$$

**Fourth-order Runge-Kutta implementation:**

$$\vec{k}_1 = \Delta t \cdot \vec{f}(\vec{y}_n, t_n)$$

$$\vec{k}_2 = \Delta t \cdot \vec{f}\left(\vec{y}_n + \frac{1}{2}\vec{k}_1, t_n + \frac{\Delta t}{2}\right)$$

$$\vec{k}_3 = \Delta t \cdot \vec{f}\left(\vec{y}_n + \frac{1}{2}\vec{k}_2, t_n + \frac{\Delta t}{2}\right)$$

$$\vec{k}_4 = \Delta t \cdot \vec{f}(\vec{y}_n + \vec{k}_3, t_n + \Delta t)$$

$$\vec{y}_{n+1} = \vec{y}_n + \frac{1}{6}(\vec{k}_1 + 2\vec{k}_2 + 2\vec{k}_3 + \vec{k}_4)$$

**Time step:** $\Delta t = 0.001$ s (adaptive refinement near $r \to 0$ recommended)

---

## 4. Positive and Negative Energy Cases

**Total mechanical energy:**

$$E = \frac{1}{2}m(v_x^2 + v_y^2) + k\frac{qQ}{r}$$

### Case A: Repulsive field ($qQ > 0$)

**Positive energy ($E > 0$):**
- Particle escapes to infinity
- Trajectory: **hyperbola**
- Eccentricity: $\varepsilon = \sqrt{1 + \frac{2EL^2}{m(kqQ)^2}} > 1$
- Scattering angle: $\Theta = 2\arcsin\left(\frac{1}{\varepsilon}\right)$

**Zero energy ($E = 0$):**
- Limiting case
- Particle approaches infinity with zero velocity

**Negative energy ($E < 0$):**
- Not possible for repulsive field with classical mechanics
- Particle always escapes

### Case B: Attractive field ($qQ < 0$)

**Negative energy ($E < 0$):**
- **Bound motion**
- Trajectory: **ellipse** (or circle for $L \neq 0$)
- Semi-major axis: $a = -\frac{k|qQ|}{2E}$
- Period: $T = 2\pi\sqrt{\frac{m a^3}{k|qQ|}}$ (Kepler's third law)

**Zero energy ($E = 0$):**
- Parabolic trajectory
- Particle reaches $r \to \infty$ with zero velocity

**Positive energy ($E > 0$):**
- **Hyperbolic escape**
- Scattering trajectory
- Eccentricity: $\varepsilon = \sqrt{1 + \frac{2EL^2}{m(k|qQ|)^2}} > 1$

---

## 5. Classification Table

| Case | $qQ$ | $E$ | Trajectory | Behavior |
|------|------|-----|-----------|----------|
| Repulsive, unbound | $> 0$ | $> 0$ | Hyperbola | Scatters to $\infty$ |
| Repulsive, marginal | $> 0$ | $= 0$ | Parabola | Reaches $\infty$ with $v=0$ |
| Attractive, bound | $< 0$ | $< 0$ | Ellipse/Circle | Periodic orbit |
| Attractive, marginal | $< 0$ | $= 0$ | Parabola | Escapes with $v=0$ |
| Attractive, unbound | $< 0$ | $> 0$ | Hyperbola | Scatters to $\infty$ |

---

## 6. Comparison with Gravitational Analogy

**Gravitational force (always attractive):**

$$\vec{F}_g = -G\frac{Mm}{r^2}\hat{r}$$

**Coulomb force:**

$$\vec{F}_e = k\frac{q_1q_2}{r^2}\hat{r}$$

| Property | Gravity | Coulomb |
|----------|---------|---------|
| Coupling constant | $G = 6.674 \times 10^{-11}$ N·m²/kg² | $k = 8.99 \times 10^9$ N·m²/C² |
| Polarity | Always attractive | Repulsive (same sign), attractive (opposite sign) |
| Field energy | $U_g = -G\frac{Mm}{r}$ | $U_e = k\frac{q_1q_2}{r}$ |
| Orbits | Always elliptical (bound) | Elliptical (bound) or hyperbolic (unbound) |
| Period (circular orbit) | $T = 2\pi\sqrt{\frac{r^3}{GM}}$ | $T = 2\pi\sqrt{\frac{mr^3}{kq_1q_2}}$ |

**Key difference:**
- Gravity: Only bound elliptical orbits possible (for isolated systems)
- Coulomb: Both bound and unbound orbits depending on sign and energy

---

## 7. Energy Conservation Check

**Numerical energy error per step:**

$$\delta E_n = \frac{|E_n - E_0|}{|E_0|} \times 100\%$$

Expected behavior:
- $\Delta t = 0.001$ s: $\delta E < 0.1\%$ over 1000 steps
- $\Delta t = 0.01$ s: $\delta E \sim 1\%$ (acceptable for qualitative analysis)
- $\Delta t = 0.1$ s: $\delta E > 10\%$ (unacceptable for bound orbits)

---

## 8. Angular Momentum Conservation

**Numerical angular momentum:**

$$L_n = m(x_n \dot{v}_y - y_n \dot{v}_x)$$

**Check:**

$$\delta L_n = \frac{|L_n - L_0|}{|L_0|} \times 100\%$$

For central force: $\delta L_n \approx O(\Delta t^2)$ (machine precision limited)

---

## 9. HTML/JS Animation Requirements

### Canvas Display

```html
<canvas id="trajectory-canvas" width="800" height="800"></canvas>