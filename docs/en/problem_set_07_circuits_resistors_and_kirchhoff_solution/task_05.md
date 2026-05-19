# Linear Circuit Analysis

## Problem 5

For the following circuit, calculate the equivalent resistance and the current flowing through ammeter A.

---

### Theoretical Solution

To find the equivalent resistance ($R_{eq}$) and the current flowing through the ammeter ($I_A$), we apply Ohm's Law and the rules for combinations of resistors in series and parallel.

#### 1. Analysis of the Circuit Topology
Let us analyze how the components are connected across the ideal voltage source ($V$):
* Resistors $R_1$ and $R_2$ are connected in parallel with each other. We can denote their combined equivalent resistance as $R_{12}$.
* This parallel group ($R_{12}$) is connected in series with the remaining resistor $R_3$.
* The ammeter $A$ is placed in series with the main branch of the circuit, meaning it measures the total current ($I_{total}$) supplied by the source before it splits into the parallel branches.

#### 2. Equivalent Resistance Calculations

First, we calculate the equivalent resistance of the parallel branch containing $R_1$ and $R_2$:

$$\frac{1}{R_{12}} = \frac{1}{R_1} + \frac{1}{R_2}$$

$$R_{12} = \frac{R_1 \cdot R_2}{R_1 + R_2}$$

Next, because $R_{12}$ is in series with $R_3$, the total equivalent resistance ($R_{eq}$) of the entire circuit layout is the sum of their resistances:

$$R_{eq} = R_{12} + R_3$$

$$R_{eq} = \frac{R_1 \cdot R_2}{R_1 + R_2} + R_3$$

#### 3. Calculating the Total Current (Ammeter Reading)

According to Ohm's Law, the total current ($I_{total}$) flowing from a voltage source ($V$) through an equivalent resistance ($R_{eq}$) is given by:

$$I_{total} = \frac{V}{R_{eq}}$$

Since the ammeter is positioned in the main branch to capture the undivided total current entering or exiting the combination network:

$$I_A = I_{total} = \frac{V}{\frac{R_1 \cdot R_2}{R_1 + R_2} + R_3}$$

---

### Summary of Final Equations

* **Equivalent Resistance:**
  $$R_{eq} = \frac{R_1 R_2}{R_1 + R_2} + R_3$$

* **Current Flowing Through Ammeter A:**
  $$I_A = \frac{V \cdot (R_1 + R_2)}{R_1 R_2 + R_3(R_1 + R_2)}$$