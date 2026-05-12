


# Problem 4 – Rotating loop (induction)

## 1. Magnetic Flux $\Phi(t)$

The magnetic flux through a loop is defined by the dot product of the magnetic field $\vec{B}$ and the area vector $\vec{S}$:


$$\Phi = \vec{B} \cdot \vec{S} = B S \cos \theta$$

Since the loop rotates with a constant angular velocity $\omega$, the angle $\theta$ between the field and the normal to the loop area changes over time as $\theta(t) = \omega t + \phi_0$. Assuming the loop starts perpendicular to the field ($\phi_0 = 0$):


$$\Phi(t) = N B S \cos(\omega t)$$


*Where $N$ is the number of turns in the coil.*

## 2. Electromotive Force $\mathcal{E}(t)$

According to **Faraday's Law of Induction**, the induced EMF is equal to the negative rate of change of the magnetic flux:


$$\mathcal{E}(t) = -\frac{d\Phi}{d t}$$

Substituting our expression for flux:


$$\mathcal{E}(t) = -\frac{d}{dt} [N B S \cos(\omega t)]$$

$$\mathcal{E}(t) = N B S \omega \sin(\omega t)$$

## 3. Amplitude $\mathcal{E}_0$

The amplitude is the maximum value of the sine function. Since $|\sin(\omega t)|_{max} = 1$:


$$\mathcal{E}_0 = N B S \omega$$

## 4. Dependence on $\omega$

The amplitude $\mathcal{E}_0$ is **linearly proportional** to the angular velocity $\omega$.

* If the rotation speed doubles, the maximum voltage doubles.
* This is because a higher $\omega$ increases both the frequency of the oscillation and the rate at which the loop "cuts" through magnetic field lines.

## 5. Mechanism of EMF Generation

The EMF is generated due to the **time-varying magnetic flux** through the circuit.

* As the loop rotates, the effective area projected onto the magnetic field lines changes.
* Physically, the Lorentz force acts on the charge carriers within the moving wires of the loop, pushing them along the wire to create a potential difference.
* This is the fundamental principle behind the **AC Generator (Alternator)**.





---

## Summary Table for Presentation

| Quantity | Formula | Phase Relation |
| --- | --- | --- |
| **Magnetic Flux** | $\Phi(t) = \Phi_0 \cos(\omega t)$ | Maximum at $t=0$ |
| **Induced EMF** | $\mathcal{E}(t) = \mathcal{E}_0 \sin(\omega t)$ | Lagging by $90^\circ$ |
| **Peak Voltage** | $\mathcal{E}_0 = N B S \omega$ | Proportional to speed |