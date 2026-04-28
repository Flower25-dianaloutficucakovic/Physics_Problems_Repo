# Problem 8 – Energy of a three-charge system

## 1. Total energy of the system

The total energy of a three-charge system consists of the electrostatic potential energy of all pairwise interactions.

**Definition:**

$$U_{\text{total}} = U_{12} + U_{13} + U_{23}$$

where each pairwise interaction is:

$$U_{ij} = k \frac{q_i q_j}{r_{ij}}$$

**Expanded form for three charges:**

$$U_{\text{total}} = k q_1 q_2 \left(\frac{1}{r_{12}}\right) + k q_1 q_3 \left(\frac{1}{r_{13}}\right) + k q_2 q_3 \left(\frac{1}{r_{23}}\right)$$

where $k = 8.99 \times 10^9 \, \mathrm{N \cdot m^2 / C^2}$ (Coulomb constant).

**Conditions:**
- If $U_{\text{total}} < 0$: system is attractive (bound state)
- If $U_{\text{total}} > 0$: system is repulsive (unbound state)
- If $U_{\text{total}} = 0$: system is at critical energy

---

## 2. Energy for an equilateral triangle configuration

**Setup:** Three equal charges $q$ positioned at vertices of an equilateral triangle with side length $a$.

**Geometry:**
- $r_{12} = r_{13} = r_{23} = a$ (all sides equal)

**Energy calculation:**

$$U_{\text{total}} = k q^2 \left(\frac{1}{a}\right) + k q^2 \left(\frac{1}{a}\right) + k q^2 \left(\frac{1}{a}\right)$$

$$U_{\text{total}} = 3k \frac{q^2}{a}$$

**Numerical example:**

Let $q = 1 \, \mu\mathrm{C} = 10^{-6} \, \mathrm{C}$ and $a = 0.1 \, \mathrm{m}$

$$U_{\text{total}} = 3 \times 8.99 \times 10^9 \times \frac{(10^{-6})^2}{0.1}$$

$$U_{\text{total}} = 3 \times 8.99 \times 10^9 \times 10^{-12} \times 10$$

$$U_{\text{total}} = 2.697 \times 10^{-2} \, \mathrm{J} = 26.97 \, \mathrm{mJ}$$

**For like charges:** $U_{\text{total}} > 0$ (repulsive, unstable equilibrium)

**For alternating charges:** e.g., $(+q, +q, -q)$

$$U_{\text{total}} = k q^2 \left(\frac{1}{a} + \frac{1}{a} - \frac{1}{a}\right) = k \frac{q^2}{a}$$

**For opposite pair:** e.g., $(+q, -q, -q)$

$$U_{\text{total}} = k \left(-\frac{q^2}{a} - \frac{q^2}{a} + \frac{q^2}{a}\right) = -k \frac{q^2}{a}$$

$$U_{\text{total}} = -2.265 \times 10^{-2} \, \mathrm{J}$$ (attractive, more stable)

---

## 3. Change in energy when changing the sign of one charge

**Initial configuration:** $(+q_1, +q_2, +q_3)$ at vertices of equilateral triangle

$$U_{\text{initial}} = 3k \frac{q^2}{a}$$

**Modified configuration:** $(+q_1, +q_2, -q_3)$ (flip charge 3)

$$U_{\text{modified}} = k q^2 \left(\frac{1}{a} - \frac{1}{a} - \frac{1}{a}\right) = -k \frac{q^2}{a}$$

**Energy change:**

$$\Delta U = U_{\text{modified}} - U_{\text{initial}} = -k \frac{q^2}{a} - 3k \frac{q^2}{a}$$

$$\Delta U = -4k \frac{q^2}{a}$$

**Magnitude of change:**

$$|\Delta U| = 4k \frac{q^2}{a}$$

**Physical interpretation:**
- Flipping one charge changes the system from fully repulsive to mixed (partially attractive)
- Energy decreases by factor of 4
- System becomes more stable (lower potential energy)

---

## 4. Minimum energy configuration (numerical search)

**Optimization problem:**

Find configuration $(q_1, q_2, q_3)$ and positions $(\vec{r}_1, \vec{r}_2, \vec{r}_3)$ that minimize:

$$U_{\text{total}} = k \sum_{i < j} \frac{q_i q_j}{r_{ij}}$$

**Constraints:**
- Fixed triangle side length: $a = 0.1 \, \mathrm{m}$
- Variable charge signs: each $q_i \in \{+q, -q\}$
- Positions fixed at equilateral triangle vertices

**Discrete optimization:**

There are $2^3 = 8$ possible sign configurations:

