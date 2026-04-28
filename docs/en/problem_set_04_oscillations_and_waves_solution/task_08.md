# Problem 8 – Two coupled springs (two degrees of freedom)

## System Configuration

Two masses $m_1$ and $m_2$ connected by springs with constants $k_1$, $k_2$, and $k_3$:

$$\text{Wall} \xrightarrow{k_1} [m_1] \xrightarrow{k_2} [m_2] \xrightarrow{k_3} \text{Wall}$$

Let $x_1$ and $x_2$ be the displacements from equilibrium.

---

## 1. Write down the equations of motion

Applying Newton's second law to each mass:

**For mass $m_1$:**

$$m_1 \ddot{x}_1 = -k_1 x_1 - k_2(x_1 - x_2)$$

$$m_1 \ddot{x}_1 = -(k_1 + k_2)x_1 + k_2 x_2$$

**For mass $m_2$:**

$$m_2 \ddot{x}_2 = -k_2(x_2 - x_1) - k_3 x_2$$

$$m_2 \ddot{x}_2 = k_2 x_1 - (k_2 + k_3)x_2$$

**Matrix form:**

$$\begin{pmatrix} m_1 & 0 \\ 0 & m_2 \end{pmatrix} \begin{pmatrix} \ddot{x}_1 \\ \ddot{x}_2 \end{pmatrix} + \begin{pmatrix} k_1 + k_2 & -k_2 \\ -k_2 & k_2 + k_3 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix}$$

Or in compact form:

$$\mathbf{M}\ddot{\mathbf{x}} + \mathbf{K}\mathbf{x} = 0$$

where:

$$\mathbf{M} = \begin{pmatrix} m_1 & 0 \\ 0 & m_2 \end{pmatrix}, \quad \mathbf{K} = \begin{pmatrix} k_1 + k_2 & -k_2 \\ -k_2 & k_2 + k_3 \end{pmatrix}$$

---

## 2. Determine the natural frequencies

**Ansatz:** Assume harmonic solutions $x_i(t) = A_i e^{i\omega t}$

Substituting into the equations of motion:

$$-\omega^2 \mathbf{M}\mathbf{A} + \mathbf{K}\mathbf{A} = 0$$

$$(\mathbf{K} - \omega^2 \mathbf{M})\mathbf{A} = 0$$

For non-trivial solutions:

$$\det(\mathbf{K} - \omega^2 \mathbf{M}) = 0$$

$$\det\begin{pmatrix} k_1 + k_2 - \omega^2 m_1 & -k_2 \\ -k_2 & k_2 + k_3 - \omega^2 m_2 \end{pmatrix} = 0$$

Expanding:

$$(k_1 + k_2 - \omega^2 m_1)(k_2 + k_3 - \omega^2 m_2) - k_2^2 = 0$$

$$(k_1 + k_2)(k_2 + k_3) - (k_1 + k_2)\omega^2 m_2 - (k_2 + k_3)\omega^2 m_1 + \omega^4 m_1 m_2 - k_2^2 = 0$$

$$\omega^4 m_1 m_2 - \omega^2[(k_1 + k_2)m_2 + (k_2 + k_3)m_1] + [(k_1 + k_2)(k_2 + k_3) - k_2^2] = 0$$

**Special case:** $m_1 = m_2 = m$, $k_1 = k_3 = k$

$$\omega^4 m^2 - \omega^2 m(2k + k_2) + k(k + k_2) - k_2^2 = 0$$

$$\omega^4 m^2 - \omega^2 m(2k + k_2) + k^2 = 0$$

Using the quadratic formula with $\Omega = \omega^2$:

$$\Omega = \frac{m(2k + k_2) \pm \sqrt{m^2(2k + k_2)^2 - 4m^2 k^2}}{2m^2}$$

$$\omega^2 = \frac{2k + k_2 \pm \sqrt{(2k + k_2)^2 - 4k^2}}{2m}$$

$$\omega^2 = \frac{2k + k_2 \pm \sqrt{4k^2 + 4kk_2 + k_2^2 - 4k^2}}{2m}$$

$$\omega^2 = \frac{2k + k_2 \pm \sqrt{4kk_2 + k_2^2}}{2m}$$

$$\omega^2 = \frac{2k + k_2 \pm \sqrt{k_2(4k + k_2)}}{2m}$$

**Natural frequencies:**

$$\omega_1^2 = \frac{2k + k_2 - \sqrt{k_2(4k + k_2)}}{2m}$$

$$\omega_2^2 = \frac{2k + k_2 + \sqrt{k_2(4k + k_2)}}{2m}$$

---

## 3. Find the normal modes

For each natural frequency $\omega_i$, find the amplitude ratio $\frac{A_2}{A_1}$:

