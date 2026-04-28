# Problem 3 – Harmonic wave

## Given Wave Equation

$$y(x,t) = A \sin(kx - \omega t)$$

## Solution

### 1. Determine the wavelength

The wavelength $\lambda$ is the spatial period of the wave. It represents the distance over which the wave repeats itself in space.

For a wave of the form $y(x,t) = A \sin(kx - \omega t)$, the wavenumber $k$ is related to the wavelength by:

$$k = \frac{2\pi}{\lambda}$$

Solving for wavelength:

$$\lambda = \frac{2\pi}{k}$$

**Physical interpretation:** The wavelength is the distance between two consecutive points that oscillate in phase.

---

### 2. Determine the phase velocity

The phase velocity $v$ (or wave velocity) is the speed at which a point of constant phase propagates through space.

A point of constant phase satisfies:

$$kx - \omega t = \text{constant}$$

Differentiating with respect to time:

$$k\frac{dx}{dt} - \omega = 0$$

$$\frac{dx}{dt} = \frac{\omega}{k}$$

Therefore, the phase velocity is:

$$v = \frac{\omega}{k}$$

This can also be expressed in terms of wavelength and frequency:

$$v = \frac{\omega}{k} = \frac{\omega}{2\pi/\lambda} = f\lambda$$

where $f = \frac{\omega}{2\pi}$ is the frequency in Hz.

**Physical interpretation:** The phase velocity tells us how fast the wave pattern moves through the medium.

---

### 3. Calculate $v$ for $k = 4\pi$, $\omega = 20\pi$

Using the formula $v = \frac{\omega}{k}$:

$$v = \frac{20\pi}{4\pi} = \frac{20}{4} = 5 \text{ m/s}$$

**Additional calculations:**

Wavelength:

$$\lambda = \frac{2\pi}{k} = \frac{2\pi}{4\pi} = \frac{1}{2} = 0.5 \text{ m}$$

Frequency:

$$f = \frac{\omega}{2\pi} = \frac{20\pi}{2\pi} = 10 \text{ Hz}$$

**Verification:**

$$v = f \cdot \lambda = 10 \times 0.5 = 5 \text{ m/s} \quad \checkmark$$

---

### 4. Does the point $x = \lambda$ oscillate in phase with the point $x = 0$?

**Answer: Yes, they oscillate in phase.**

**Proof:**

At point $x = 0$:

$$y(0,t) = A \sin(k \cdot 0 - \omega t) = A \sin(-\omega t) = -A \sin(\omega t)$$

At point $x = \lambda = \frac{2\pi}{k}$:

$$y(\lambda, t) = A \sin\left(k \cdot \frac{2\pi}{k} - \omega t\right)$$

$$y(\lambda, t) = A \sin(2\pi - \omega t)$$

Using the sine identity $\sin(2\pi - \theta) = -\sin(\theta)$:

$$y(\lambda, t) = A \sin(2\pi - \omega t) = -A \sin(\omega t)$$

**Result:**

$$y(\lambda, t) = y(0, t) = -A \sin(\omega t)$$

Both points have identical oscillations at all times $t$, so they oscillate **perfectly in phase** (phase difference = $0$).

**General principle:** Points separated by an integer number of wavelengths oscillate in phase:

$$y(x + n\lambda, t) = y(x, t) \quad \text{for any integer } n$$

---

## Summary Table

| Parameter | Symbol | Formula | Value |
|-----------|--------|---------|-------|
| Wavenumber | $k$ | — | $4\pi$ rad/m |
| Angular frequency | $\omega$ | — | $20\pi$ rad/s |
| Wavelength | $\lambda$ | $\frac{2\pi}{k}$ | $0.5$ m |
| Frequency | $f$ | $\frac{\omega}{2\pi}$ | $10$ Hz |
| Phase velocity | $v$ | $\frac{\omega}{k}$ | $5$ m/s |
| Period | $T$ | $\frac{1}{f}$ | $0.1$ s |

---

## Physical Interpretation

The wave $y(x,t) = A \sin(kx - \omega t)$ represents a sinusoidal disturbance propagating in the **positive $x$-direction** with velocity $v = 5$ m/s.

- **At a fixed location** ($x = \text{const}$): The wave oscillates harmonically with angular frequency $\omega = 20\pi$ rad/s and period $T = 0.1$ s.

- **At a fixed time** ($t = \text{const}$): The spatial profile is sinusoidal with wavelength $\lambda = 0.5$ m, repeating every $0.5$ m along the $x$-axis.

- **Phase velocity**: The "wave crest" (point where $\sin(kx - \omega t) = 1$) travels at $5$ m/s, covering one wavelength ($0.5$ m) in one period ($0.1$ s).
