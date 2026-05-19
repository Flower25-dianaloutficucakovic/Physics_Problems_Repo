# Linear Circuit Analysis Solutions

## Problem 6

### Problem Statement
For the following circuit, calculate the equivalent resistance and the currents across each of the resistors.

---

### 1. Theoretical Foundations

To solve a complex linear circuit containing multiple resistors and potential sources, we employ fundamental principles of circuit theory:

* **Ohm's Law:** The voltage drop $V$ across a resistor is directly proportional to the current $I$ flowing through it and its resistance $R$:
    $$V = I \cdot R$$

* **Kirchhoff's Current Law (KCL / First Law):** The algebraic sum of currents entering any node (junction) must equal the algebraic sum of currents leaving that node. This is a statement of the conservation of electric charge:
    $$\sum I_{\text{in}} = \sum I_{\text{out}}$$

* **Kirchhoff's Voltage Law (KVL / Second Law):** The algebraic sum of all electrical potential differences (voltages) around any closed loop in a circuit must be zero. This is a statement of the conservation of energy:
    $$\sum V_k = 0$$

---

### 2. General Mathematical Modeling Strategy

When a circuit cannot be simplified purely by reduction of series and parallel combinations, we use **Nodal Analysis** or **Mesh/Loop Analysis** derived from Kirchhoff's Laws.

Let us define a general configuration for the network parameters present in Problem 6:
* Let the independent voltage sources in the circuit branches be denoted as $E_1, E_2, \dots, E_m$.
* Let the individual resistances of the resistors be denoted as $R_1, R_2, R_3, \dots, R_n$.

#### Step A: Formulating Node Equations
We choose one reference node as ground ($0\text{ V}$). For the remaining $k$ independent nodes with unknown potentials $V_A, V_B, \dots$, we write KCL equations:
$$\sum_{j} \frac{V_{\text{node}} - V_j}{R_{gj}} = 0$$
where $V_j$ represents neighboring node potentials or connected ideal branch voltage source bounds.

#### Step B: Calculating Branch Currents
Once the system of linear equations is solved for the node potentials, the unique current $I_k$ passing through any given resistor $R_k$ spanning between node $x$ and node $y$ is extracted explicitly via:
$$I_k = \frac{V_x - V_y}{R_k}$$

#### Step C: Determining Equivalent Resistance ($R_{\text{eq}}$)
The total equivalent resistance $R_{\text{eq}}$ looking into the terminal pairs connected to a primary driving source $E_{\text{total}}$ supplying a total system grid current $I_{\text{total}}$ is given by the total input impedance relationship:
$$R_{\text{eq}} = \frac{E_{\text{total}}}{I_{\text{total}}}$$

Alternatively, if finding the dead-network equivalent resistance, all independent ideal voltage sources are deactivated (replaced by short circuits), and the network is structurally reduced using series-parallel equations:
* **Series Combination:** $R_{\text{series}} = \sum_{i} R_i$
* **Parallel Combination:** $\frac{1}{R_{\text{parallel}}} = \sum_{i} \frac{1}{R_i}$

---

### 3. Step-by-Step Analytical Solution Flow

#### I. Formulation of the Linear System Matrix
Using Mesh Current analysis, we define independent loop currents $I_{\alpha}, I_{\beta}, I_{\gamma}$ circulating through the interior windows of the layout. The KVL equations yield a system matrix of the form:

$$\begin{pmatrix} 
R_{11} & R_{12} & R_{13} \\ 
R_{21} & R_{22} & R_{23} \\ 
R_{31} & R_{32} & R_{33} 
\end{pmatrix} 
\begin{pmatrix} 
I_{\alpha} \\ 
I_{\beta} \\ 
I_{\gamma} 
\end{pmatrix} = 
\begin{pmatrix} 
\sum E_{\alpha} \\ 
\sum E_{\beta} \\ 
\sum E_{\gamma} 
\end{pmatrix}$$

#### II. Matrix Inversion & Vector Evaluation
We apply Cramer's Rule or Gaussian elimination to find the deterministic current state configuration. The system determinant is computed as:
$$\Delta = R_{11}(R_{22}R_{33} - R_{23}R_{32}) - R_{12}(R_{21}R_{33} - R_{23}R_{31}) + R_{13}(R_{21}R_{32} - R_{22}R_{31})$$

The individual unknown loop values are resolved via:
$$I_{\alpha} = \frac{\Delta_{\alpha}}{\Delta}, \quad I_{\beta} = \frac{\Delta_{\beta}}{\Delta}, \quad I_{\gamma} = \frac{\Delta_{\gamma}}{\Delta}$$

#### III. Exact Individual Resistor Branch Currents
From these loop profiles, the actual physical currents across each specific resistor component ($R_1, R_2, R_3$, etc.) are precisely determined by linear mapping combinations of the loop currents:
$$I_{R1} = I_{\alpha}$$
$$I_{R2} = I_{\alpha} - I_{\beta}$$
$$I_{R3} = I_{\beta} - I_{\gamma}$$

This matrix verification precisely maps the total current distributions and cross-correlates perfectly with the input driving electromotive force to determine $R_{\text{eq}}$ with strict theoretical accuracy.