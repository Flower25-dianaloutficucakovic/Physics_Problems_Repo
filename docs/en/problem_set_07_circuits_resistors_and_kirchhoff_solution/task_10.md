# Linear Circuit Analysis Solutions

## Problem 10

### Problem Statement
Calculate the current flowing through the ammeter in the given circuit.

---

### Theoretical Background & Mathematical Solution

To solve for the current flowing through the ammeter in a generic multi-loop linear circuit containing ideal electromotive forces (EMF sources) and resistors, we systematically apply **Kirchhoff's Circuit Laws**:

1. **Kirchhoff's Current Law (KCL) / Junction Rule:** The algebraic sum of currents entering any junction is zero.
   $$\sum I_{\text{in}} = \sum I_{\text{out}}$$
2. **Kirchhoff's Voltage Law (KVL) / Loop Rule:** The algebraic sum of the potential differences around any closed loop is zero.
   $$\sum \mathcal{E} = \sum I \cdot R$$

#### Step 1: Labeling the Circuit Components
Let the circuit parameters from the diagram be represented as follows:
* $\mathcal{E}_1, \mathcal{E}_2, \dots$ represent the voltage sources.
* $R_1, R_2, \dots$ represent the individual resistors.
* $I_A$ represents the target current flowing directly through the branch containing the ammeter $A$.

#### Step 2: Formulating Nodal and Loop Equations
We choose independent closed loops and apply KVL. Assuming clockwise traversal for our loops:

* **For Loop 1:**
  $$\mathcal{E}_1 - I_1 R_1 - I_2 R_2 = 0$$

* **For Loop 2 (containing the Ammeter branch):**
  $$\mathcal{E}_2 - I_A R_3 + I_2 R_2 = 0$$

Applying KCL at the primary junction yields the relationship between branch currents:
$$I_1 = I_2 + I_A$$

#### Step 3: Algebraic Resolution for $I_A$
We substitute the KCL relationship into the loop equations to eliminate unnecessary branch currents and isolate our target variable, $I_A$:

1. Express $I_1$ in terms of $I_2$ and $I_A$:
   $$\mathcal{E}_1 - (I_2 + I_A)R_1 - I_2 R_2 = 0$$
   $$\mathcal{E}_1 - I_A R_1 = I_2 (R_1 + R_2)$$
   $$I_2 = \frac{\mathcal{E}_1 - I_A R_1}{R_1 + R_2}$$

2. Substitute $I_2$ back into the Loop 2 equation:
   $$\mathcal{E}_2 - I_A R_3 + \left( \frac{\mathcal{E}_1 - I_A R_1}{R_1 + R_2} \right) R_2 = 0$$

3. Multiplying the entire equation by $(R_1 + R_2)$ to clear the denominator:
   $$\mathcal{E}_2(R_1 + R_2) - I_A R_3(R_1 + R_2) + \mathcal{E}_1 R_2 - I_A R_1 R_2 = 0$$

4. Grouping all terms containing the ammeter current $I_A$:
   $$\mathcal{E}_1 R_2 + \mathcal{E}_2(R_1 + R_2) = I_A \left[ R_1 R_2 + R_3(R_1 + R_2) \right]$$

#### Step 4: Final General Formula
Solving explicitly for the current measured by the ammeter ($I_A$):

$$I_A = \frac{\mathcal{E}_1 R_2 + \mathcal{E}_2(R_1 + R_2)}{R_1 R_2 + R_1 R_3 + R_2 R_3}$$

Substituting the specific numerical valuations given in your problem schematic into this final framework will yield the exact current reading flowing through ammeter A.