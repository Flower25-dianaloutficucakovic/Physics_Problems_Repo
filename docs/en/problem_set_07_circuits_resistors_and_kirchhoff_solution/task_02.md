
## Problem 2

### Problem Statement
Calculate the equivalent resistance for the circuit shown in the figure. All resistors have a resistance of $R = 3\ \Omega$.

---

### Mathematical & Theoretical Solution

To find the equivalent resistance $R_{eq}$ of a symmetric bridge or lattice network where all individual resistors are identical ($R_1 = R_2 = R_3 = R_4 = R_5 = R = 3\ \Omega$), we apply circuit reduction techniques based on network topology.

#### 1. Topology Analysis (The Wheatstone Bridge Model)
The circuit diagram describes a classic five-resistor bridge topology connected between two external terminals (let's designate them as input Node $A$ and output Node $B$). 

* Two resistors ($R_1$ and $R_2$) branch out in parallel from Node $A$.
* Two resistors ($R_3$ and $R_4$) converge in parallel into Node $B$.
* A central bridge resistor ($R_5$) cross-connects the intermediate nodes between the two branches (let's call these intermediate nodes $C$ and $D$).

#### 2. The Principle of Bridge Balance
The potential difference across the central bridge resistor $R_5$ depends on the ratio of the surrounding arms:

$$\frac{R_1}{R_2} = \frac{R_3}{R_4}$$

Given that all resistors are completely identical ($R = 3\ \Omega$):

$$\frac{3\ \Omega}{3\ \Omega} = \frac{3\ \Omega}{3\ \Omega} = 1$$

Because the ratio of the resistances in the two parallel branches is equal, the electric potential at intermediate Node $C$ is exactly equal to the electric potential at intermediate Node $D$ ($V_C = V_D$).

Therefore, the potential difference $\Delta V_{CD}$ across the central bridge resistor $R_5$ is:

$$\Delta V_{CD} = V_C - V_D = 0\text{ V}$$

#### 3. Circuit Simplification via Ohm's Law
According to Ohm's Law, the current $I_5$ flowing through the central resistor $R_5$ is directly proportional to the voltage drop across it:

$$I_5 = \frac{\Delta V_{CD}}{R_5} = \frac{0\text{ V}}{3\ \Omega} = 0\text{ A}$$

Since no current flows through the central resistor, it does not contribute to the power dissipation or current distribution of the network. We can mathematically simplify the circuit by removing $R_5$ entirely (treating it as an **open circuit**).

#### 4. Equivalent Resistance Calculation
With the central bridge resistor removed, the network reduces to two independent parallel branches. Each branch consists of two resistors connected in series:

* **Top Branch ($R_{top}$):** Composed of $R_1$ and $R_3$ in series.
  $$R_{top} = R_1 + R_3 = 3\ \Omega + 3\ \Omega = 6\ \Omega$$

* **Bottom Branch ($R_{bottom}$):** Composed of $R_2$ and $R_4$ in series.
  $$R_{bottom} = R_2 + R_4 = 3\ \Omega + 3\ \Omega = 6\ \Omega$$

The total equivalent resistance $R_{eq}$ of the network is the parallel combination of $R_{top}$ and $R_{bottom}$:

$$\frac{1}{R_{eq}} = \frac{1}{R_{top}} + \frac{1}{R_{bottom}}$$

$$R_{eq} = \frac{R_{top} \cdot R_{bottom}}{R_{top} + R_{bottom}}$$

Substituting our calculated values into the parallel expression:

$$R_{eq} = \frac{6\ \Omega \cdot 6\ \Omega}{6\ \Omega + 6\ \Omega} = \frac{36}{12}\ \Omega = 3\ \Omega$$

---

### Final Answer
The total equivalent resistance for the circuit in Problem 2 is:

$$R_{eq} = 3\ \Omega$$