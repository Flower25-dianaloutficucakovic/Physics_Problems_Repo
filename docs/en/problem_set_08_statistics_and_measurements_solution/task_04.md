
## Problem 4 – Linear regression and determination of acceleration due to gravity (parameter estimation)

### Theoretical Introduction & Model Transformation
The physical model describing the distance $h$ traveled during free fall as a function of time $t$ (assuming zero initial velocity and position) is given by:

$$
h = \frac{1}{2} g t^2
$$

Where:
* $h$ is the drop height (dependent variable),
* $t$ is the fall time,
* $g$ is the acceleration due to gravity (the parameter to be determined).

To transform this nonlinear relationship into a linear form suitable for ordinary least squares (OLS) linear regression, we introduce a new independent variable, $x = t^2$. Let the slope parameter be $k$. The model simplifies to:

$$
h = k x
$$

Comparing this to the physical law, the relationship between the slope $k$ and the gravitational acceleration $g$ is defined by:

$$
k = \frac{1}{2}g \implies g = 2k
$$

---

### 1. Data Transformation
We are given the following experimental datasets for height $h$ and time $t$:

$$
h = [0.20,\ 0.40,\ 0.60,\ 0.80,\ 1.00]\ \text{m}
$$
$$
t = [0.202,\ 0.287,\ 0.351,\ 0.404,\ 0.452]\ \text{s}
$$

First, we calculate the transformed independent variables $x_i = t_i^2$:

| Measurement ($i$) | Height $h_i$ ($\text{m}$) | Time $t_i$ ($\text{s}$) | $x_i = t_i^2$ ($\text{s}^2$) |
| :---: | :---: | :---: | :---: |
| 1 | 0.20 | 0.202 | 0.040804 |
| 2 | 0.40 | 0.287 | 0.082369 |
| 3 | 0.60 | 0.351 | 0.123201 |
| 4 | 0.80 | 0.404 | 0.163216 |
| 5 | 1.00 | 0.452 | 0.204304 |

---

### 2. Linear Regression Calculations
We fit the linear model through the origin ($h = kx$) or use a standard linear fit ($h = kx + b$) to evaluate experimental bias. For general experimental physics data processing, we use the standard simple linear regression formulas:

$$
k = \frac{n \sum (x_i h_i) - \sum x_i \sum h_i}{n \sum x_i^2 - (\sum x_i)^2}
$$
$$
b = \frac{\sum h_i - k \sum x_i}{n}
$$

Let's compute the necessary summation components ($n = 5$):

* $\sum x_i = 0.040804 + 0.082369 + 0.123201 + 0.163216 + 0.204304 = 0.613894$
* $\sum h_i = 0.20 + 0.40 + 0.60 + 0.80 + 1.00 = 3.00$
* $\sum x_i^2 = 0.040804^2 + 0.082369^2 + 0.123201^2 + 0.163216^2 + 0.204304^2 = 0.091771$
* $\sum (x_i h_i) = (0.040804 \cdot 0.20) + (0.082369 \cdot 0.40) + (0.123201 \cdot 0.60) + (0.163216 \cdot 0.80) + (0.204304 \cdot 1.00) = 0.449599$

Now, we compute the slope $k$ and intercept $b$:

$$
k = \frac{5 \cdot (0.449599) - (0.613894 \cdot 3.00)}{5 \cdot (0.091771) - (0.613894)^2} = \frac{2.247995 - 1.841682}{0.458855 - 0.376866} = \frac{0.406313}{0.081989} \approx 4.95570\ \text{m/s}^2
$$

$$
b = \frac{3.00 - (4.95570 \cdot 0.613894)}{5} = \frac{3.00 - 3.04228}{5} \approx -0.00846\ \text{m}
$$

The fitted line equation is:
$$
h = 4.95570 \cdot t^2 - 0.00846
$$

*(Note: The intercept $b$ is extremely close to $0$, validating our physical assumption).*

