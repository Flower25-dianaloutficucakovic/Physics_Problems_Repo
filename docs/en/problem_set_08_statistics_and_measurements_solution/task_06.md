# Problem 6 – Central Limit Theorem: Simulation and Analysis

## 1. Theoretical Background

The **Central Limit Theorem (CLT)** is one of the most fundamental theorems in statistics. It states that given a sufficiently large sample size $n$ from a population with a finite variance, the distribution of the sample means will be approximately normally distributed (Gaussian), regardless of the shape of the original population distribution.

Let $X_1, X_2, \dots, X_n$ be a sequence of independent and identically distributed (i.i.d.) random variables with an expected value (mean) $\mu$ and a finite variance $\sigma^2$. The sample mean is defined as:

$$\bar{X} = \frac{1}{n} \sum_{i=1}^{n} X_i$$

As $n \to \infty$, the distribution of $\bar{X}$ approaches a normal distribution:

$$\bar{X} \sim \mathcal{N}\left(\mu, \frac{\sigma^2}{n}\right)$$

### Theoretical Characteristics of Source Distributions

To evaluate the empirical results against theory, we analyze the population mean $\mu$ and population standard deviation $\sigma$ for the four distributions used in the application:

1. **Uniform Distribution** on the interval $[a, b]$:
   $$\mu = \frac{a + b}{2}, \quad \sigma = \frac{b - a}{\sqrt{12}}$$
   *For our simulation on $[0, 10]$:* $\mu = 5.0$, $\sigma = \frac{10}{\sqrt{12}} \approx 2.8868$.

2. **Exponential Distribution** with rate parameter $\lambda$:
   $$\mu = \frac{1}{\lambda}, \quad \sigma = \frac{1}{\lambda}$$
   *For our simulation with $\lambda = 0.5$:* $\mu = 2.0$, $\sigma = 2.0$.

3. **Two-Point (Bernoulli-like) Distribution** returning $x_1$ with probability $p$ and $x_2$ with probability $1-p$:
   $$\mu = p x_1 + (1-p) x_2$$
   $$\sigma = \sqrt{p(x_1 - \mu)^2 + (1-p)(x_2 - \mu)^2}$$
   *For our simulation ($x_1=0, x_2=10, p=0.5$):* $\mu = 5.0$, $\sigma = 5.0$.

4. **Normal Distribution** $\mathcal{N}(\mu, \sigma^2)$:
   The mean of the sample means is $\mu$ and the standard error is $\sigma_{\bar{x}} = \frac{\sigma}{\sqrt{n}}$.
   *For our simulation ($\mu = 5.0, \sigma = 2.0$):* $\mu = 5.0$, $\sigma = 2.0$.

---

## 2. Simulation Application Implementation

The simulation generates $N$ independent samples. Each sample contains $n$ random observations drawn from the selected distribution. For each sample, the application computes the empirical sample mean $\bar{x}_j$:

$$\bar{x}_j = \frac{1}{n} \sum_{i=1}^{n} x_{i,j} \quad \text{for } j = 1, 2, \dots, N$$

The application then constructs a histogram of these $N$ values of $\bar{x}_j$ and overlays the theoretical normal curve:

$$f(x) = \frac{1}{\sigma_{\bar{x}}\sqrt{2\pi}} \exp\left( -\frac{(x - \mu)^2}{2\sigma_{\bar{x}}^2} \right) \quad \text{where } \sigma_{\bar{x}} = \frac{\sigma}{\sqrt{n}}$$

### Empirical Verification Metrics
* **Empirical Mean of Means ($\bar{\bar{x}}$):** $\bar{\bar{x}} = \frac{1}{N} \sum_{j=1}^{N} \bar{x}_j$ (Should converge to $\mu$)
* **Empirical Standard Deviation of Means ($s_{\bar{x}}$):** $s_{\bar{x}} = \sqrt{\frac{1}{N-1} \sum_{j=1}^{N} (\bar{x}_j - \bar{\bar{x}})^2}$ (Should converge to $\frac{\sigma}{\sqrt{n}}$)

---

## 3. Analysis and Conclusions

Based on the interactive runs of the web application, we arrive at the following key conclusions regarding the effect of the sample size $n$ on the distribution shape:

1. **Symmetry and Bell Shape ($n$ effect):**
   * For **small $n$ ($n = 2, 5$)**, the distribution of $\bar{x}$ heavily inherits the geometry of the parent population. The exponential distribution means remain strongly skewed right, and the two-point distribution means form separate clusters.
   * For **moderate $n$ ($n = 15, 30$)**, the asymmetries rapidly smooth out. The distribution changes into a symmetric, unimodal, bell-shaped profile.
   * For **large $n$ ($n \geq 50$)**, the empirical histogram perfectly fits the overlaid theoretical Gaussian curve across all source selections.

2. **The $\frac{1}{\sqrt{n}}$ Convergence Law:**
   As $n$ increases, the width of the distribution diminishes noticeably. The values pack closely around the population mean $\mu$. This directly confirms that the standard error of the mean shrinks inversely with the square root of the sample size:
   $$\sigma_{\bar{x}} \propto \frac{1}{\sqrt{n}}$$

3. **Convergence Speed Disparities:**
   * The **Uniform** distribution converges to normality exceptionally fast (even at $n=5$), due to its native symmetry.
   * The **Exponential** and **Two-Point** distributions demand a significantly higher $n$ ($n \geq 30$) to clear away the skewness and discrete gaps, demonstrating that initial population asymmetry directly delays normal convergence.