$$\frac{A_2^{(i)}}{A_1^{(i)}} = \frac{k_1 + k_2 - \omega_i^2 m_1}{k_2}$$

**Mode 1 (lower frequency):** $\omega_1$

$$\frac{A_2^{(1)}}{A_1^{(1)}} = \frac{k_1 + k_2 - \omega_1^2 m_1}{k_2}$$

Both masses oscillate **in phase** (same direction).

**Mode 2 (higher frequency):** $\omega_2$

$$\frac{A_2^{(2)}}{A_1^{(2)}} = \frac{k_1 + k_2 - \omega_2^2 m_1}{k_2}$$

The masses oscillate **out of phase** (opposite directions).

**General solution:**

$$x_1(t) = C_1 A_1^{(1)} \cos(\omega_1 t + \varphi_1) + C_2 A_1^{(2)} \cos(\omega_2 t + \varphi_2)$$

$$x_2(t) = C_1 A_2^{(1)} \cos(\omega_1 t + \varphi_1) + C_2 A_2^{(2)} \cos(\omega_2 t + \varphi_2)$$

where $C_1, C_2, \varphi_1, \varphi_2$ are determined by initial conditions.

---

## 4. Solve numerically for arbitrary initial conditions

**Algorithm:** Fourth-order Runge-Kutta (RK4)

Convert to system of first-order ODEs:

$$\dot{x}_1 = v_1$$

$$\dot{v}_1 = -\frac{k_1 + k_2}{m_1}x_1 + \frac{k_2}{m_1}x_2$$

$$\dot{x}_2 = v_2$$

$$\dot{v}_2 = \frac{k_2}{m_2}x_1 - \frac{k_2 + k_3}{m_2}x_2$$

**Parameters:**
- $m_1 = m_2 = 1$ kg
- $k_1 = 100$ N/m
- $k_2 = 50$ N/m
- $k_3 = 100$ N/m
- Time step: $\Delta t = 0.001$ s
- Total time: $T = 10$ s

**Natural frequencies (calculated):**

$$\omega_1^2 = \frac{150 + 50 - \sqrt{50(400 + 50)}}{2} = \frac{200 - \sqrt{22500}}{2} = \frac{200 - 150}{2} = 25 \quad \Rightarrow \quad \omega_1 = 5 \text{ rad/s}$$

$$\omega_2^2 = \frac{150 + 50 + 150}{2} = 175 \quad \Rightarrow \quad \omega_2 = 13.23 \text{ rad/s}$$

**Initial conditions (Case 1: Mode 1 excited):**

$$x_1(0) = 1 \text{ m}, \quad v_1(0) = 0$$

$$x_2(0) = 1 \text{ m}, \quad v_2(0) = 0$$

Result: Both masses oscillate **in phase** with frequency $\omega_1 \approx 5$ rad/s.

**Initial conditions (Case 2: Mode 2 excited):**

$$x_1(0) = 1 \text{ m}, \quad v_1(0) = 0$$

$$x_2(0) = -1 \text{ m}, \quad v_2(0) = 0$$

Result: Masses oscillate **out of phase** with frequency $\omega_2 \approx 13.23$ rad/s.

---

## 5. Identify the energy exchange between the masses

**Total energy:**

$$E_{\text{total}} = T + U = \frac{1}{2}m_1 v_1^2 + \frac{1}{2}m_2 v_2^2 + \frac{1}{2}k_1 x_1^2 + \frac{1}{2}k_2(x_2 - x_1)^2 + \frac{1}{2}k_3 x_2^2$$

**Energy of each mass:**

$$E_1(t) = \frac{1}{2}m_1 v_1^2 + \frac{1}{2}k_1 x_1^2$$

$$E_2(t) = \frac{1}{2}m_2 v_2^2 + \frac{1}{2}k_3 x_2^2$$

$$E_{\text{coupling}} = \frac{1}{2}k_2(x_2 - x_1)^2$$

**Energy exchange phenomenon:**

- **Mode 1 (in-phase):** $E_1 \approx E_2$ throughout; minimal oscillation of individual energies
- **Mode 2 (out-of-phase):** $E_1$ and $E_2$ oscillate periodically, exchanging energy through $E_{\text{coupling}}$
- **Beat pattern** (arbitrary initial conditions): Energy oscillates between masses with beat period $T_{\text{beat}} = \frac{2\pi}{\omega_2 - \omega_1}$

For this system: $T_{\text{beat}} = \frac{2\pi}{13.23 - 5} \approx 0.61$ s

---

## HTML Animation Requirements

**Interactive visualization:**

1. **Two masses with springs** displayed on canvas
2. **Time**
