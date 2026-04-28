# Problem 9 – Dipole in an external field

## System Description

An electric dipole with dipole moment $\vec{p}$ is placed in a uniform external electric field $\vec{E}_0$. The dipole consists of two point charges $+q$ and $-q$ separated by a small distance $d$, where the dipole moment magnitude is:

$$p = qd$$

---

## 1. Derive the formula for the torque acting on the dipole

**Setup:**

The dipole is oriented at angle $\theta$ relative to the electric field direction. The positive charge experiences force $\vec{F}_+ = q\vec{E}_0$ and the negative charge experiences force $\vec{F}_- = -q\vec{E}_0$.

**Torque calculation:**

The net force on the dipole is zero (uniform field), but the forces create a torque about the center:

$$\vec{\tau} = \vec{r}_+ \times \vec{F}_+ + \vec{r}_- \times \vec{F}_-$$

For a dipole oriented at angle $\theta$ to the field, the perpendicular distance from the center to each force line is $\frac{d}{2}\sin\theta$:

$$\tau = q E_0 \frac{d}{2}\sin\theta + q E_0 \frac{d}{2}\sin\theta$$

$$\tau = q d E_0 \sin\theta$$

$$\boxed{\tau = p E_0 \sin\theta}$$

**Vector form:**

$$\vec{\tau} = \vec{p} \times \vec{E}_0$$

---

## 2. Calculate the potential energy of the dipole

**Energy of each charge:**

The potential energy of charge $+q$ at position $\vec{r}_+$ is:

$$U_+ = q \phi(\vec{r}_+) = -q E_0 r_+ \cos\alpha_+$$

where $\alpha_+$ is the angle between the position of $+q$ and the field direction.

Similarly for the negative charge:

$$U_- = -q \phi(\vec{r}_-) = q E_0 r_- \cos\alpha_-$$

**Total potential energy:**

For a uniform field and small dipole separation:

$$U = U_+ + U_- = -q E_0 d \cos\theta$$

$$\boxed{U(\theta) = -\vec{p} \cdot \vec{E}_0 = -p E_0 \cos\theta}$$

**Energy extrema:**

- **Aligned with field** ($\theta = 0$): $U = -p E_0$ (minimum, stable)
- **Anti-aligned with field** ($\theta = \pi$): $U = +p E_0$ (maximum, unstable)
- **Perpendicular to field** ($\theta = \pi/2$): $U = 0$ (reference)

---

## 3. Determine the equation of angular motion

**Rotational equation of motion:**

$$I \ddot{\theta} = \tau$$

where $I$ is the moment of inertia about the center:

$$I = 2 \cdot m \left(\frac{d}{2}\right)^2 = \frac{md^2}{2}$$

Substituting the torque:

$$I \ddot{\theta} = -p E_0 \sin\theta$$

$$\boxed{\ddot{\theta} + \frac{p E_0}{I} \sin\theta = 0}$$

Or more generally:

$$\boxed{\ddot{\theta} = -\frac{p E_0}{I} \sin\theta}$$

**Note:** The negative sign appears because torque opposes displacement from equilibrium.

---

## 4. Linearize the equation for small displacements

**Small angle approximation:**

For small angles $\theta \ll 1$:

$$\sin\theta \approx \theta$$

The equation becomes:

$$\ddot{\theta} + \frac{p E_0}{I} \theta = 0$$

$$\boxed{\ddot{\theta} + \omega_0^2 \theta = 0}$$

where the angular frequency is:

$$\boxed{\omega_0 = \sqrt{\frac{p E_0}{I}} = \sqrt{\frac{2 p E_0}{m d^2}}}$$

---

## 5. Interpret the system as a harmonic oscillator

**General solution:**

$$\theta(t) = A \cos(\omega_0 t) + B \sin(\omega_0 t)$$

or equivalently:

$$\theta(t) = \Theta_{\max} \cos(\omega_0 t + \phi)$$

**Initial conditions:**

- If $\theta(0) = \theta_0$ and $\dot{\theta}(0) = 0$ (released from rest):

$$\boxed{\theta(t) = \theta_0 \cos(\omega_0 t)}$$

