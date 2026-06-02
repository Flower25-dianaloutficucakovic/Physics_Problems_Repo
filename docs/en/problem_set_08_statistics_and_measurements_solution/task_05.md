
## Problem 5 – Systematic vs. Statistical Errors



### 1. Calculations for Each Group

#### Given Data
* **Group A:** $x_A = [10.01,\ 9.99,\ 10.02,\ 9.98,\ 10.00]\ \text{cm}$
* **Group B:** $x_B = [10.42,\ 10.40,\ 10.41,\ 10.43,\ 10.39]\ \text{cm}$
* **Group C:** $x_C = [9.6,\ 10.5,\ 10.2,\ 9.8,\ 10.4]\ \text{cm}$
* **Sample Size:** $n = 5$ for all groups.

---

#### Formulas
* **Arithmetic Mean ($\bar{x}$):**
  $$\bar{x} = \frac{1}{n} \sum_{i=1}^{n} x_i$$

* **Sample Standard Deviation ($s$):**
  $$s = \sqrt{\frac{1}{n-1} \sum_{i=1}^{n} (x_i - \bar{x})^2}$$

* **Uncertainty of the Mean ($u(\bar{x})$):**
  $$u(\bar{x}) = \frac{s}{\sqrt{n}}$$

---

#### Group A: Calculations

* **Mean ($\bar{x}_A$):**
  $$\bar{x}_A = \frac{10.01 + 9.99 + 10.02 + 9.98 + 10.00}{5} = \frac{50.00}{5} = 10.00\ \text{cm}$$

* **Standard Deviation ($s_A$):**
  $$\sum (x_i - \bar{x}_A)^2 = (0.01)^2 + (-0.01)^2 + (0.02)^2 + (-0.02)^2 + (0.00)^2 = 0.0001 + 0.0001 + 0.0004 + 0.0004 + 0.0000 = 0.0010$$
  $$s_A = \sqrt{\frac{0.0010}{5 - 1}} = \sqrt{\frac{0.0010}{4}} = \sqrt{0.00025} \approx 0.0158\ \text{cm}$$

* **Uncertainty of the Mean ($u(\bar{x}_A)$):**
  $$u(\bar{x}_A) = \frac{0.01581}{\sqrt{5}} \approx 0.0071\ \text{cm}$$

---

#### Group B: Calculations

* **Mean ($\bar{x}_B$):**
  $$\bar{x}_B = \frac{10.42 + 10.40 + 10.41 + 10.43 + 10.39}{5} = \frac{52.05}{5} = 10.41\ \text{cm}$$

* **Standard Deviation ($s_B$):**
  $$\sum (x_i - \bar{x}_B)^2 = (0.01)^2 + (-0.01)^2 + (0.00)^2 + (0.02)^2 + (-0.02)^2 = 0.0010$$
  $$s_B = \sqrt{\frac{0.0010}{4}} \approx 0.0158\ \text{cm}$$

* **Uncertainty of the Mean ($u(\bar{x}_B)$):**
  $$u(\bar{x}_B) = \frac{0.01581}{\sqrt{5}} \approx 0.0071\ \text{cm}$$

---

#### Group C: Calculations

* **Mean ($\bar{x}_C$):**
  $$\bar{x}_C = \frac{9.6 + 10.5 + 10.2 + 9.8 + 10.4}{5} = \frac{50.5}{5} = 10.10\ \text{cm}$$

* **Standard Deviation ($s_C$):**
  $$\sum (x_i - \bar{x}_C)^2 = (-0.5)^2 + (0.4)^2 + (0.1)^2 + (-0.3)^2 + (0.3)^2 = 0.25 + 0.16 + 0.01 + 0.09 + 0.09 = 0.60$$
  $$s_C = \sqrt{\frac{0.60}{4}} = \sqrt{0.15} \approx 0.3873\ \text{cm}$$

* **Uncertainty of the Mean ($u(\bar{x}_C)$):**
  $$u(\bar{x}_C) = \frac{0.3873}{\sqrt{5}} \approx 0.1732\ \text{cm}$$

---

### Summary Table of Results

| Group | Mean $\bar{x}$ [cm] | Std. Deviation $s$ [cm] | Uncertainty $u(\bar{x})$ [cm] | Final Expression ($x = \bar{x} \pm u(\bar{x})$) |
| :--- | :---: | :---: | :---: | :--- |
| **Group A** | $10.00$ | $0.016$ | $0.007$ | $10.000 \pm 0.007\ \text{cm}$ |
| **Group B** | $10.41$ | $0.016$ | $0.007$ | $10.410 \pm 0.007\ \text{cm}$ |
| **Group C** | $10.10$ | $0.387$ | $0.173$ | $10.10 \pm 0.17\ \text{cm}$ |

