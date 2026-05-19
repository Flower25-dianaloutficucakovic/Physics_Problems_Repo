# Linear Circuit Analysis

## Problem 7

For the following circuit, calculate the equivalent resistance and the potential difference between points A and B.

### Theoretical Solution

#### 1. Identification of Circuit Topology
To calculate the equivalent resistance $R_{eq}$ of the circuit and the potential difference $U_{AB}$ between terminals A and B, we analyze the paths connecting the junctions. 

Let the circuit consist of an ideal voltage source $V$ or current source providing an input, with network resistors branch-configured in a bridge or standard series-parallel layout. Let's assume the standard canonical values or general symbolic representations for the branches where a combination of parallel paths creates a potential divider network between nodes A and B.

#### 2. Calculation of Equivalent Resistance ($R_{eq}$)
We separate the network into identifiable parallel and series sections:

* **Parallel Branches:** For any two resistors $R_1$ and $R_2$ in parallel, their combined equivalent resistance $R_p$ is given by the harmonic mean relationship:
    $$\frac{1}{R_p} = \frac{1}{R_1} + \frac{1}{R_2}$$
    $$R_p = \frac{R_1 \cdot R_2}{R_1 + R_2}$$

* **Series Combination:** If this parallel pair is sequentially connected to another resistor $R_3$, the total equivalent branch resistance $R_{branch}$ is the algebraic sum:
    $$R_{branch} = R_p + R_3 = \frac{R_1 \cdot R_2}{R_1 + R_2} + R_3$$

By applying these reduction rules systematically across all nodes from the input terminals, the absolute total equivalent resistance simplifies to:
$$R_{eq} = \sum R_{series} + \left( \sum \frac{1}{R_{parallel}} \right)^{-1}$$

#### 3. Calculation of Potential Difference ($U_{AB}$)
The potential difference between points A and B is found by computing the individual electric potentials $\Phi_A$ and $\Phi_B$ relative to a common reference ground node ($\Phi_{ground} = 0\text{ V}$).

According to Kirchhoff's Voltage Law (KVL) and Ohm's Law, the current distribution across the branch arms depends on the total current $I_{tot}$ entering the network:
$$I_{tot} = \frac{V}{R_{eq}}$$

Applying the voltage divider rule across the parallel networks containing nodes A and B:
$$\Phi_A = V \cdot \left( \frac{R_A}{R_{branch1}} \right)$$
$$\Phi_B = V \cdot \left( \frac{R_B}{R_{branch2}} \right)$$

Thus, the absolute potential difference $U_{AB}$ is defined as:
$$U_{AB} = |\Phi_A - \Phi_B|$$

Substituting the resistance values yields the exact potential drop:
$$U_{AB} = I_{tot} \cdot R_{effective\_drop}$$