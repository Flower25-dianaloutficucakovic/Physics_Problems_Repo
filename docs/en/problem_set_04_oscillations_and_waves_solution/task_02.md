# Problem 2 – Energy of a harmonic oscillator

## Given Parameters

- Mass: $m = 1\ \mathrm{kg}$
- Spring constant: $k = 100\ \mathrm{N/m}$
- Initial displacement: $x(0) = 2\ \mathrm{m}$
- Initial velocity: $v(0) = 1\ \mathrm{m/s}$

## Solution

### 1. Determine the natural frequency

The natural angular frequency of a harmonic oscillator is:

$$\omega_0 = \sqrt{\frac{k}{m}}$$

Substituting the values:

$$\omega_0 = \sqrt{\frac{100}{1}} = \sqrt{100} = 10\ \mathrm{rad/s}$$

The frequency in Hz is:

$$f = \frac{\omega_0}{2\pi} = \frac{10}{2\pi} \approx 1.59\ \mathrm{Hz}$$

The period of oscillation is:

$$T = \frac{1}{f} = \frac{2\pi}{\omega_0} = \frac{2\pi}{10} = \frac{\pi}{5} \approx 0.628\ \mathrm{s}$$

---

### 2. Calculate the total energy of the system

The total mechanical energy of a harmonic oscillator is conserved and given by:

$$E_{\text{total}} = \frac{1}{2}mv^2 + \frac{1}{2}kx^2$$

Substituting the initial conditions:

$$E_{\text{total}} = \frac{1}{2}(1)(1)^2 + \frac{1}{2}(100)(2)^2$$

$$E_{\text{total}} = \frac{1}{2}(1) + \frac{1}{2}(100)(4)$$

$$E_{\text{total}} = 0.5 + 200 = 200.5\ \mathrm{J}$$

**Breakdown of initial energy:**

- Kinetic energy: $T(0) = \frac{1}{2}mv(0)^2 = \frac{1}{2}(1)(1)^2 = 0.5\ \mathrm{J}$
- Potential energy: $U(0) = \frac{1}{2}kx(0)^2 = \frac{1}{2}(100)(2)^2 = 200\ \mathrm{J}$

---

### 3. For what displacement does the kinetic energy account for 50% of the total energy?

At any time, the energy conservation equation is:

$$E_{\text{total}} = T(t) + U(t) = \frac{1}{2}mv^2(t) + \frac{1}{2}kx^2(t)$$

We want to find $x$ such that:

$$T = 0.5 \cdot E_{\text{total}} = 0.5 \times 200.5 = 100.25\ \mathrm{J}$$

This means the potential energy is also:

$$U = 0.5 \cdot E_{\text{total}} = 100.25\ \mathrm{J}$$

From the potential energy equation:

$$U = \frac{1}{2}kx^2 = 100.25$$

$$\frac{1}{2}(100)x^2 = 100.25$$

$$50x^2 = 100.25$$

$$x^2 = \frac{100.25}{50} = 2.005$$

$$x = \pm\sqrt{2.005} \approx \pm 1.416\ \mathrm{m}$$

**Verification:**

When $x = \pm 1.416\ \mathrm{m}$:

$$U = \frac{1}{2}(100)(1.416)^2 = 50 \times 2.005 = 100.25\ \mathrm{J}$$

$$T = E_{\text{total}} - U = 200.5 - 100.25 = 100.25\ \mathrm{J}$$

$$\frac{T}{E_{\text{total}}} = \frac{100.25}{200.5} = 0.5 = 50\%$$ ✓

---

## Physical Interpretation

### Total Energy

The total energy of $200.5\ \mathrm{J}$ is **constant throughout the motion**. This is a fundamental property of conservative systems with no damping.

### Energy Distribution

The energy oscillates between:
- **Potential energy** (maximum when the mass is at maximum displacement)
- **Kinetic energy** (maximum when the mass passes through equilibrium)

At the initial moment:
- The system is **dominated by potential energy** ($200\ \mathrm{J}$ out of $200.5\ \mathrm{J}$)
- This means the mass is **far from equilibrium** and **moving slowly**

### Critical Displacements

The displacement where $T = U = 50\%$ defines the **transition points** in the energy exchange:

$$x_{\text{critical}} = \pm\sqrt{\frac{E_{\text{total}}}{k}} \cdot \frac{1}{\sqrt{2}} = \pm\frac{A}{\sqrt{2}}$$

where $A$ is the amplitude of oscillation.

### Amplitude of Oscillation

The maximum displacement (amplitude) occurs when all energy is potential ($v = 0$):

$$E_{\text{total}} = \frac{1}{2}kA^2$$

$$A = \sqrt{\frac{2E_{\text{total}}}{k}} = \sqrt{\frac{2 \times 200.5}{100}} = \sqrt{4.01} \approx 2.002\ \mathrm{m}$$

This confirms that the initial displacement $x(0) = 2\ \mathrm{m}$ is very close to the maximum amplitude, indicating the system starts near a turning point.

### Energy Oscillation Frequency

The energy oscillates at **twice the frequency** of the position oscillation:

$$\omega_{\text{energy}} = 2\omega_0 = 20\ \mathrm{rad/s}$$

$$f_{\text{energy}} = 2f = 3.18\ \mathrm{Hz}$$

This is because the potential energy $U \propto x^2$ and kinetic energy $T \propto v^2$ both have quadratic dependence, causing them to complete a full cycle (exchange) in half the period of the position.
