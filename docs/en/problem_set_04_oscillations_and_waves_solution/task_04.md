# Problem 4 – Wave equation

## Given Function

$$y(x,t) = A \cos(kx - \omega t)$$

## Solution

### 1. Verify that it satisfies the wave equation

The wave equation is:

$$\frac{\partial^2 y}{\partial t^2} = v^2 \frac{\partial^2 y}{\partial x^2}$$

We need to compute the second partial derivatives.

#### First, compute $\frac{\partial y}{\partial t}$:

$$\frac{\partial y}{\partial t} = \frac{\partial}{\partial t}\left[A \cos(kx - \omega t)\right]$$

$$\frac{\partial y}{\partial t} = A \cdot (-1) \cdot (-\omega) \sin(kx - \omega t)$$

$$\frac{\partial y}{\partial t} = A \omega \sin(kx - \omega t)$$

#### Now compute $\frac{\partial^2 y}{\partial t^2}$:

$$\frac{\partial^2 y}{\partial t^2} = \frac{\partial}{\partial t}\left[A \omega \sin(kx - \omega t)\right]$$

$$\frac{\partial^2 y}{\partial t^2} = A \omega \cdot (-\omega) \cos(kx - \omega t)$$

$$\frac{\partial^2 y}{\partial t^2} = -A \omega^2 \cos(kx - \omega t)$$

#### Next, compute $\frac{\partial y}{\partial x}$:

$$\frac{\partial y}{\partial x} = \frac{\partial}{\partial x}\left[A \cos(kx - \omega t)\right]$$

$$\frac{\partial y}{\partial x} = A \cdot (-1) \cdot k \sin(kx - \omega t)$$

$$\frac{\partial y}{\partial x} = -A k \sin(kx - \omega t)$$

#### Now compute $\frac{\partial^2 y}{\partial x^2}$:

$$\frac{\partial^2 y}{\partial x^2} = \frac{\partial}{\partial x}\left[-A k \sin(kx - \omega t)\right]$$

$$\frac{\partial^2 y}{\partial x^2} = -A k \cdot k \cos(kx - \omega t)$$

$$\frac{\partial^2 y}{\partial x^2} = -A k^2 \cos(kx - \omega t)$$

#### Verify the wave equation:

The left-hand side:

$$\frac{\partial^2 y}{\partial t^2} = -A \omega^2 \cos(kx - \omega t)$$

The right-hand side (with wave velocity $v$):

$$v^2 \frac{\partial^2 y}{\partial x^2} = v^2 \cdot \left(-A k^2 \cos(kx - \omega t)\right)$$

$$v^2 \frac{\partial^2 y}{\partial x^2} = -A v^2 k^2 \cos(kx - \omega t)$$

#### For these to be equal:

$$-A \omega^2 \cos(kx - \omega t) = -A v^2 k^2 \cos(kx - \omega t)$$

Dividing both sides by $-A \cos(kx - \omega t)$ (assuming $A \neq 0$ and the cosine term is not identically zero):

$$\omega^2 = v^2 k^2$$

**This equation is satisfied if:**

$$\omega = v \cdot k$$

or equivalently:

$$v = \frac{\omega}{k}$$

✓ **The function $y(x,t) = A \cos(kx - \omega t)$ satisfies the wave equation provided the relationship $\omega = vk$ holds.**

---

### 2. Determine the relationship between $v$, $k$, and $\omega$

From the verification above, we obtain the **dispersion relation**:

$$\boxed{v = \frac{\omega}{k}}$$

This is the **fundamental relation for waves in a non-dispersive medium** (like sound waves in a uniform medium or electromagnetic waves in vacuum).

#### Alternative forms:

**Using wavelength $\lambda$ and period $T$:**

Since:
- $k = \frac{2\pi}{\lambda}$ (wavenumber)
- $\omega = \frac{2\pi}{T}$ (angular frequency)
- $f = \frac{1}{T}$ (frequency in Hz)

We can also write:

$$v = \frac{\omega}{k} = \frac{\frac{2\pi}{T}}{\frac{2\pi}{\lambda}} = \frac{\lambda}{T} = \lambda f$$

**The wave velocity is the product of wavelength and frequency.**

#### Physical interpretation:

| Relation | Meaning |
|----------|---------|
| $v = \frac{\omega}{k}$ | Phase velocity (wave speed) |
| $v = \lambda f$ | Distance covered per period |
| $\omega = vk$ | Angular frequency proportional to wavenumber |

For a **non-dispersive medium**, the phase velocity $v$ is **constant** — independent of frequency. This means:
- All frequencies travel at the same speed
- A wave packet maintains its shape (no broadening)
- Examples: sound in air, light in vacuum

---

### 3. Verification with numerical values (optional extension)

**Example parameters:**
- $A = 1$ m
- $k = 2\pi$ rad/m (corresponds to wavelength $\lambda = 1$ m)
- $\omega = 2\pi$ rad/s (corresponds to period $T = 1$ s)

**Wave velocity:**

$$v = \frac{\omega}{k} = \frac{2\pi}{2\pi} = 1 \text{ m/s}$$

**Check:** 

$$v = \lambda f = 1 \text{ m} \times 1 \text{ Hz} = 1 \text{ m/s}$$ ✓

---

## Summary

The function $y(x,t) = A \cos(kx - \omega t)$ is indeed a solution to the wave equation:

$$\frac{\partial^2 y}{\partial t^2} = v^2 \frac{\partial^2 y}{\partial x^2}$$

**provided the dispersion relation is satisfied:**

$$\boxed{v = \frac{\omega}{k}}$$

This relationship connects the wave's **angular frequency** ($\omega$), **wavenumber** ($k$), and **phase velocity** ($v$) in a non-dispersive medium.