---

### 3. Determination of Acceleration due to Gravity ($g$)
Using our transformation relation $g = 2k$:

$$
g = 2 \cdot 4.95570\ \text{m/s}^2 = 9.9114\ \text{m/s}^2
$$

---

### 4. Uncertainty Estimation $u(g)$
To compute the standard uncertainty of our parameters, we first determine the residual variance $s^2_{y}$:

$$
s^2_{y} = \frac{1}{n - 2} \sum_{i=1}^{n} (h_i - (k x_i + b))^2
$$

Let's compute the predicted values $\hat{h}_i = k x_i + b$ and the residuals $e_i = h_i - \hat{h}_i$:

| $i$ | True $h_i$ | Predicted $\hat{h}_i$ | Residual $e_i$ | $e_i^2$ |
| :-: | :-: | :-: | :-: | :-: |
| 1 | 0.20 | $4.95570(0.040804) - 0.00846 = 0.19376$ | $0.00624$ | $3.89 \times 10^{-5}$ |
| 2 | 0.40 | $4.95570(0.082369) - 0.00846 = 0.39967$ | $-0.00067$ | $4.49 \times 10^{-7}$ |
| 3 | 0.60 | $4.95570(0.123201) - 0.00846 = 0.60212$ | $-0.00212$ | $4.49 \times 10^{-6}$ |
| 4 | 0.80 | $4.95570(0.163216) - 0.00846 = 0.80044$ | $-0.00044$ | $1.94 \times 10^{-7}$ |
| 5 | 1.00 | $4.95570(0.204304) - 0.00846 = 1.00401$ | $-0.00401$ | $1.61 \times 10^{-5}$ |

$$
\sum e_i^2 \approx 6.01 \times 10^{-5}
$$
$$
s^2_{y} = \frac{6.01 \times 10^{-5}}{5 - 2} = 2.003 \times 10^{-5}
$$

The standard uncertainty of the slope $u(k)$ is given by:

$$
u(k) = \sqrt{\frac{n \cdot s^2_{y}}{n \sum x_i^2 - (\sum x_i)^2}} = \sqrt{\frac{5 \cdot (2.003 \times 10^{-5})}{0.081989}} = \sqrt{0.0012215} \approx 0.03495\ \text{m/s}^2
$$

By uncertainty propagation rules, since $g = 2k$:

$$
u(g) = 2 \cdot u(k) = 2 \cdot 0.03495\ \text{m/s}^2 \approx 0.070\ \text{m/s}^2
$$

#### Final Quantified Result:
Rounding to proper significant digits based on the calculated uncertainty:

$$
g = (9.91 \pm 0.07)\ \text{m/s}^2
$$

---

### 5. Evaluation of the Goodness of Fit
To formally evaluate the quality of our linear regression model, we analyze the Coefficient of Determination ($R^2$). 

$$
R^2 = 1 - \frac{SS_{\text{res}}}{SS_{\text{tot}}}
$$

Where:
* $SS_{\text{res}} = \sum (h_i - \hat{h}_i)^2 = 6.01 \times 10^{-5}$
* $\bar{h} = \frac{3.00}{5} = 0.60$
* $SS_{\text{tot}} = \sum (h_i - \bar{h})^2 = (0.2-0.6)^2 + (0.4-0.6)^2 + (0.6-0.6)^2 + (0.8-0.6)^2 + (1.0-0.6)^2 = 0.40$

Calculating $R^2$:

$$
R^2 = 1 - \frac{6.01 \times 10^{-5}}{0.40} = 1 - 0.00015 = 0.99985
$$

#### Interpretation:
An $R^2$ value of $0.99985$ indicates that **$99.99\%$ of the variance** in the drop height is perfectly explained by the squared time of fall through our linear relationship. The residual distribution exhibits minimal scattering around zero, confirming that the free-fall linear framework holds with exceptional accuracy and is free of noticeable quadratic model misfit.