---

### 2. Comparison with the True Value ($x_{\mathrm{true}} = 10.00\ \text{cm}$)

* **Group A:** The calculated mean $\bar{x}_A = 10.00\ \text{cm}$ exactly matches $x_{\mathrm{true}}$. The true value falls cleanly within the statistical uncertainty window ($10.000 \pm 0.007\ \text{cm}$).
* **Group B:** The mean $\bar{x}_B = 10.41\ \text{cm}$ deviates significantly from $x_{\mathrm{true}}$. The true value lies far outside the interval of uncertainty ($10.410 \pm 0.007\ \text{cm}$). The difference ($0.41\ \text{cm}$) is roughly 58 times larger than the uncertainty of the mean.
* **Group C:** The mean $\bar{x}_C = 10.10\ \text{cm}$ is close to the true value, and because their statistical uncertainty is so wide ($u(\bar{x}_C) = 0.17\ \text{cm}$), the true value $10.00\ \text{cm}$ falls within the interval $10.10 \pm 0.17\ \text{cm}$ (spanning from $9.93$ to $10.27$).

---

### 3. Error Analysis: Dominant Errors per Group

* **Group A (High Precision, High Accuracy):** Statistical error dominates, but it is very small. There is no evidence of systematic error because the sample mean matches the true value perfectly.
* **Group B (High Precision, Low Accuracy):** **Systematic error dominates.** The data has remarkably low scatter ($s = 0.016\ \text{cm}$), meaning the measurement process is highly repeatable, but it is consistently shifted away from the true value by $+0.41\ \text{cm}$.
* **Group C (Low Precision, High Accuracy):** **Statistical (random) error dominates.** The individual measurements are highly scattered ($s = 0.387\ \text{cm}$), pointing to poor environmental controls or imprecise technique. However, because the values fluctuate randomly above and below the true value, the errors partially cancel out when averaged, yielding a mean close to the true value.

---

### 4. Possible Causes of Systematic Error

A systematic error introduces a constant, directional offset to the data. Two possible causes for Group B’s offset include:
1. **Instrumental Calibration Shift (Zero Error):** The caliper or ruler used by the group might not have been properly zeroed, or the end of the ruler was worn down by exactly $4.1\ \text{mm}$, causing every single reading to be over-measured.
2. **Incorrect Environmental/Methodological Assumptions:** The group may have measured the rod under localized thermal expansion conditions (e.g., holding the metal rod in their hands for too long before measuring), or they read the scale consistently from an incorrect parallax angle.

---

### 5. Why Increasing Sample Size ($n$) Does Not Eliminate Systematic Error

Increasing the number of measurements $n$ only improves the statistical baseline. As $n \to \infty$:
* The random fluctuations average out to zero.
* The uncertainty of the mean decreases because $u(\bar{x}) = \frac{s}{\sqrt{n}} \to 0$.

However, a systematic error is caused by a flawed experimental design or a miscalibrated tool, which acts as a constant displacement constant $C$. The measured mean converges to:
$$\bar{x} \to x_{\mathrm{true}} + C$$
No matter how many times you repeat the measurement, you are simply gathering more data points that inherit the exact same flaw. You will get a highly precise, but fundamentally incorrect value.

---

### 6. Reflection: Is $10.41 \pm 0.01$ "better" than $10.00 \pm 0.20$?

In physics, **"better" depends entirely on the analytical objective**, as these two measurements demonstrate a direct trade-off between **precision** and **accuracy**.

* **$10.41 \pm 0.01$ is more Precise:** This result indicates an excellent experimental setup with highly controlled random noise. However, it is **inaccurate** because it completely misses the true value due to a systematic offset. It is useful only if you can isolate and subtract the systematic error later.
* **$10.00 \pm 0.20$ is more Accurate:** This result is centered directly on the true value ($10.00\ \text{cm}$). However, it has very low precision, meaning individual measurements are highly volatile. 

**Conclusion:** If we must choose a result to rely on without further correction, **$10.00 \pm 0.20$ is scientifically better** because it is a *truthful* statement; it honestly encompasses the true value within its stated error bounds. The measurement $10.41 \pm 0.01$ is highly precise but confidently incorrect, which can lead to catastrophic misinterpretations in physical engineering models.