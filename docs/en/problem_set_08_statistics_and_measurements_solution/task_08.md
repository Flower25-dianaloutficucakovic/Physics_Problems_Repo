# Problem Set 8 – Task 08: Mass-Spring Oscillator

## 1. Physical Model and Equations

A mass-spring oscillator undergoing simple harmonic motion is governed by Hooke's law and Newton's second law. The relationship between the spring constant $k$, the oscillating mass $m$, and the period of oscillation $T$ is given by:

$$
T = 2\pi \sqrt{\frac{m}{k}}
$$

To determine the spring constant $k$ experimentally, we measure the mass $m$ and the average period of oscillation $\bar{T}$. Rearranging the formula yields our primary estimator for $k$:

$$
k = 4\pi^2 \frac{m}{\bar{T}^2}
$$

The cyclic frequency $f$ of the system is the reciprocal of the mean period:

$$
f = \frac{1}{\bar{T}}
$$

---

## 2. Statistical Analysis of Time Measurements

When tracking $n$ successive oscillations, we obtain a series of individual period measurements $T_i = t_{i+1} - t_i$. The statistical parameters are calculated as follows:

1. **Arithmetic Mean ($\bar{T}$):**
   $$
   \bar{T} = \frac{1}{n} \sum_{i=1}^{n} T_i
   $$

2. **Sample Standard Deviation ($s_T$):**
   This measures the dispersion or scatter of individual time measurements due to human reaction latency and random errors:
   $$
   s_T = \sqrt{\frac{1}{n-1} \sum_{i=1}^{n} (T_i - \bar{T})^2}
   $$

3. **Standard Uncertainty of the Mean ($u(T)$):**
   This quantifies how close our calculated mean $\bar{T}$ is likely to be to the true physical period:
   $$
   u(T) = \frac{s_T}{\sqrt{n}}
   $$

---

## 3. Propagation of Uncertainty Using the Total Differential Method

Both the mass $m$ and the period $T$ contain measurement uncertainties denoted by $u(m)$ and $u(T)$. Since these errors are uncorrelated and random, their combined effect on our derived values must be propagated using partial derivatives in quadrature.

### A. Frequency Uncertainty $u(f)$
Given $f = \frac{1}{\bar{T}}$, the sensitivity coefficient is:
$$
\frac{\partial f}{\partial T} = -\frac{1}{\bar{T}^2}
$$

Applying the absolute uncertainty formula:
$$
u(f) = \left| \frac{\partial f}{\partial T} \right| u(T) = \frac{u(T)}{\bar{T}^2}
$$

### B. Spring Constant Uncertainty $u(k)$
Given $k(m, T) = 4\pi^2 m T^{-2}$, we find the partial derivatives (sensitivity coefficients) with respect to each independent variable:

1. **With respect to mass $m$:**
   $$
   \frac{\partial k}{\partial m} = \frac{4\pi^2}{\bar{T}^2}
   $$

2. **With respect to period $T$:**
   $$
   \frac{\partial k}{\partial T} = -2 \cdot 4\pi^2 \frac{m}{\bar{T}^3} = -\frac{8\pi^2 m}{\bar{T}^3}
   $$

Combining these in quadrature yields the absolute uncertainty expression for the spring constant:
$$
u(k) = \sqrt{\left(\frac{\partial k}{\partial m} u(m)\right)^2 + \left(\frac{\partial k}{\partial T} u(T)\right)^2}
$$

$$
u(k) = \sqrt{\left( \frac{4\pi^2}{\bar{T}^2} u(m) \right)^2 + \left( -\frac{8\pi^2 m}{\bar{T}^3} u(T) \right)^2}
$$

### C. Relative Uncertainty and Error Contributions
To find out which variable dominates our experimental error budget, we divide the absolute uncertainty by $k$:

$$
\frac{u(k)}{k} = \sqrt{\left( \frac{u(m)}{m} \right)^2 + \left( 2 \frac{u(T)}{\bar{T}} \right)^2}
$$

* **Mass Contribution ($C_m$):**
    $$
    C_m = \frac{\left(\frac{\partial k}{\partial m} u(m)\right)^2}{u(k)^2} \times 100\% = \frac{\left(\frac{u(m)}{m}\right)^2}{\left(\frac{u(m)}{m}\right)^2 + \left(2\frac{u(T)}{\bar{T}}\right)^2} \times 100\%
    $$
* **Period Contribution ($C_T$):**
    $$
    C_T = \frac{\left(\frac{\partial k}{\partial T} u(T)\right)^2}{u(k)^2} \times 100\% = \frac{\left(2\frac{u(T)}{\bar{T}}\right)^2}{\left(\frac{u(m)}{m}\right)^2 + \left(2\frac{u(T)}{\bar{T}}\right)^2} \times 100\%
    $$

Due to the squared dependency ($T^{-2}$), any uncertainty in the time period measurement carries **twice** the relative weight of uncertainty in the mass measurement.