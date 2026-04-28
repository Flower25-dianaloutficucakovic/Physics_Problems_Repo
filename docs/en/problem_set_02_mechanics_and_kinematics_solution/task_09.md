# Problem 9 – Change of reference frame (Copernican model → geocentric description)

## Problem Statement

Earth and Mars move in circles around the Sun in the same direction.

Assume the model (heliocentric system):
$$\vec r_Z(t) = R_Z\,\bigl(\cos(\omega_Z t),\sin(\omega_Z t)\bigr)$$

$$\vec r_M(t) = R_M\,\bigl(\cos(\omega_M t),\sin(\omega_M t)\bigr)$$

---

## Solution

### 1. Heliocentric System (Sun at the Center)

In the heliocentric reference frame, both Earth and Mars orbit the Sun with their respective orbital parameters:

**Earth's orbit:**
- Orbital radius: $R_Z \approx 1 \text{ AU}$ (Astronomical Unit)
- Angular velocity: $\omega_Z = \frac{2\pi}{T_Z}$, where $T_Z = 1 \text{ year}$

**Mars's orbit:**
- Orbital radius: $R_M \approx 1.52 \text{ AU}$
- Angular velocity: $\omega_M = \frac{2\pi}{T_M}$, where $T_M \approx 1.88 \text{ years}$

Since $T_M > T_Z$, we have $\omega_M < \omega_Z$ (Mars orbits slower than Earth).

### 2. Geocentric System (Change of Reference Frame)

To transform from the heliocentric system to the geocentric system (with Earth at the origin), we calculate the relative position of Mars with respect to Earth:

$$\vec r_{M/Z}(t) = \vec r_M(t) - \vec r_Z(t)$$

**Expanding the components:**

$$\vec r_{M/Z}(t) = R_M\,\bigl(\cos(\omega_M t), \sin(\omega_M t)\bigr) - R_Z\,\bigl(\cos(\omega_Z t), \sin(\omega_Z t)\bigr)$$

**Component form:**

$$x_{M/Z}(t) = R_M \cos(\omega_M t) - R_Z \cos(\omega_Z t)$$

$$y_{M/Z}(t) = R_M \sin(\omega_M t) - R_Z \sin(\omega_Z t)$$

---

### 3. Physical Interpretation

In the geocentric frame, Mars's trajectory is a **rosette curve** (or epitrochoid). This occurs because:

- Earth completes its orbit while Mars moves more slowly
- The relative angular velocity is $\Delta \omega = \omega_Z - \omega_M$
- Over time, the relative position vector $\vec r_{M/Z}(t)$ rotates and creates loops

**Key insight:** This is why ancient astronomers observed **retrograde motion** of Mars from Earth—the planet appeared to move backward relative to the stars, not because Mars actually reversed direction, but because Earth was overtaking Mars in their respective orbits.

---

## Numerical Parameters (Example)

For a simplified model, we can use:

| Parameter | Value | Unit |
|-----------|-------|------|
| $R_Z$ | $1.0$ | AU |
| $R_M$ | $1.52$ | AU |
| $T_Z$ | $365.25$ | days |
| $T_M$ | $686.97$ | days |
| $\omega_Z$ | $\frac{2\pi}{365.25} \approx 0.01721$ | rad/day |
| $\omega_M$ | $\frac{2\pi}{686.97} \approx 0.00914$ | rad/day |

---

## Analysis

### Relative Angular Velocity

$$\Delta \omega = \omega_Z - \omega_M = \frac{2\pi}{T_Z} - \frac{2\pi}{T_M}$$

$$\Delta \omega = 2\pi \left(\frac{1}{T_Z} - \frac{1}{T_M}\right) = 2\pi \left(\frac{T_M - T_Z}{T_Z T_M}\right)$$

This represents how fast the relative position vector "spins" around Earth in the geocentric frame.

### Synodic Period

The synodic period (time between successive oppositions of Mars) is:

$$T_{\text{synodic}} = \frac{2\pi}{\Delta \omega} = \frac{T_Z T_M}{T_M - T_Z}$$

Substituting numerical values:

$$T_{\text{synodic}} = \frac{365.25 \times 686.97}{686.97 - 365.25} \approx 780 \text{ days} \approx 2.13 \text{ years}$$

---

## Visualization Description

**Panel A (Heliocentric):**
- Sun at origin (0, 0)
- Earth traces a circle of radius $R_Z$
- Mars traces a circle of radius $R_M > R_Z$
- Both orbits are coplanar, counterclockwise

**Panel B (Geocentric):**
- Earth at origin (0, 0)
- Mars's trajectory forms a rosette pattern with retrograde loops
- The number of complete rosette petals relates to the ratio $T_M / T_Z$

---

## Key Equations Summary

| Quantity | Expression |
|----------|-----------|
| **Heliocentric position (Earth)** | $\vec r_Z(t) = R_Z(\cos \omega_Z t, \sin \omega_Z t)$ |
| **Heliocentric position (Mars)** | $\vec r_M(t) = R_M(\cos \omega_M t, \sin \omega_M t)$ |
| **Geocentric position (Mars)** | $\vec r_{M/Z}(t) = (R_M \cos \omega_M t - R_Z \cos \omega_Z t, R_M \sin \omega_M t - R_Z \sin \omega_Z t)$ |
| **Relative angular velocity** | $\Delta \omega = \omega_Z - \omega_M$ |
| **Synodic period** | $T_s = \frac{2\pi}{\Delta \omega} = \frac{T_Z T_M}{T_M - T_Z}$ |

---

## Historical Note

This problem demonstrates why the **Copernican (heliocentric) model** is superior to the **Ptolemaic (geocentric) model** for explaining planetary motion:

- **Ptolemaic model**: Required complex systems of epicycles (circles upon circles) to explain retrograde motion
- **Copernican model**: Retrograde motion is a natural consequence of different orbital periods—no additional complexity needed

The transformation from one reference frame to another reveals that the same physical phenomenon can appear very different depending on the observer's perspective.