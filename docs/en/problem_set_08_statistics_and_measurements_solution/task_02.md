

## Problem 2 – Propagation of uncertainty using the total differential method (resistance from Ohm's law)

### 1. Calculation of the Resistance $R$

According to Ohm's Law, the relationship between resistance ($R$), voltage ($U$), and current ($I$) is given by the formula:

$$
R = \frac{U}{I}
$$

Given the experimental values:
* Voltage: $U = 5.23\ \text{V}$
* Current: $I = 0.482\ \text{A}$

Substituting these values into the physical model gives:

$$
R = \frac{5.23\ \text{V}}{0.482\ \text{A}} \approx 10.850622\ \Omega
$$

Rounding to a reasonable number of significant figures based on our inputs, we find:

$$
R \approx 10.85\ \Omega
$$

---

### 2. Derivation of the Relative Uncertainty Formula Using the Total Differential Method

#### Theoretical Foundations
When an experimental quantity $f(x_1, x_2, \dots, x_n)$ depends on multiple independent measurements $x_i$, each containing a small uncertainty $u(x_i)$, the maximum absolute error can be estimated using the **total differential** of the function:

$$
\text{d}f = \frac{\partial f}{\partial x_1}\text{d}x_1 + \frac{\partial f}{\partial x_2}\text{d}x_2 + \dots + \frac{\partial f}{\partial x_n}\text{d}x_n
$$

To determine the absolute uncertainty $u(f)$, we apply the triangle inequality or assume the worst-case upper bound by taking the absolute values of the partial derivatives (or summing them in quadrature if assuming independent normal distributions). For the total differential method, we evaluate the absolute maximum bound of uncertainty:

$$
u(f) \approx \left| \frac{\partial f}{\partial x_1} \right| u(x_1) + \left| \frac{\partial f}{\partial x_2} \right| u(x_2)
$$

#### Step-by-Step Derivation for $R(U, I) = \frac{U}{I}$

1. **Compute the partial derivative with respect to voltage ($U$):**
   Treating $I$ as a constant:
   $$
   \frac{\partial R}{\partial U} = \frac{\partial}{\partial U}\left(\frac{U}{I}\right) = \frac{1}{I}
   $$

2. **Compute the partial derivative with respect to current ($I$):**
   Treating $U$ as a constant:
   $$
   \frac{\partial R}{\partial I} = \frac{\partial}{\partial I}\left(U \cdot I^{-1}\right) = -U \cdot I^{-2} = -\frac{U}{I^2}
   $$

3. **Construct the absolute uncertainty $u(R)$ expression:**
   $$
   u(R) = \left| \frac{\partial R}{\partial U} \right| u(U) + \left| \frac{\partial R}{\partial I} \right| u(I)
   $$
   $$
   u(R) = \left| \frac{1}{I} \right| u(U) + \left| -\frac{U}{I^2} \right| u(I) = \frac{1}{I} u(U) + \frac{U}{I^2} u(I)
   $$

4. **Derive the relative uncertainty $\frac{u(R)}{R}$:**
   Divide the absolute uncertainty equation by the original function $R = \frac{U}{I}$:
   $$
   \frac{u(R)}{R} = \frac{\frac{1}{I} u(U) + \frac{U}{I^2} u(I)}{\frac{U}{I}}
   $$
   Distributing the denominator into both terms:
   $$
   \frac{u(R)}{R} = \left( \frac{\frac{1}{I} u(U)}{\frac{U}{I}} \right) + \left( \frac{\frac{U}{I^2} u(I)}{\frac{U}{I}} \right)
   $$
   Simplifying the algebraic fractions:
   $$
   \frac{u(R)}{R} = \frac{u(U)}{U} + \frac{u(I)}{I}
   $$

> **Theoretical Conclusion:** The relative uncertainty of a quotient is equal to the sum of the relative uncertainties of its individual components when applying the total differential method.

---

### 3. Quantitative Calculation and Dominance Analysis

#### Input Uncertainties
* Absolute uncertainty of voltage: $u(U) = 0.04\ \text{V}$
* Absolute uncertainty of current: $u(I) = 0.006\ \text{A}$

#### Calculation of Component Relative Uncertainties

* **Relative uncertainty of Voltage ($U$):**
    $$
    \frac{u(U)}{U} = \frac{0.04\ \text{V}}{5.23\ \text{V}} \approx 0.007648 \quad (0.765\%)
    $$

* **Relative uncertainty of Current ($I$):**
    $$
    \frac{u(I)}{I} = \frac{0.006\ \text{A}}{0.482\ \text{A}} \approx 0.012448 \quad (1.245\%)
    $$

#### Total Relative Uncertainty of Resistance

Using our derived formula:
$$
\frac{u(R)}{R} = \frac{u(U)}{U} + \frac{u(I)}{I} \approx 0.007648 + 0.012448 = 0.020096
$$

Expressed as a percentage:
$$
\frac{u(R)}{R} \approx 2.01\%
$$

#### Uncertainty Dominance Analysis

Comparing the fractional contributions:
* Contribution from Voltage: $\approx 0.0076$
* Contribution from Current: $\approx 0.0124$

$$
0.012448 > 0.007648 \implies \frac{u(I)}{I} > \frac{u(U)}{U}
$$

**Conclusion:** The measurement of the current ($I$) **dominates** the overall uncertainty of the resistance. 

#### Final Reporting of Result (Verification Check)
To express the full physical value $R \pm u(R)$, we calculate the absolute uncertainty $u(R)$:
$$
u(R) = R \cdot 0.020096 = 10.850622 \cdot 0.020096 \approx 0.218\ \Omega \rightarrow 0.22\ \Omega
$$

Thus, the final experimental value is expressed as:
$$
R = 10.85 \pm 0.22\ \Omega
$$