**Period of oscillation:**

$$T = \frac{2\pi}{\omega_0} = 2\pi\sqrt{\frac{I}{p E_0}} = 2\pi\sqrt{\frac{m d^2}{2 p E_0}}$$

---

## 6. Energy analysis of the harmonic oscillator

**Total mechanical energy:**

$$E = \frac{1}{2}I\dot{\theta}^2 + U(\theta)$$

For small oscillations with linearized potential $U(\theta) \approx \frac{1}{2}p E_0 \theta^2$:

$$E = \frac{1}{2}I\dot{\theta}^2 + \frac{1}{2}p E_0 \theta^2$$

**At maximum displacement** ($\theta = \theta_{\max}$, $\dot{\theta} = 0$):

$$E_{\max} = \frac{1}{2}p E_0 \theta_{\max}^2$$

**At equilibrium** ($\theta = 0$):

$$E_{\max} = \frac{1}{2}I\dot{\theta}_{\max}^2$$

Therefore:

$$\dot{\theta}_{\max} = \omega_0 \theta_{\max}$$

---

## 7. Numerical Example

**Parameters:**

- $q = 1 \times 10^{-9}$ C (charge)
- $d = 0.01$ m (separation)
- $p = qd = 10^{-11}$ C·m (dipole moment)
- $m = 0.001$ kg (mass of each charge)
- $E_0 = 1000$ V/m (field strength)

**Angular frequency:**

$$\omega_0 = \sqrt{\frac{2 p E_0}{m d^2}} = \sqrt{\frac{2 \times 10^{-11} \times 1000}{0.001 \times (0.01)^2}}$$

$$\omega_0 = \sqrt{\frac{2 \times 10^{-8}}{10^{-7}}} = \sqrt{0.2} \approx 0.447 \text{ rad/s}$$

**Period:**

$$T = \frac{2\pi}{\omega_0} = \frac{2\pi}{0.447} \approx 14.07 \text{ s}$$

**Maximum angular velocity** (for $\theta_0 = 0.1$ rad):

$$\dot{\theta}_{\max} = \omega_0 \theta_0 = 0.447 \times 0.1 = 0.0447 \text{ rad/s}$$

---

## 8. Comparison with physical pendulum

**Physical pendulum equation:**

$$\ddot{\theta} + \frac{mg\ell}{I} \sin\theta = 0$$

**Dipole in field equation:**

$$\ddot{\theta} + \frac{p E_0}{I} \sin\theta = 0$$

**Analogy:**

| Quantity | Physical Pendulum | Dipole in Field |
|----------|------------------|-----------------|
| Restoring "torque" | Gravity: $mg\ell$ | Electric: $p E_0$ |
| Natural frequency | $\omega_0 = \sqrt{\frac{mg\ell}{I}}$ | $\omega_0 = \sqrt{\frac{p E_0}{I}}$ |
| Equilibrium | $\theta = 0$ (down) | $\theta = 0$ (aligned) |
| Period (small amp.) | $T = 2\pi\sqrt{\frac{I}{mg\ell}}$ | $T = 2\pi\sqrt{\frac{I}{p E_0}}$ |

Both systems exhibit the same **harmonic oscillator behavior** for small displacements.

---

## 9. Physical Interpretation Summary

1. **Torque aligns dipole**: The electric field exerts a torque that tends to align the dipole parallel to the field.

2. **Potential energy minimum**: Alignment with the field ($\theta = 0$) minimizes potential energy, making it a stable equilibrium.

3. **Oscillatory behavior**: When released from a non-equilibrium orientation, the dipole oscillates harmonically about the equilibrium.

4. **Angular frequency dependence**: The oscillation frequency depends on:
   - **Stronger field** ($E_0 \uparrow$) → **faster oscillation** ($\omega_0 \uparrow$)
   - **Larger dipole moment** ($p \uparrow$) → **faster oscillation**
   - **Larger moment of inertia** ($I \uparrow$) → **slower oscillation**

5. **Biological relevance**: Polar molecules (water, proteins) in external fields oscillate similarly, affecting molecular dynamics and IR spectroscopy.
