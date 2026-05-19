# Linear Circuit Analysis - Problem 4 Solution

## Problem Statement
Calculate the voltage across resistor $R_3$ and the current flowing through this resistor.

---

## Theoretical Framework & Fundamentals

To solve for the local branch parameters of an arbitrary mixed resistor network, we apply **Ohm's Law** and **Kirchhoff's Circuit Laws**:

1. **Ohm's Law:** The voltage drop across an ideal resistor is directly proportional to the current flowing through it:
   $$V = I \cdot R$$

2. **Equivalent Resistance for Series Topologies:** When resistors are connected in series, the same current flows through each, and their total resistance accumulates linearly:
   $$R_{\text{eq, series}} = \sum_{i=1}^{n} R_i = R_1 + R_2 + \dots + R_n$$

3. **Equivalent Resistance for Parallel Topologies:** When components are connected in parallel, they share an identical potential difference across their shared nodes. The reciprocal of the equivalent resistance is equal to the sum of the reciprocals of the individual resistances:
   $$\frac{1}{R_{\text{eq, parallel}}} = \sum_{i=1}^{n} \frac{1}{R_i} \implies R_{\text{eq, parallel}} = \frac{R_a \cdot R_b}{R_a + R_b} \text{ (for two resistors)}$$

---

## Step-by-Step Mathematical Derivation

### Step 1: Network Reduction & Finding Parallel Equivalent Resistance
We identify the parallel sub-network containing the target resistor $R_3$. Let $R_2$ and $R_3$ be connected in a parallel branch. We reduce this sub-circuit into a single virtual equivalent resistor denoted as $R_{23}$:

$$\frac{1}{R_{23}} = \frac{1}{R_2} + \frac{1}{R_3}$$

Solving for $R_{23}$ yields the classic product-over-sum relation:
$$R_{23} = \frac{R_2 \cdot R_3}{R_2 + R_3}$$

### Step 2: Total Equivalent Network Resistance ($R_{\text{total}}$)
The reduced parallel cluster $R_{23}$ is now in a direct series configuration with the remaining mainline resistor $R_1$. The total equivalent resistance seen by the ideal primary voltage source $V_{\text{source}}$ is written as:

$$R_{\text{total}} = R_1 + R_{23}$$

$$R_{\text{total}} = R_1 + \frac{R_2 \cdot R_3}{R_2 + R_3}$$

### Step 3: Determining Total Source Current ($I_{\text{total}}$)
Applying Ohm's Law across the entire system, we compute the total primary current $I_{\text{total}}$ leaving the positive terminal of the voltage source:

$$I_{\text{total}} = \frac{V_{\text{source}}}{R_{\text{total}}}$$

$$I_{\text{total}} = \frac{V_{\text{source}}}{R_1 + \frac{R_2 \cdot R_3}{R_2 + R_3}}$$

### Step 4: Calculating Voltage Drop across the Parallel Branch ($V_{R3}$)
Because $R_1$ is in series with the parallel pair, a portion of the total source voltage drops across $R_1$. By applying **Kirchhoff's Voltage Law (KVL)** or the **Voltage Divider Rule**, the voltage drop $V_{23}$ across the parallel branch (and thus across both $R_2$ and $R_3$) is determined:

$$V_{R3} = V_{23} = I_{\text{total}} \cdot R_{23}$$

Substituting our expressions for $I_{\text{total}}$ and $R_{23}$:
$$V_{R3} = V_{\text{source}} \cdot \left( \frac{R_{23}}{R_1 + R_{23}} \right)$$

$$V_{R3} = V_{\text{source}} \cdot \left( \frac{\frac{R_2 \cdot R_3}{R_2 + R_3}}{R_1 + \frac{R_2 \cdot R_3}{R_2 + R_3}} \right)$$

### Step 5: Computing Current Flowing Through $R_3$ ($I_{R3}$)
With the exact localized potential difference $V_{R3}$ verified across the terminals of resistor $R_3$, we isolate the branch behavior and apply Ohm's Law specifically to that component to calculate its local current loop $I_{R3}$:

$$I_{R3} = \frac{V_{R3}}{R_3}$$

Alternatively, this can be represented via the **Current Divider Rule**, where the total line current splits into the target branch inversely proportional to its resistance value:
$$I_{R3} = I_{\text{total}} \cdot \left( \frac{R_2}{R_2 + R_3} \right)$$

---

## Final Analytical Solution Set

The generalized theoretical equations required to find your exact parameters are given by:

* **Voltage Across $R_3$:**
  $$V_{R3} = V_{\text{source}} \cdot \frac{R_2 R_3}{R_1 R_2 + R_1 R_3 + R_2 R_3}$$

* **Current Through $R_3$:**
  $$I_{R3} = \frac{V_{\text{source}} \cdot R_2}{R_1 R_2 + R_1 R_3 + R_2 R_3}$$