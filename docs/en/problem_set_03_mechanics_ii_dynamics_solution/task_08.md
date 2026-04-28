# Problem 8 – Harmonic oscillator (formal dynamics)

## Given Equation of Motion

$$m\ddot{x} + kx = 0$$

---

## 1. Solve the equation

This is a second-order linear homogeneous differential equation. Rewrite it as:

$$\ddot{x} + \omega_0^2 x = 0$$

where the natural angular frequency is defined as:

$$\omega_0 = \sqrt{\frac{k}{m}}$$

**General solution:**

$$x(t) = A\cos(\omega_0 t) + B\sin(\omega_0 t)$$

Or equivalently:

$$x(t) = C\cos(\omega_0 t + \phi)$$

where $C$ is the amplitude and $\phi$ is the phase constant.

**Velocity:**

$$v(t) = \dot{x}(t) = -A\omega_0\sin(\omega_0 t) + B\omega_0\cos(\omega_0 t)$$

Or:

$$v(t) = -C\omega_0\sin(\omega_0 t + \phi)$$

---

## 2. Determine the natural frequency

The natural frequency (circular frequency) is:

$$\omega_0 = \sqrt{\frac{k}{m}} \quad [\text{rad/s}]$$

The ordinary frequency is:

$$f = \frac{\omega_0}{2\pi} = \frac{1}{2\pi}\sqrt{\frac{k}{m}} \quad [\text{Hz}]$$

The period of oscillation is:

$$T = \frac{1}{f} = \frac{2\pi}{\omega_0} = 2\pi\sqrt{\frac{m}{k}} \quad [\text{s}]$$

---

## 3. Write down the energy as a function of time

**Kinetic energy:**

$$T(t) = \frac{1}{2}m v^2(t) = \frac{1}{2}m\dot{x}^2(t)$$

$$T(t) = \frac{1}{2}m C^2\omega_0^2\sin^2(\omega_0 t + \phi)$$

**Potential energy:**

$$U(t) = \frac{1}{2}kx^2(t)$$

$$U(t) = \frac{1}{2}kC^2\cos^2(\omega_0 t + \phi)$$

Since $k = m\omega_0^2$:

$$U(t) = \frac{1}{2}m\omega_0^2 C^2\cos^2(\omega_0 t + \phi)$$

**Total energy:**

$$E_{\text{total}}(t) = T(t) + U(t)$$

$$E_{\text{total}}(t) = \frac{1}{2}m C^2\omega_0^2\sin^2(\omega_0 t + \phi) + \frac{1}{2}m\omega_0^2 C^2\cos^2(\omega_0 t + \phi)$$

$$E_{\text{total}}(t) = \frac{1}{2}m\omega_0^2 C^2\left[\sin^2(\omega_0 t + \phi) + \cos^2(\omega_0 t + \phi)\right]$$

$$E_{\text{total}}(t) = \frac{1}{2}m\omega_0^2 C^2$$

---

## 4. Show that energy is conserved

The total energy is:

$$E = \frac{1}{2}m\omega_0^2 C^2 = \frac{1}{2}kC^2 = \text{constant}$$

This is **independent of time**, which proves energy conservation.

**Alternative form:**

The energy can also be expressed as:

$$E = \frac{1}{2}kA^2 + \frac{1}{2}m B^2\omega_0^2$$

where $A$ and $B$ are the coefficients in the general solution.

**Time-dependent exchange:**

While the total energy is constant, energy continuously exchanges between kinetic and potential forms:

- When $x = \pm C$ (maximum displacement): $T = 0$, $U = \frac{1}{2}kC^2 = E_{\text{max}}$
- When $x = 0$ (equilibrium): $U = 0$, $T = \frac{1}{2}m v_{\text{max}}^2 = E_{\text{max}}$

$$E_{\text{max}} = \frac{1}{2}kC^2 = \frac{1}{2}m v_{\text{max}}^2$$

---

## 5. Interpret the motion in phase space

**Phase space:** A 2D plane with coordinates $(x, v)$ or equivalently $(x, p)$ where $p = m v$ is momentum.

For the harmonic oscillator, the phase space trajectory is an **ellipse**.

**Parametric equations of the ellipse:**

$$x(t) = C\cos(\omega_0 t + \phi)$$

$$v(t) = -C\omega_0\sin(\omega_0 t + \phi)$$

Eliminating the parameter $t$:

$$\frac{x^2}{C^2} + \frac{v^2}{(C\omega_0)^2} = 1$$

This is an ellipse centered at the origin with semi-axes $C$ (position) and $C\omega_0$ (velocity).

**Energy interpretation:**

The semi-major axis of the ellipse increases with total energy:

$$C = \sqrt{\frac{2E}{k}}$$

Higher energy levels correspond to larger ellipses in phase space.

**Motion direction:** The system moves **counterclockwise** around the ellipse (for positive time evolution).

**Stability:** The origin $(x=0, v=0)$ is a stable equilibrium point — a center in phase space.

---

## Summary Table

| Quantity | Expression |
|----------|-----------|
| **Natural frequency** | $$\omega_0 = \sqrt{\frac{k}{m}}$$ |
| **Period** | $$T = 2\pi\sqrt{\frac{m}{k}}$$ |
| **Amplitude** | $$C = \text{constant (determined by I.C.)}$$ |
| **Kinetic energy** | $$T(t) = \frac{1}{2}m\omega_0^2 C^2\sin^2(\omega_0 t + \phi)$$ |
| **Potential energy** | $$U(t) = \frac{1}{2}m\omega_0^2 C^2\cos^2(\omega_0 t + \phi)$$ |
| **Total energy** | $$E = \frac{1}{2}m\omega_0^2 C^2 = \text{const}$$ |
| **Phase space** | Ellipse: $$\frac{x^2}{C^2} + \frac{v^2}{(C\omega_0)^2} = 1$$ |
