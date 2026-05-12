

# Problem 09 - Ideal vs. Real Transformer

## 1. Theoretical Introduction

A transformer is a static electrical device that transfers energy between two or more circuits through electromagnetic induction. It consists of two or more coils (windings) wrapped around a common ferromagnetic core.

### The Principle of Operation

* **Primary Side:** An alternating current $I_1$ flows through the primary coil, creating a time-varying magnetic flux $\Phi$ in the core.
* **Magnetic Core:** The core guides the flux to the secondary coil.
* **Secondary Side:** According to **Faraday's Law of Induction**, the changing flux induces an electromotive force (EMF) in the secondary coil.

---

## 2. Mathematical Model

### A. The Ideal Transformer

In an ideal transformer, we assume:

1. **Zero Resistance:** No Joule heating ($R_1 = R_2 = 0$).
2. **Perfect Coupling:** All magnetic flux stays within the core (no leakage flux).
3. **No Core Losses:** No hysteresis or eddy current losses in the iron.
4. **Infinite Permeability:** The core requires zero current to set up the flux.

The induced EMF in each winding is:


$$\mathcal{E}_1 = -N_1 \frac{d\Phi}{dt}, \quad \mathcal{E}_2 = -N_2 \frac{d\Phi}{dt}$$

Dividing these equations gives the **Transformer Equation**:


$$\frac{U_1}{U_2} = \frac{N_1}{N_2} = k$$


where $k$ is the turns ratio. For an ideal transformer, power is conserved ($P_1 = P_2$):


$$U_1 I_1 = U_2 I_2 \implies \frac{I_1}{I_2} = \frac{N_2}{N_1} = \frac{1}{k}$$

### B. The Real Transformer (Losses)

In reality, efficiency $\eta < 100\%$ due to:

* **Copper Losses ($P_{Cu}$):** Resistance in the wires ($I^2 R$).
* **Iron Losses ($P_{Fe}$):** * *Hysteresis:* Energy spent reorienting magnetic domains.
* *Eddy Currents:* Induced currents in the core material.


* **Leakage Flux:** Not all flux lines link both coils.

Efficiency is defined as:


$$\eta = \frac{P_{out}}{P_{in}} = \frac{U_2 I_2 \cos \phi_2}{U_2 I_2 \cos \phi_2 + P_{Cu} + P_{Fe}}$$

---

## 3. Comparison Table

| Feature | Ideal Transformer | Real Transformer |
| --- | --- | --- |
| **Winding Resistance** | $0$ | $R > 0$ (Copper loss) |
| **Magnetic Flux** | $100\%$ contained in core | Leakage flux exists |
| **Core Losses** | None | Eddy currents & Hysteresis |
| **Efficiency** | $100\%$ | Typically $95\% - 99\%$ |
| **Permeability** | Infinite | Finite |




---

## 5. Summary and Interpretation

The secondary voltage comes from the **time-rate of change of magnetic flux**. In practice, we minimize losses by:

1. **Laminating the core:** Using thin insulated sheets of steel to break up paths for eddy currents.
2. **Using high-permeability materials:** Silicon steel reduces hysteresis.
3. **Thick Copper windings:** Reducing $R$ to minimize Joule heating.

In high-power industrial transformers, efficiency can exceed $99\%$, making the "ideal" model a very strong approximation for basic engineering calculations.