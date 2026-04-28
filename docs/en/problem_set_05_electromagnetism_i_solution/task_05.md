# Problem 5 – Capacitor: energy and force

## Given Parameters

$$S = 0.02\ \mathrm{m^2}$$

$$d = 5\ \mathrm{mm} = 0.005\ \mathrm{m}$$

$$U = 500\ \mathrm{V}$$

---

## 1. Calculate the capacitance

For a parallel plate capacitor:

$$C = \varepsilon_0 \frac{S}{d}$$

where $\varepsilon_0 = 8.854 \times 10^{-12}\ \mathrm{F/m}$ is the permittivity of free space.

**Substituting values:**

$$C = 8.854 \times 10^{-12} \cdot \frac{0.02}{0.005}$$

$$C = 8.854 \times 10^{-12} \cdot 4$$

$$C = 35.416 \times 10^{-12}\ \mathrm{F}$$

$$\boxed{C = 35.42\ \mathrm{pF} = 3.542 \times 10^{-11}\ \mathrm{F}}$$

---

## 2. Calculate the energy stored in the capacitor

The energy stored in a capacitor is given by:

$$W = \frac{1}{2} C U^2$$

Alternatively:

$$W = \frac{1}{2} Q U = \frac{1}{2} \frac{U^2}{C}$$

**Using the first formula:**

$$W = \frac{1}{2} \times 35.416 \times 10^{-12} \times (500)^2$$

$$W = \frac{1}{2} \times 35.416 \times 10^{-12} \times 250000$$

$$W = 0.5 \times 8.854 \times 10^{-6}$$

$$W = 4.427 \times 10^{-6}\ \mathrm{J}$$

$$\boxed{W = 4.43\ \mathrm{\mu J} = 4.427 \times 10^{-6}\ \mathrm{J}}$$

---

## 3. Calculate the electric field intensity between the plates

For a uniform field between parallel plates:

$$E = \frac{U}{d}$$

**Substituting values:**

$$E = \frac{500}{0.005}$$

$$E = 100000\ \mathrm{V/m}$$

$$\boxed{E = 10^5\ \mathrm{V/m} = 100\ \mathrm{kV/m}}$$

**Alternative verification using Gauss's law:**

$$E = \frac{\sigma}{\varepsilon_0} = \frac{Q}{\varepsilon_0 S}$$

where $Q = CU = 35.416 \times 10^{-12} \times 500 = 1.771 \times 10^{-8}$ C.

$$E = \frac{1.771 \times 10^{-8}}{8.854 \times 10^{-12} \times 0.02} = \frac{1.771 \times 10^{-8}}{1.771 \times 10^{-13}} = 10^5\ \mathrm{V/m}$$ ✓

---

## 4. Calculate the field energy density

The energy density (energy per unit volume) in an electric field is:

$$u = \frac{1}{2} \varepsilon_0 E^2$$

**Substituting values:**

$$u = \frac{1}{2} \times 8.854 \times 10^{-12} \times (10^5)^2$$

$$u = \frac{1}{2} \times 8.854 \times 10^{-12} \times 10^{10}$$

$$u = 4.427 \times 10^{-2}\ \mathrm{J/m^3}$$

$$\boxed{u = 0.04427\ \mathrm{J/m^3} = 44.27\ \mathrm{mJ/m^3}}$$

**Verification by total energy:**

Total volume between plates:

$$V_{\text{total}} = S \times d = 0.02 \times 0.005 = 10^{-4}\ \mathrm{m^3}$$

Total energy:

$$W_{\text{total}} = u \times V_{\text{total}} = 4.427 \times 10^{-2} \times 10^{-4} = 4.427 \times 10^{-6}\ \mathrm{J}$$ ✓

This matches the result from section 2.

---

## 5. Calculate the force of attraction between the plates

**Method 1: Using energy derivative**

The force on one plate due to the other is:

$$F = -\frac{dW}{dd}\bigg|_Q$$

where the derivative is taken at constant charge $Q$.

At constant charge:

$$W = \frac{Q^2}{2C} = \frac{Q^2 d}{2\varepsilon_0 S}$$

$$F = -\frac{d}{dd}\left(\frac{Q^2 d}{2\varepsilon_0 S}\right) = -\frac{Q^2}{2\varepsilon_0 S}$$

The magnitude is:

$$|F| = \frac{Q^2}{2\varepsilon_0 S}$$

**Computing:**

$$Q = CU = 35.416 \times 10^{-12} \times 500 = 1.771 \times 10^{-8}\ \mathrm{C}$$

$$|F| = \frac{(1.771 \times 10^{-8})^2}{2 \times 8.854 \times 10^{-12} \times 0.02}$$

$$|F| = \frac{3.136 \times 10^{-16}}{3.542 \times 10^{-13}}$$

$$|F| = 8.854 \times 10^{-4}\ \mathrm{N}$$

$$\boxed{F = 0.8854\ \mathrm{mN} \approx 0.89\ \mathrm{mN}}$$

**Method 2: Using field energy density (verification)**

The electrostatic pressure (force per unit area) on a conductor in an electric field is:

$$p = \frac{1}{2}\varepsilon_0 E^2$$

$$F = p \times S = \frac{1}{2}\varepsilon_0 E^2 \times S$$

$$F = \frac{1}{2} \times 8.854 \times 10^{-12} \times (10^5)^2 \times 0.02$$

$$F = 4.427 \times 10^{-2} \times 0.02$$

$$F = 8.854 \times 10^{-4}\ \mathrm{N}$$ ✓

---

## Summary Table

| Quantity | Symbol | Value | Unit |
|----------|--------|-------|------|
| Capacitance | $C$ | $35.42$ | pF |
| Stored energy | $W$ | $4.43$ | μJ |
| Electric field | $E$ | $100$ | kV/m |
| Energy density | $u$ | $44.27$ | mJ/m³ |
| Attractive force | $F$ | $0.89$ | mN |

---

## Physical Interpretation

1. **Capacitance**: The capacitor stores approximately 35 picofarads of charge per volt. This is a small value, typical for air-gap capacitors.

2. **Energy storage**: Only about 4.4 microjoules are stored. For context, this is equivalent to lifting 1 gram by approximately 0.45 mm against gravity.

3. **Electric field**: The field intensity of 100 kV/m is substantial but below the breakdown strength of air (~3 MV/m).

4. **Energy density**: The energy is uniformly distributed in the volume between plates at a density of ~44 mJ/m³, which is relatively low compared to high-density capacitors with dielectrics.

5. **Attractive force**: The plates experience a net attractive force of approximately 0.89 millinewtons, equivalent to the weight of about 90 grams on Earth's surface. This force increases with voltage and plate area.

---

## Key Relationships

**At constant voltage $U$:**

$$C \propto \frac{S}{d}, \quad W \propto \frac{S}{d}, \quad F \propto \frac{S}{d^2}$$

**At constant charge $Q$:**

$$W \propto d, \quad F \propto \frac{1}{d^2}$$

This shows that keeping the charge constant increases energy as the plates separate, while the attractive force decreases rapidly with distance squared.
