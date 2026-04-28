# Problem 1 – Potential and energy

## Given Data

$$q = 4\ \mu\mathrm{C} = 4 \times 10^{-6}\ \mathrm{C}$$

$$k = 8.99 \times 10^9\ \mathrm{N \cdot m^2 / C^2}$$

---

## 1. Calculate the potential at $r = 0.3\ \mathrm{m}$

The electric potential due to a point charge is:

$$V(r) = k \frac{q}{r}$$

Substituting values at $r_1 = 0.3\ \mathrm{m}$:

$$V(0.3) = 8.99 \times 10^9 \times \frac{4 \times 10^{-6}}{0.3}$$

$$V(0.3) = 8.99 \times 10^9 \times 1.333 \times 10^{-5}$$

$$V(0.3) = 1.199 \times 10^5\ \mathrm{V} = 119.9\ \mathrm{kV}$$

---

## 2. Calculate the potential difference between $0.3\ \mathrm{m}$ and $0.6\ \mathrm{m}$

The potential at $r_2 = 0.6\ \mathrm{m}$:

$$V(0.6) = k \frac{q}{r} = 8.99 \times 10^9 \times \frac{4 \times 10^{-6}}{0.6}$$

$$V(0.6) = 8.99 \times 10^9 \times 6.667 \times 10^{-6}$$

$$V(0.6) = 5.993 \times 10^4\ \mathrm{V} = 59.93\ \mathrm{kV}$$

**Potential difference:**

$$\Delta V = V(0.3) - V(0.6)$$

$$\Delta V = 119.9 - 59.93 = 59.97\ \mathrm{kV} \approx 60.0\ \mathrm{kV}$$

---

## 3. Calculate the work done to move a test charge $q_0 = 2\ \mu\mathrm{C}$

The work done by an external agent to move a charge from $r_1$ to $r_2$ against the electric field is:

$$W_{\text{ext}} = q_0 \Delta V = q_0 [V(r_2) - V(r_1)]$$

$$W_{\text{ext}} = q_0 [V(0.6) - V(0.3)]$$

$$W_{\text{ext}} = 2 \times 10^{-6} \times (59.93 \times 10^3 - 119.9 \times 10^3)$$

$$W_{\text{ext}} = 2 \times 10^{-6} \times (-59.97 \times 10^3)$$

$$W_{\text{ext}} = -0.1199\ \mathrm{J} \approx -0.12\ \mathrm{J}$$

**Interpretation:** The negative work means that the electric field does positive work on the charge (the like charges repel, so moving away requires negative external work or equivalently, the field does positive work).

Alternatively, work done **by the field**:

$$W_{\text{field}} = -W_{\text{ext}} = 0.12\ \mathrm{J}$$

---

## 4. Calculate the electric field intensity from the derivative of the potential

The electric field is related to potential by:

$$\vec{E} = -\nabla V = -\frac{dV}{dr}\hat{r}$$

For a point charge:

$$V(r) = k \frac{q}{r}$$

Taking the derivative:

$$E(r) = -\frac{dV}{dr} = -\frac{d}{dr}\left(k \frac{q}{r}\right)$$

$$E(r) = -k q \frac{d}{dr}(r^{-1})$$

$$E(r) = -k q \times (-r^{-2})$$

$$E(r) = k \frac{q}{r^2}$$

In vector form (radial direction):

$$\vec{E}(r) = k \frac{q}{r^2}\hat{r}$$

**At $r = 0.3\ \mathrm{m}$:**

$$E(0.3) = 8.99 \times 10^9 \times \frac{4 \times 10^{-6}}{(0.3)^2}$$

$$E(0.3) = 8.99 \times 10^9 \times \frac{4 \times 10^{-6}}{0.09}$$

$$E(0.3) = 8.99 \times 10^9 \times 4.444 \times 10^{-5}$$

$$E(0.3) = 3.996 \times 10^5\ \mathrm{N/C} \approx 4.00 \times 10^5\ \mathrm{N/C}$$

**At $r = 0.6\ \mathrm{m}$:**

$$E(0.6) = 8.99 \times 10^9 \times \frac{4 \times 10^{-6}}{(0.6)^2}$$

$$E(0.6) = 8.99 \times 10^9 \times \frac{4 \times 10^{-6}}{0.36}$$

$$E(0.6) = 8.99 \times 10^9 \times 1.111 \times 10^{-5}$$

$$E(0.6) = 9.989 \times 10^4\ \mathrm{N/C} \approx 1.00 \times 10^5\ \mathrm{N/C}$$

---

## 5. Compare with Coulomb's law

**Coulomb's law** states that the force between two point charges is:

$$F = k \frac{q_1 q_2}{r^2}$$

The electric field due to charge $q$ is the force per unit test charge:

$$E = \frac{F}{q_0} = k \frac{q}{r^2}$$

This is **exactly what we obtained** from the potential derivative.

**Relationship verification:**

The force on the test charge $q_0$ in the field $E$ is:

$$F = q_0 E = q_0 \times k \frac{q}{r^2} = k \frac{q_0 q}{r^2}$$

This is Coulomb's law. ✓

**Consistency check:**

- Potential: $V(r) = k \frac{q}{r}$ (decreases as $1/r$)
- Electric field: $E(r) = -\frac{dV}{dr} = k \frac{q}{r^2}$ (decreases as $1/r^2$)
- Force on charge $q_0$: $F = q_0 E = k \frac{q_0 q}{r^2}$ (Coulomb's law)

All three representations are mutually consistent.

---

## Summary Table

| Quantity | $r = 0.3\ \mathrm{m}$ | $r = 0.6\ \mathrm{m}$ |
|----------|------------------|------------------|
| Potential $V$ | $119.9\ \mathrm{kV}$ | $59.93\ \mathrm{kV}$ |
| Electric field $E$ | $4.00 \times 10^5\ \mathrm{N/C}$ | $1.00 \times 10^5\ \mathrm{N/C}$ |
| Force on $q_0 = 2\ \mu\mathrm{C}$ | $F = 0.8\ \mathrm{N}$ | $F = 0.2\ \mathrm{N}$ |

---

## Physical Interpretation

The **positive charge** $q = 4\ \mu\mathrm{C}$ creates an electric field that:

1. **Decreases as $1/r^2$** with distance (Coulomb's law)
2. **Points radially outward** from the charge
3. **Does positive work on positive test charges** moving away from it (repulsion)
4. **Potential decreases** as we move away, but field strength decreases faster
5. **At twice the distance** ($0.6\ \mathrm{m}$ vs $0.3\ \mathrm{m}$), the potential is halved but the field is one-quarter