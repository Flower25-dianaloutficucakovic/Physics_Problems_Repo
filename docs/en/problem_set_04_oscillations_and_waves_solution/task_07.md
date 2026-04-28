# Problem 7 – Forced oscillator and resonance

## Given equation

$$m \frac{d^2 x}{dt^2} + b \frac{dx}{dt} + k x = F_0 \cos(\Omega t)$$

where:
- $m$ = mass
- $b$ = damping coefficient
- $k$ = spring constant
- $F_0$ = forcing amplitude
- $\Omega$ = forcing frequency

## Solution

### 1. Solve the equation analytically, determining the amplitude of oscillations as a function of $\Omega$

**General solution:** $x(t) = x_{\text{trans}}(t) + x_{\text{ss}}(t)$

where $x_{\text{trans}}(t)$ is transient (decays) and $x_{\text{ss}}(t)$ is steady-state.

**Steady-state solution (particular solution):**

Assume $x_{\text{ss}}(t) = A(\Omega) \cos(\Omega t - \phi)$

**Amplitude of oscillation:**

$$A(\Omega) = \frac{F_0/m}{\sqrt{(\omega_0^2 - \Omega^2)^2 + (2\gamma\Omega)^2}}$$

where:
- $\omega_0 = \sqrt{\frac{k}{m}}$ = natural frequency
- $\gamma = \frac{b}{2m}$ = damping rate

**Simplified form:**

$$A(\Omega) = \frac{F_0}{\sqrt{(k - m\Omega^2)^2 + (b\Omega)^2}}$$

**Phase shift:**

$$\phi(\Omega) = \arctan\left(\frac{b\Omega}{k - m\Omega^2}\right)$$

---

### 2. Solve the equation numerically

**Algorithm:** Fourth-order Runge-Kutta (RK4)

Convert to system of first-order ODEs:

$$\dot{x} = v$$

$$\dot{v} = \frac{F_0}{m}\cos(\Omega t) - \frac{b}{m}v - \frac{k}{m}x$$

**Parameters (standard case):**

- $m = 1$ kg
- $k = 100$ N/m
- $b = 10$ kg/s
- $F_0 = 50$ N
- Time step: $dt = 0.001$ s
- Total time: $T = 100$ s (to allow transient to decay)

**Initial conditions:**
$$x(0) = 0, \quad v(0) = 0$$

**Numerical procedure:**

1. Integrate over long time to eliminate transient
2. Record amplitude from last 20 seconds of simulation
3. Vary $\Omega$ from $0$ to $3\omega_0$
4. Extract amplitude for each frequency using peak detection

---

### 3. Investigate the steady-state amplitude as a function of $\Omega$

**Key frequency regions:**

| Frequency Region | Behavior | Amplitude |
|------------------|----------|-----------|
| $\Omega \ll \omega_0$ (quasi-static) | In phase with force | $A \approx \frac{F_0}{k}$ |
| $\Omega = \omega_0$ (resonance) | Maximum amplitude | $A_{\max} = \frac{F_0}{b\omega_0}$ |
| $\Omega \gg \omega_0$ (inertial) | Out of phase by $\pi$ | $A \approx \frac{F_0}{m\Omega^2}$ |

**Resonance condition:**

At $\Omega = \omega_0$:

$$A_{\max} = \frac{F_0}{b\omega_0} = \frac{F_0}{2m\gamma\omega_0}$$

**Quality factor:**

$$Q = \frac{\omega_0}{2\gamma} = \frac{m\omega_0}{b} = \frac{1}{\omega_0}\sqrt{\frac{k}{m}} \cdot \frac{m}{b} = \frac{\sqrt{km}}{b}$$

**Width of resonance peak:**

$$\Delta\Omega_{\text{FWHM}} = 2\gamma = \frac{b}{m}$$

Bandwidth: $\Delta\Omega = \frac{\omega_0}{Q}$

**Example calculation:**

For our parameters:
- $\omega_0 = \sqrt{100/1} = 10$ rad/s
- $Q = \frac{1 \times 10}{10} = 1$
- $A_{\max} = \frac{50}{10 \times 10} = 0.5$ m
- $\Delta\Omega = 10$ rad/s

