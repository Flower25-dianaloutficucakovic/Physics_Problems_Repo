

## Problem 3 – Propagation of uncertainty (density)

### Theoretical Introduction
The density $\rho$ of a uniform rectangular cuboid is a derived physical quantity calculated from its mass $m$ and its geometric dimensions (length $a$, width $b$, and height $c$). The model equation is given by:

$$\rho = \frac{m}{a \cdot b \cdot c}$$

When independent physical quantities are measured with their respective absolute standard uncertainties—$u(m)$, $u(a)$, $u(b)$, and $u(c)$—the uncertainty propagates to the derived quantity. Using the **total differential method**, the absolute uncertainty $u(\rho)$ can be approximated via the first-order Taylor series expansion (assuming no correlation between variables):

$$u(\rho) = \sqrt{\left(\frac{\partial \rho}{\partial m} u(m)\right)^2 + \left(\frac{\partial \rho}{\partial a} u(a)\right)^2 + \left(\frac{\partial \rho}{\partial b} u(b)\right)^2 + \left(\frac{\partial \rho}{\partial c} u(c)\right)^2}$$

---

### Given Data

* **Mass:** $m = 128.4 \pm 0.2\text{ g}$  $\rightarrow u(m) = 0.2\text{ g}$
* **Dimension a:** $a = 5.20 \pm 0.02\text{ cm}$ $\rightarrow u(a) = 0.02\text{ cm}$
* **Dimension b:** $b = 2.10 \pm 0.02\text{ cm}$ $\rightarrow u(b) = 0.02\text{ cm}$
* **Dimension c:** $c = 1.50 \pm 0.01\text{ cm}$ $\rightarrow u(c) = 0.01\text{ cm}$

---

### 1. Calculate the value of $\rho$

First, compute the volume $V$ of the cuboid:
$$V = a \cdot b \cdot c = 5.20\text{ cm} \cdot 2.10\text{ cm} \cdot 1.50\text{ cm} = 16.38\text{ cm}^3$$

Now, calculate the nominal value of the density $\rho$:
$$\rho = \frac{m}{V} = \frac{128.4\text{ g}}{16.38\text{ cm}^3} \approx 7.8388278\text{ g/cm}^3$$

---

### 2. Derive the formula for relative uncertainty using the total differential method

To determine the relative uncertainty $\frac{u(\rho)}{\rho}$, we first calculate the partial derivatives of the model function $\rho(m, a, b, c) = m \cdot a^{-1} \cdot b^{-1} \cdot c^{-1}$:

$$\frac{\partial \rho}{\partial m} = \frac{1}{a b c} = \frac{\rho}{m}$$

$$\frac{\partial \rho}{\partial a} = -\frac{m}{a^2 b c} = -\frac{\rho}{a}$$

$$\frac{\partial \rho}{\partial b} = -\frac{m}{a b^2 c} = -\frac{\rho}{b}$$

$$\frac{\partial \rho}{\partial c} = -\frac{m}{a b c^2} = -\frac{\rho}{c}$$

Substituting these partial derivatives into the orthogonal uncertainty propagation law equation:

$$u(\rho) = \sqrt{\left(\frac{\rho}{m} u(m)\right)^2 + \left(-\frac{\rho}{a} u(a)\right)^2 + \left(-\frac{\rho}{b} u(b)\right)^2 + \left(-\frac{\rho}{c} u(c)\right)^2}$$

Dividing both sides of the equation by $\rho$ yields the elegant expression for **relative uncertainty**:

$$\frac{u(\rho)}{\rho} = \sqrt{\left(\frac{u(m)}{m}\right)^2 + \left(\frac{u(a)}{a}\right)^2 + \left(\frac{u(b)}{b}\right)^2 + \left(\frac{u(c)}{c}\right)^2}$$

---

### 3. Calculate relative uncertainty and determine the dominant component

Let us evaluate the individual relative uncertainty components (squared contributions) to find out which one distorts the measurements the most:

* **Mass contribution:** $$\left(\frac{u(m)}{m}\right)^2 = \left(\frac{0.2}{128.4}\right)^2 \approx (0.001558)^2 \approx 2.43 \times 10^{-6}$$
* **Dimension a contribution:** $$\left(\frac{u(a)}{a}\right)^2 = \left(\frac{0.02}{5.20}\right)^2 \approx (0.003846)^2 \approx 14.79 \times 10^{-6}$$
* **Dimension b contribution:** $$\left(\frac{u(b)}{b}\right)^2 = \left(\frac{0.02}{2.10}\right)^2 \approx (0.009524)^2 \approx 90.71 \times 10^{-6}$$
* **Dimension c contribution:** $$\left(\frac{u(c)}{c}\right)^2 = \left(\frac{0.01}{1.50}\right)^2 \approx (0.006667)^2 \approx 44.44 \times 10^{-6}$$

Summing these components up to calculate the total relative uncertainty:

$$\frac{u(\rho)}{\rho} = \sqrt{2.43 \times 10^{-6} + 14.79 \times 10^{-6} + 90.71 \times 10^{-6} + 44.44 \times 10^{-6}}$$

$$\frac{u(\rho)}{\rho} = \sqrt{152.37 \times 10^{-6}} \approx 0.012344 \quad (\approx 1.23\%)$$

#### Absolute Uncertainty calculation:
$$u(\rho) = \rho \cdot 0.012344 = 7.8388278 \cdot 0.012344 \approx 0.09676\text{ g/cm}^3 \approx 0.10\text{ g/cm}^3$$

#### Final Quantified Output:
$$\rho = 7.84 \pm 0.10\text{ g/cm}^3$$

### Analysis of Dominant Component
Comparing the fractional values directly:
* $\frac{u(m)}{m} \approx 0.16\%$
* $\frac{u(a)}{a} \approx 0.38\%$
* $\frac{u(b)}{b} \approx 0.95\%$
* $\frac{u(c)}{c} \approx 0.67\%$

**Conclusion:** The measurement of **dimension $b$** yields the largest contribution to the uncertainty ($90.71 \times 10^{-6}$, representing roughly $60\%$ of the entire variance budget). This happens because dimension $b$ is relatively short, yet its absolute measurement uncertainty ($0.02\text{ cm}$) matches that of the much longer dimension $a$. To efficiently optimize this experimental design, one should prioritize using a more precise tool (e.g., a micrometer screw gauge) for measuring dimensions $b$ and $c$.