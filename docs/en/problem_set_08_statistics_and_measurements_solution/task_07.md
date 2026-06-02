# Problem Set 8 – Statistics and Measurements
## Problem 7 – Simple Pendulum: Measurement of $g$

---

### 1. Theoretical Model

The period of oscillation $T$ of a simple, idealized pendulum operating under small-angle approximations is governed by the following physical law:

$$T = 2\pi \sqrt{\frac{L}{g}}$$

Where:
* $L$ is the length of the pendulum string (measured in meters, $\text{m}$).
* $g$ is the local acceleration due to gravity ($\text{m/s}^2$).
* $T$ is the period of a single full oscillation ($\text{s}$).

By isolating the gravitational acceleration $g$ from the primary model, we establish our operational measurement formula:

$$g = 4\pi^2 \frac{L}{T^2}$$

---

### 2. Analytical Derivation of Uncertainty Propagation

Both experimental parameters—the string length $L$ and the calculated mean period $T$—carry independent statistical uncertainties, denoted as $u(L)$ and $u(T)$. To determine how these individual errors propagate into the calculated value of $g$, we employ the **Total Differential Method** (under the assumption that errors are uncorrelated).

The absolute uncertainty $u(g)$ is defined by the bivariate variance relation:

$$u(g) = \sqrt{\left(\frac{\partial g}{\partial L} u(L)\right)^2 + \left(\frac{\partial g}{\partial T} u(T)\right)^2}$$

#### Step-by-Step Partial Differentiation

1. **Partial derivative with respect to length $L$:**
   Treating $T$ as a constant parameter:
   $$\frac{\partial g}{\partial L} = \frac{\partial}{\partial L} \left( 4\pi^2 \frac{L}{T^2} \right) = \frac{4\pi^2}{T^2}$$

2. **Partial derivative with respect to period $T$:**
   Treating $L$ as a constant parameter and utilizing the power rule ($\frac{d}{dT}[T^{-2}] = -2T^{-3}$):
   $$\frac{\partial g}{\partial T} = \frac{\partial}{\partial T} \left( 4\pi^2 L T^{-2} \right) = -8\pi^2 \frac{L}{T^3}$$

#### Final Absolute Uncertainty Equation
Substituting the derived partial derivatives back into the variance relation yields:

$$u(g) = \sqrt{\left(\frac{4\pi^2}{T^2} u(L)\right)^2 + \left(-8\pi^2 \frac{L}{T^3} u(T)\right)^2}$$

#### Relative Uncertainty Form (Alternative Representation)
Dividing the absolute uncertainty equation by $g = 4\pi^2 \frac{L}{T^2}$ normalizes the terms, highlighting the geometric weights of the fractional variations:

$$\frac{u(g)}{g} = \sqrt{\left(\frac{u(L)}{L}\right)^2 + \left(2 \frac{u(T)}{T}\right)^2}$$

> **Note on Sensitivity:** The coefficient $2$ multiplying the fractional period uncertainty shows that any measurement error in the time domain scales quadratically, making $g$ twice as sensitive to timing errors than to length errors.

---

### 3. Experimental Report & Verification

Below is a systematic measurement run logging 5 continuous oscillation intervals.

#### Base Operational Parameters
* **Pendulum Length ($L$):** $0.800 \pm 0.002\text{ m}$ (Uncertainty $u(L) = 0.002\text{ m}$ / $0.25\%$)

#### Time-Series Log Table
| Pass ($i$) | Timestamp $t_i$ [s] | Calculated Period $T_i = t_{i+1} - t_i$ [s] | Residual $(T_i - \bar{T})$ [s] | Square Residual $(T_i - \bar{T})^2$ [$\text{s}^2$] |
|:---:|:---:|:---:|:---:|:---:|
| 0 | 0.000 | — | — | — |
| 1 | 1.795 | 1.795 | +0.001 | $0.000001$ |
| 2 | 3.587 | 1.792 | -0.002 | $0.000004$ |
| 3 | 5.383 | 1.796 | +0.002 | $0.000004$ |
| 4 | 7.175 | 1.792 | -0.002 | $0.000004$ |
| 5 | 8.972 | 1.797 | +0.003 | $0.000009$ |

#### Statistical Computations

* **Mean Period ($\bar{T}$):**
  $$\bar{T} = \frac{1}{5} \sum_{i=1}^{5} T_i = \frac{8.972}{5} = 1.7944\text{ s}$$

* **Sample Standard Deviation ($s_T$):**
  $$s_T = \sqrt{\frac{\sum (T_i - \bar{T})^2}{n-1}} = \sqrt{\frac{0.000022}{4}} = \sqrt{0.0000055} \approx 0.00235\text{ s}$$

* **Standard Uncertainty of the Mean ($u(T)$):**
  $$u(T) = \frac{s_T}{\sqrt{n}} = \frac{0.00235}{\sqrt{5}} \approx 0.00105\text{ s}$$

---

### 4. Final Parameter Synthesis

Using the empirical values $\bar{T} = 1.7944\text{ s}$ and $L = 0.800\text{ m}$:

$$g = 4\pi^2 \frac{0.800}{(1.7944)^2} \approx 9.8082\text{ m/s}^2$$

#### Error Contribution Analysis
Using the relative variance fractions:

1. **Uncertainty Component from Length ($L$):**
   $$C_L = \left(\frac{u(L)}{L}\right)^2 = \left(\frac{0.002}{0.800}\right)^2 = 0.00000625 \quad (11.8\%)$$
2. **Uncertainty Component from Period ($T$):**
   $$C_T = \left(2\frac{u(T)}{\bar{T}}\right)^2 = \left(2 \cdot \frac{0.00105}{1.7944}\right)^2 \approx 0.00004675 \quad (88.2\%)$$

* **Total Absolute Uncertainty ($u(g)$):**
  $$u(g) = g \cdot \sqrt{C_L + C_T} = 9.8082 \cdot \sqrt{0.00005300} \approx 0.0714\text{ m/s}^2$$

### Final Formatted Expression
$$g = (9.81 \pm 0.07)\ \mathrm{m/s^2}$$