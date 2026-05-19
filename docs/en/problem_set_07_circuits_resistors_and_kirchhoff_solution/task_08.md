# Linear Circuit Analysis Solutions

## Problem 8

Calculate the current flowing through the ammeter.

### Theory and Physical Laws
To find the current flowing through the ammeter, we can apply **Kirchhoff's Laws** or use **Nodal Analysis** / **Mesh Analysis**.

1. **Kirchhoff's Current Law (KCL):** The algebraic sum of currents entering any node is zero.
   $$\sum I_{in} = \sum I_{out}$$

2. **Kirchhoff's Voltage Law (KVL):** The algebraic sum of the potential differences (voltages) around any closed loop is zero.
   $$\sum V = \sum I \cdot R$$

3. **Ohm's Law:** The voltage across a resistor is proportional to the current flowing through it.
   $$V = I \cdot R$$

Assuming a standard bridge or multi-loop network connected across a voltage source with given EMFs ($\mathcal{E}$) and internal/external resistances ($R$), an ideal ammeter is treated as a short circuit with zero internal resistance ($R_A = 0\ \Omega$).

---

### Step-by-Step Mathematical Solution

#### Step 1: Label the Circuit Nodes and Branches
Let us identify the reference node (Ground) at the negative terminal of the main voltage supply, setting its potential to $V_0 = 0\text{ V}$.
* Let the nodes connected by the ammeter branch be denoted as Node $A$ and Node $B$.
* Since an ideal ammeter has zero resistance ($R_A = 0\ \Omega$), the potential at Node $A$ is exactly equal to the potential at Node $B$:
  $$V_A = V_B$$

#### Step 2: Set up Nodal Equations (KCL)
Write the current conservation equations for the combined supernode formed by the ammeter branch (Nodes $A$ and $B$).

For currents leaving Node $A$ through adjacent resistors $R_1$ and $R_2$:
$$\frac{V_A - V_{source}}{R_1} + \frac{V_A - 0}{R_2} + I_A = 0$$

For currents leaving Node $B$ through adjacent resistors $R_3$ and $R_4$:
$$\frac{V_B - V_{source}}{R_3} + \frac{V_B - 0}{R_4} - I_A = 0$$

Where $I_A$ is the branch current flowing explicitly through the ammeter from Node $A$ to Node $B$.

#### Step 3: Combine and Solve for Node Voltages
Since $V_A = V_B = V_{node}$, we can sum the two node equations to eliminate the unknown ammeter current $I_A$:
$$\left( \frac{V_{node} - V_{source}}{R_1} + \frac{V_{node}}{R_2} \right) + \left( \frac{V_{node} - V_{source}}{R_3} + \frac{V_{node}}{R_4} \right) = 0$$

Isolating the voltage variable $V_{node}$:
$$V_{node} \left( \frac{1}{R_1} + \frac{1}{R_2} + \frac{1}{R_3} + \frac{1}{R_4} \right) = V_{source} \left( \frac{1}{R_1} + \frac{1}{R_3} \right)$$

$$V_{node} = V_{source} \cdot \frac{\frac{1}{R_1} + \frac{1}{R_3}}{\frac{1}{R_1} + \frac{1}{R_2} + \frac{1}{R_3} + \frac{1}{R_4}}$$

#### Step 4: Calculate the Ammeter Current ($I_A$)
Once the exact potential $V_{node}$ is determined from the network parameters, substitute it back into the Node $A$ KCL expression to isolate $I_A$:
$$I_A = \frac{V_{source} - V_{node}}{R_1} - \frac{V_{node}}{R_2}$$

Alternatively, using the parameters from Node $B$:
$$I_A = \frac{V_{node}}{R_4} - \frac{V_{source} - V_{node}}{R_3}$$

### Final Answer Form
The current flowing through the ammeter is given by the exact balancing divergence of the bridge parameters:
$$I_A = V_{source} \cdot \frac{R_2 R_3 - R_1 R_4}{(R_1 + R_2)(R_3 + R_4) \cdot R_{eq}}$$