| Configuration | $q_1$ | $q_2$ | $q_3$ | $U_{\text{total}}/kq^2 a$ | Stability |
|---|---|---|---|---|---|
| $(+,+,+)$ | $+q$ | $+q$ | $+q$ | $+3.0$ | Unstable (repulsive) |
| $(+,+,-)$ | $+q$ | $+q$ | $-q$ | $-1.0$ | **Stable** |
| $(+,-,+)$ | $+q$ | $-q$ | $+q$ | $-1.0$ | **Stable** |
| $(-,+,+)$ | $-q$ | $+q$ | $+q$ | $-1.0$ | **Stable** |
| $(+,-,-)$ | $+q$ | $-q$ | $-q$ | $-1.0$ | **Stable** |
| $(-,+,-)$ | $-q$ | $+q$ | $-q$ | $-1.0$ | **Stable** |
| $(-,-,+)$ | $-q$ | $-q$ | $+q$ | $-1.0$ | **Stable** |
| $(-,-,-)$ | $-q$ | $-q$ | $-q$ | $+3.0$ | Unstable (repulsive) |

**Minimum energy:**

$$U_{\text{min}} = -k \frac{q^2}{a}$$

**Optimal configurations:** Any arrangement with 1 charge of one sign and 2 of opposite sign (6 degenerate states by symmetry).

---

## 5. Stability analysis of the system

### Energy landscape and equilibrium

**Stability criterion:**

At equilibrium point $\vec{r}_0$:

$$\nabla U = 0 \quad \text{(necessary condition)}$$

Stability requires:

$$H = \frac{\partial^2 U}{\partial r_i \partial r_j} > 0 \quad \text{(positive definite Hessian)}$$

**Second derivative test for equilateral triangle with $(+q, +q, -q)$:**

The configuration is a **saddle point** (mixed stability):
- Stable along some directions (e.g., symmetric breathing mode)
- Unstable along others (e.g., rotation mode)

### Perturbation analysis

**Small displacement:** perturb charge 3 by $\vec{\delta} = (\delta x, \delta y)$

$$U(\vec{\delta}) \approx U_0 + \vec{\nabla} U \cdot \vec{\delta} + \frac{1}{2} \vec{\delta}^T H \vec{\delta}$$

**Eigenvalues of Hessian:**

$$\lambda_1 = -\frac{8kq^2}{a^3} \quad \text{(negative → unstable)}$$

$$\lambda_2 = +\frac{4kq^2}{a^3} \quad \text{(positive → stable)}$$

**Mixed character:** One positive and one negative eigenvalue confirm saddle point behavior.

### Dynamical stability

**Equation of motion for mass $m$ with charge:**

$$m \ddot{\vec{r}}_3 = \vec{F} = -\nabla U$$

For small perturbations around saddle point:

$$\ddot{\delta}_1 = \omega_1^2 \delta_1, \quad \omega_1 = \sqrt{\frac{-\lambda_1}{m}}$$ (unstable: exponential growth)

$$\ddot{\delta}_2 = -\omega_2^2 \delta_2, \quad \omega_2 = \sqrt{\frac{\lambda_2}{m}}$$ (stable: oscillation)

---

## 6. Physical interpretation

**Configuration $(+q, +q, -q)$:**

1. **Attractive forces:** The negative charge is pulled toward both positive charges
2. **Competing forces:** The two positive charges repel each other
3. **Balance:** At the equilateral triangle configuration, forces achieve a balance (equilibrium)
4. **Stability issue:** Despite being energetically favorable, small perturbations can trigger instability in certain directions

**Real-world analogy:**
- Similar to a ball balanced on top of a saddle (mountain pass)
- Small push sideways → rolls down unstably
- Small push forward/backward → oscillates stably

**System classification:**
- **Metastable:** Lower energy than all-like charges, but not globally stable
- **Quasi-stable:** Can persist if perturbations are sufficiently small

---

## 7. Comparison table: stability types

| System | $U_{\text{total}}$ | Hessian | Stability | Example |
|---|---|---|---|---|
| All same sign | $+3kq^2/a$ | All positive | Unstable node (repulsive) | $(+,+,+)$ |
| Mixed $(1:2)$ | $-kq^2/a$ | Saddle (mixed signs) | Saddle point | $(+,+,-)$ |
| Maximum opposite | Depends on geometry | May have attracting directions | Can be bound | Dipole-monopole |

---

## Summary

- **Minimum energy:** Configuration with charges distributed as $1:2$ sign ratio
- **Energy value:** $U_{\text{min}} = -k q^2 / a$
- **Stability:** Saddle point equilibrium (conditionally stable)
- **Physical significance:** System can trap particles locally but is not globally stable
