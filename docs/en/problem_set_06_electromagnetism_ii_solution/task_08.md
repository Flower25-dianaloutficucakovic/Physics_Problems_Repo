

## Problem 8 – Self-induction

### 1. Steady State Current ($I_0$)

Before the power supply is disconnected, the circuit consists of a DC source $U$, a resistor $R$, and an inductor $L$. In a steady state ($t < 0$), the inductor acts as a short circuit (since $dI/dt = 0$).

The steady current $I_0$ is governed by Ohm's Law:


$$I_0 = \frac{U}{R}$$

**Calculation:**
Given $U = 12\ \text{V}$ and $R = 5.0\ \Omega$:


$$I_0 = \frac{12}{5.0} = 2.4\ \text{A}$$

---

### 2. Disconnection Dynamics: $I(t)$, $\tau$, and $U_L(t)$

When the source is removed at $t=0$, the inductor opposes the change in current. According to Kirchhoff’s Loop Rule:


$$L \frac{dI}{dt} + IR = 0$$

**Derivation of $I(t)$:**
Rearranging for integration:


$$\frac{dI}{I} = -\frac{R}{L} dt \implies \int_{I_0}^{I(t)} \frac{1}{I} dI = -\frac{R}{L} \int_{0}^{t} dt$$

$$\ln\left(\frac{I(t)}{I_0}\right) = -\frac{R}{L}t \implies I(t) = I_0 e^{-\frac{R}{L}t}$$

**Time Constant ($\tau$):**
The time constant is defined as:


$$\tau = \frac{L}{R} = \frac{0.20\ \text{H}}{5.0\ \Omega} = 0.04\ \text{s} = 40\ \text{ms}$$

**Voltage across the coil ($U_L$):**


$$U_L(t) = -L \frac{dI}{dt} = -L \left( I_0 \cdot \left(-\frac{R}{L}\right) e^{-\frac{R}{L}t} \right) = I_0 R e^{-t/\tau}$$


Since $I_0 R = U$:


$$U_L(t) = 12 e^{-t/0.04}\ \text{V}$$

---

### 3. Energy Stored in the Magnetic Field

The energy $W$ stored in the inductor at $t=0$ is:


$$W = \frac{1}{2} L I_0^2$$

**Calculation:**


$$W = \frac{1}{2} (0.20\ \text{H}) (2.4\ \text{A})^2 = 0.1 \cdot 5.76 = 0.576\ \text{J}$$

---

### 4. Energy Conversion (Joule Heat)

We show that the total heat $Q$ dissipated in the resistor equals the initial energy $W$:


$$Q = \int_{0}^{\infty} P(t) dt = \int_{0}^{\infty} I(t)^2 R dt$$

$$Q = \int_{0}^{\infty} (I_0 e^{-Rt/L})^2 R dt = I_0^2 R \int_{0}^{\infty} e^{-2Rt/L} dt$$


Using the integral $\int e^{ax} dx = \frac{1}{a} e^{ax}$:


$$Q = I_0^2 R \left[ -\frac{L}{2R} e^{-2Rt/L} \right]_{0}^{\infty} = I_0^2 R \left( 0 - \left( -\frac{L}{2R} \right) \right)$$

$$Q = \frac{1}{2} L I_0^2$$


**Conclusion:** $Q = W = 0.576\ \text{J}$. All magnetic energy is converted to heat.

---

### 5. Why does Overvoltage occur?

When a switch is opened, the resistance $R$ of the circuit increases almost instantly toward infinity (as an air gap is formed). Since the inductor "tries" to maintain the current $I_0$ ($V_L = L \cdot dI/dt$), the extremely high rate of current decay ($dI/dt \to \infty$) creates a massive induced EMF. This often results in a spark across the switch contacts.

---



### Summary Table: LR Circuit Parameters

| Parameter | Symbol | Value | Unit |
| --- | --- | --- | --- |
| **Inductance** | $L$ | 0.20 | H |
| **Resistance** | $R$ | 5.0 | $\Omega$ |
| **Initial Voltage** | $U$ | 12 | V |
| **Steady Current** | $I_0$ | 2.4 | A |
| **Time Constant** | $\tau$ | 0.04 | s |
| **Magnetic Energy** | $W$ | 0.576 | J |