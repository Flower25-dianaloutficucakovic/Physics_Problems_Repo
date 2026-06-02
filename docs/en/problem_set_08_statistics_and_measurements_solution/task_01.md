# Problem Set 8 – Statistics and measurements

## Problem 1 – Descriptive statistics of a measurement series

Given are the measurements of a rod's length (in cm):

$$
x = [12.10,\ 12.08,\ 12.12,\ 12.11,\ 12.09,\ 12.13,\ 12.07,\ 12.10]
$$

The number of measurements is $n = 8$.

---

### 1. Arithmetic mean $\bar{x}$

The arithmetic mean is calculated using the formula:

$$
\bar{x} = \frac{1}{n} \sum_{i=1}^{n} x_i
$$

Summing the given values:

$$
\sum_{i=1}^{8} x_i = 12.10 + 12.08 + 12.12 + 12.11 + 12.09 + 12.13 + 12.07 + 12.10 = 96.80\ \text{cm}
$$

Calculating the mean:

$$
\bar{x} = \frac{96.80}{8} = 12.10\ \text{cm}
$$

---

### 2. Sample variance and standard deviation $s$

To avoid bias when dealing with a sample, we use Bessel's correction ($n-1$) in the denominator.

#### Sample Variance ($s^2$):
The formula for the sample variance is:

$$
s^2 = \frac{1}{n-1} \sum_{i=1}^{n} (x_i - \bar{x})^2
$$

Let us calculate the squared deviations from the mean ($\bar{x} = 12.10$):

| $x_i$ | $(x_i - \bar{x})$ | $(x_i - \bar{x})^2$ |
| :---: | :---: | :---: |
| 12.10 | 0.00 | 0.0000 |
| 12.08 | -0.02 | 0.0004 |
| 12.12 | 0.02 | 0.0004 |
| 12.11 | 0.01 | 0.0001 |
| 12.09 | -0.01 | 0.0001 |
| 12.13 | 0.03 | 0.0009 |
| 12.07 | -0.03 | 0.0009 |
| 12.10 | 0.00 | 0.0000 |
| **Sum** | **0.00** | **0.0028** |

Substituting the sum into the variance formula:

$$
s^2 = \frac{0.0028}{8 - 1} = \frac{0.0028}{7} = 0.0004\ \text{cm}^2
$$

#### Standard Deviation ($s$):
The sample standard deviation is the square root of the sample variance:

$$
s = \sqrt{s^2} = \sqrt{0.0004} = 0.02\ \text{cm}
$$

---

### 3. Uncertainty of the mean $u(\bar{x})$

The uncertainty of the mean (also known as the standard error of the mean) quantifies how far the sample mean is likely to be from the true population mean. It is calculated as:

$$
u(\bar{x}) = \frac{s}{\sqrt{n}}
$$

Substituting our values:

$$
u(\bar{x}) = \frac{0.02}{\sqrt{8}} = \frac{0.02}{2.828427} \approx 0.007071\ \text{cm}
$$

Rounding to two significant figures for experimental uncertainty guidelines:

$$
u(\bar{x}) \approx 0.0071\ \text{cm}
$$

---

### 4. Final result format

The final measurement result must be expressed in the format $x = \bar{x} \pm u(\bar{x})$. We align the decimal places of the mean with the precision of its uncertainty:

$$
x = 12.1000 \pm 0.0071\ \text{cm}
$$

---

### 5. Difference between standard deviation $s$ and uncertainty of the mean $u(\bar{x})$

* **Standard Deviation ($s$):** Measures the **dispersion or scatter of the individual data points** around the sample mean. It represents the natural variability of the measurement process or the object itself. Crucially, as you increase the number of measurements ($n \to \infty$), $s$ does not decrease to zero; it instead stabilizes, converging toward the true population standard deviation ($\sigma$).
* **Uncertainty of the Mean ($u(\bar{x})$):** Measures the **precision of the calculated arithmetic mean** as an estimate of the true value. It represents how much the mean would fluctuate if you repeated the entire $n$-measurement experiment many times. Because $u(\bar{x}) = \frac{s}{\sqrt{n}}$, increasing the number of measurements ($n$) actively reduces this uncertainty, bringing it closer to zero as $n \to \infty$.

---

### 6. Normal distribution intervals and confidence levels

Assuming the data points follow a Gaussian (normal) distribution, we can construct standard confidence intervals based on the Empirical Rule (68–95–99.7 rule).

#### Interval 1: $\bar{x} \pm s$ (approx. 68% Confidence Level)
$$
12.10 \pm 0.02 \implies [12.08\ \text{cm},\ 12.12\ \text{cm}]
$$
* **Interpretation:** If we take a single additional individual measurement of the rod, there is approximately a **68.3% probability** that its value will fall within this interval.

#### Interval 2: $\bar{x} \pm 2s$ (approx. 95% Confidence Level)
$$
12.10 \pm 2(0.02) = 12.10 \pm 0.04 \implies [12.06\ \text{cm},\ 12.14\ \text{cm}]
$$
* **Interpretation:** There is approximately a **95.4% probability** that any individual length measurement will fall within this interval.

#### Interval 3: $\bar{x} \pm 3s$ (approx. 99% / 99.7% Confidence Level)
$$
12.10 \pm 3(0.02) = 12.10 \pm 0.06 \implies [12.04\ \text{cm},\ 12.16\ \text{cm}]
$$
* **Interpretation:** There is approximately a **99.73% probability** (virtually certain) that an individual length measurement will fall within this interval. Measurements outside this range are highly unlikely and are mathematically flagged as potential outliers.