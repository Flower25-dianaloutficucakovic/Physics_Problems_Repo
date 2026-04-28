# Problem 2 – Coulomb's force

## Given Data

Two point charges:

$$q_1 = 3\ \mu\mathrm{C} = 3 \times 10^{-6}\ \mathrm{C}$$

$$q_2 = -5\ \mu\mathrm{C} = -5 \times 10^{-6}\ \mathrm{C}$$

Located at:

$$\vec{r}_1 = (0, 0)\ \mathrm{m}$$

$$\vec{r}_2 = (0.4, 0.3)\ \mathrm{m}$$

**Coulomb constant:**

$$k = \frac{1}{4\pi\epsilon_0} = 8.99 \times 10^9\ \mathrm{N \cdot m^2 / C^2}$$

---

## 1. Force vector acting on $q_2$

### Step 1: Distance vector from $q_1$ to $q_2$

$$\vec{r}_{12} = \vec{r}_2 - \vec{r}_1 = (0.4, 0.3) - (0, 0) = (0.4, 0.3)\ \mathrm{m}$$

### Step 2: Magnitude of separation

$$r = |\vec{r}_{12}| = \sqrt{0.4^2 + 0.3^2} = \sqrt{0.16 + 0.09} = \sqrt{0.25} = 0.5\ \mathrm{m}$$

### Step 3: Unit vector in direction of separation

$$\hat{r}_{12} = \frac{\vec{r}_{12}}{r} = \frac{(0.4, 0.3)}{0.5} = (0.8, 0.6)$$

### Step 4: Coulomb force formula

$$\vec{F}_{12} = k \frac{q_1 q_2}{r^2} \hat{r}_{12}$$

Substituting values:

$$\vec{F}_{12} = 8.99 \times 10^9 \times \frac{(3 \times 10^{-6}) \times (-5 \times 10^{-6})}{(0.5)^2} \times (0.8, 0.6)$$

$$\vec{F}_{12} = 8.99 \times 10^9 \times \frac{-15 \times 10^{-12}}{0.25} \times (0.8, 0.6)$$

$$\vec{F}_{12} = 8.99 \times 10^9 \times (-60 \times 10^{-12}) \times (0.8, 0.6)$$

$$\vec{F}_{12} = -5.394 \times 10^{-1} \times (0.8, 0.6)$$

$$\vec{F}_{12} = (-0.4315, -0.3236)\ \mathrm{N}$$

### Result:

$$\boxed{\vec{F}_{12} = (-0.432, -0.324)\ \mathrm{N}}$$

**Interpretation:** The force is attractive (negative product $q_1 q_2 < 0$), pointing from $q_2$ toward $q_1$.

---

## 2. Magnitude of the force

$$F = |\vec{F}_{12}| = \sqrt{(-0.4315)^2 + (-0.3236)^2}$$

$$F = \sqrt{0.1862 + 0.1047} = \sqrt{0.2909} = 0.539\ \mathrm{N}$$

Alternatively, using the direct formula:

$$F = k \frac{|q_1 q_2|}{r^2} = 8.99 \times 10^9 \times \frac{15 \times 10^{-12}}{0.25}$$

$$F = 8.99 \times 10^9 \times 60 \times 10^{-12} = 0.539\ \mathrm{N}$$

$$\boxed{F = 0.539\ \mathrm{N}}$$

---

## 3. Potential energy of the system

The electric potential energy of a two-charge system is:

$$U = k \frac{q_1 q_2}{r}$$

Substituting values:

$$U = 8.99 \times 10^9 \times \frac{(3 \times 10^{-6}) \times (-5 \times 10^{-6})}{0.5}$$

$$U = 8.99 \times 10^9 \times \frac{-15 \times 10^{-12}}{0.5}$$

$$U = 8.99 \times 10^9 \times (-30 \times 10^{-12})$$

$$U = -2.697 \times 10^{-1}\ \mathrm{J}$$

$$\boxed{U = -0.270\ \mathrm{J}}$$

**Interpretation:** The negative potential energy indicates an attractive interaction. Energy would be released if the charges were to move closer together.

---

## 4. Work required to separate charges to distance of 2 m

The work done by an external agent to move the charges from distance $r_i = 0.5$ m to distance $r_f = 2$ m is:

$$W_{\text{ext}} = \Delta U = U_f - U_i$$

**Initial potential energy** (at $r = 0.5$ m):

$$U_i = k \frac{q_1 q_2}{r_i} = 8.99 \times 10^9 \times \frac{-15 \times 10^{-12}}{0.5} = -0.2697\ \mathrm{J}$$

**Final potential energy** (at $r = 2$ m):

$$U_f = k \frac{q_1 q_2}{r_f} = 8.99 \times 10^9 \times \frac{-15 \times 10^{-12}}{2}$$

$$U_f = 8.99 \times 10^9 \times (-7.5 \times 10^{-12}) = -0.0674\ \mathrm{J}$$

**Work required:**

$$W_{\text{ext}} = U_f - U_i = (-0.0674) - (-0.2697)$$

$$W_{\text{ext}} = 0.2023\ \mathrm{J}$$

$$\boxed{W_{\text{ext}} = 0.202\ \mathrm{J}}$$

**Interpretation:** Positive work must be supplied to separate the attracting charges. This makes physical sense: we must do work against the attractive Coulomb force.

---

## Summary Table

| Quantity | Value | Unit |
|----------|-------|------|
| Separation distance $r$ | 0.5 | m |
| Force magnitude $F$ | 0.539 | N |
| Force components $F_x$ | −0.432 | N |
| Force components $F_y$ | −0.324 | N |
| Initial potential energy $U_i$ | −0.270 | J |
| Final potential energy $U_f$ | −0.0674 | J |
| Work to separate | 0.202 | J |

---

## Physical Insights

1. **Attractive force:** Since $q_1$ and $q_2$ have opposite signs, the Coulomb force is attractive.

2. **Force direction:** The force on $q_2$ points toward $q_1$ (negative direction along $\vec{r}_{12}$).

3. **Energy relationship:** 
   - Negative $U$ indicates attraction
   - Energy increases (becomes less negative) as charges separate
   - Must supply energy to overcome attractive force

4. **Work-energy theorem:** The work done by the external agent equals the change in potential energy of the system.
