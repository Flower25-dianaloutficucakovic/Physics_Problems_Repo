# Linear Circuit Analysis Solutions

## Problem 9

Calculate the current flowing through the ammeter.

---

### Theoretical Approach and Core Principles

To solve a complex linear circuit network containing multiple loops, junctions, and an ammeter, we employ fundamental electrical network theorems. The most robust approach relies on **Kirchhoff's Laws**:

1. **Kirchhoff's Current Law (KCL / Junction Rule):** The algebraic sum of currents entering any junction is zero. This is a statement of the conservation of electric charge.
   $$\sum I_{\text{in}} = \sum I_{\text{out}}$$

2. **Kirchhoff's Voltage Law (KVL / Loop Rule):** The algebraic sum of the potential differences (voltages) around any closed loop in a network is zero. This is a statement of the conservation of energy.
   $$\sum V = 0$$

Alternatively, if the ammeter behaves as an ideal short-circuit (internal resistance $R_A = 0\ \Omega$), the network can be simplified using **Thevenin's Theorem**, **Nodal Analysis**, or **Mesh Current Analysis**.

---

### General Mathematical Derivation Frame

Let the network consist of independent mesh currents $I_1, I_2, \dots, I_n$ flowing through the respective loops. The branch containing the ammeter carries a combined current resulting from these meshes.

#### Step 1: Formulating Mesh Equations (KVL)
For a system of $n$ independent loops, we can set up a matrix configuration using Ohm's Law and KVL:

$$\begin{pmatrix} 
R_{11} & R_{12} & \dots & R_{1n} \\ 
R_{21} & R_{22} & \dots & R_{2n} \\ 
\vdots & \vdots & \ddots & \vdots \\ 
R_{n1} & R_{n2} & \dots & R_{nn} 
\end{pmatrix}
\begin{pmatrix} 
I_1 \\ 
I_2 \\ 
\vdots \\ 
I_n 
\end{pmatrix} 
= 
\begin{pmatrix} 
E_1 \\ 
E_2 \\ 
\vdots \\ 
E_n 
\end{pmatrix}$$

Where:
* $R_{ii}$ represents the total self-resistance of loop $i$.
* $R_{ij}$ represents the mutual resistance shared between loop $i$ and loop $j$ (typically negative depending on the chosen current direction loop vectors).
* $E_i$ is the algebraic sum of the electromotive forces (EMF source supplies) inside loop $i$.

#### Step 2: System Resolution via Cramer's Rule
To solve for a specific mesh current tracking through the ammeter branch (let's assume it depends on mesh current $I_k$), we evaluate the determinants:

$$\Delta = \det(R)$$

$$\Delta_k = \det(R \text{ with column } k \text{ replaced by } E)$$

The resulting current tracking through that independent loop equates precisely to:

$$I_k = \frac{\Delta_k}{\Delta}$$

#### Step 3: Extracting Ammeter Target Current ($I_A$)
If the ammeter isolates on an edge branch of loop $k$, then the total current registering through the measuring device is exactly:

$$I_A = I_k$$

If the ammeter is shared between two adjacent loops (e.g., Loop $k$ and Loop $m$), the superposition calculation establishes:

$$I_A = |I_k - I_m|$$

---

### Summary Matrix for Verification Preview

Once specific numerical values ($R_x$, $E_y$) are mapped onto the component paths from your diagram, substitute them directly into the verified linear framework above to resolve the exact decimal current value in Amperes ($\text{A}$).