---

### 4. Generate the resonance curve

**Amplitude vs. driving frequency:**

The resonance curve plot shows:

$$A(\Omega) \text{ vs. } \Omega$$

**Three representative damping cases:**

**Case 1: Light damping** ($b = 2$ kg/s, $Q = 5$)
- Sharp peak at $\omega_0$
- $A_{\max} = 2.5$ m
- Narrow bandwidth

**Case 2: Critical damping** ($b = 20$ kg/s, $Q = 0.5$)
- Broad, rounded peak
- $A_{\max} = 0.25$ m
- Wide bandwidth

**Case 3: Heavy damping** ($b = 50$ kg/s, $Q = 0.2$)
- Very flat response
- $A_{\max} = 0.1$ m
- Extremely wide bandwidth

**Normalized form:**

Define dimensionless frequency: $r = \frac{\Omega}{\omega_0}$

$$A(r) = \frac{F_0/k}{\sqrt{(1-r^2)^2 + (2\zeta r)^2}}$$

where $\zeta = \frac{b}{2\sqrt{km}}$ is the damping ratio.

---

### 5. Investigate the phase shift

**Phase shift formula:**

$$\phi(\Omega) = \arctan\left(\frac{2\zeta r}{1-r^2}\right)$$

**Phase behavior:**

| Frequency | Phase shift $\phi$ |
|-----------|-------------------|
| $\Omega \to 0$ | $\phi \to 0$ (in phase) |
| $\Omega = \omega_0$ | $\phi = \frac{\pi}{2}$ (90° lag) |
| $\Omega \to \infty$ | $\phi \to \pi$ (out of phase) |

**Physical interpretation:**

- At low frequencies: oscillation follows the forcing in phase
- Near resonance: maximum lag of 90°
- At high frequencies: oscillation opposes the forcing (180° phase lag)

**Velocity phase shift:**

$$\phi_v = \phi - \frac{\pi}{2}$$

- At resonance: velocity is in phase with force (maximum power transfer)

---

### 6. Interpret the phenomenon of resonance

**Physical mechanism:**

1. **Energy input:** The external force does work on the system.
2. **Energy storage:** Energy builds up in oscillations.
3. **Energy dissipation:** Damping removes energy at rate $\propto v^2$.
4. **Equilibrium at resonance:** Input power = dissipated power.

**Power absorbed:**

$$P(t) = F(t) \cdot v(t) = F_0 \cos(\Omega t) \cdot [-A(\Omega)\Omega \sin(\Omega t - \phi)]$$

Average power (steady-state):

$$\langle P \rangle = \frac{1}{2}F_0 A(\Omega) \Omega \sin(\phi)$$

At resonance ($\Omega = \omega_0$, $\phi = \pi/2$):

$$\langle P \rangle_{\max} = \frac{1}{2}F_0 A_{\max} \omega_0 = \frac{F_0^2}{2b}$$

**Quality factor interpretation:**

$$Q = 2\pi \frac{\text{Maximum energy stored}}{\text{Energy dissipated per cycle}}$$

Higher $Q$ → sharper resonance → greater amplitude at resonance.

**Real-world examples:**

- Bridge resonance (Tacoma Narrows, 1940)
- Wine glass shattering at the right frequency
- Radio tuning circuits (LC resonance)
- Earthquake damage to buildings
- Mechanical vibration isolation failures

---

## Summary Table

| Parameter | Symbol | Effect | Unit |
|-----------|--------|--------|------|
| Natural frequency | $\omega_0$ | Sets resonance location | rad/s |
| Damping coefficient | $b$ | Controls peak width | kg/s |
| Quality factor | $Q$ | $Q = m\omega_0/b$ | — |
| Maximum amplitude | $A_{\max}$ | $A_{\max} = F_0/(b\omega_0)$ | m |
| Resonance frequency | $\Omega_{\text{res}}$ | $\approx \omega_0$ (slightly lower for underdamped) | rad/s |
| Bandwidth (FWHM) | $\Delta\Omega$ | $\Delta\Omega = b/m$ | rad/s |
