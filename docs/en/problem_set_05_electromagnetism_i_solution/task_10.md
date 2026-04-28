This solution is designed to be copied directly into a `.md` file in **Visual Studio Code**. It uses standard Markdown for structure and `$$` for display math to ensure proper rendering with extensions like *Markdown All in One* or *Markdown Preview Enhanced*.

---

# Problem 10 – Field flux (verification of Gauss's law)

This problem focuses on the fundamental concept of electric flux and its numerical verification using a discrete approximation over a spherical surface.

### 1. Definition of Electric Field Flux

The electric field flux $\Phi_E$ through a surface $S$ represents the "amount" of electric field passing through that surface. Mathematically, it is defined as the surface integral of the electric field vector $\vec{E}$ over the surface $S$:

$$\Phi_E = \iint_S \vec{E} \cdot d\vec{A}$$

Where:
* $\vec{E}$ is the electric field vector.
* $d\vec{A}$ is the differential area vector, normal to the surface.

---

### 2. Flux through a Sphere around a Point Charge

Consider a point charge $q$ placed at the origin. The electric field at any point $r$ is given by Coulomb's Law:

$$\vec{E} = \frac{1}{4\pi\epsilon_0} \frac{q}{r^2} \hat{r}$$

For a sphere of radius $R$ centered at the origin, the area element vector $d\vec{A}$ is always parallel to the radial unit vector $\hat{r}$:

$$d\vec{A} = dA \hat{r}$$

Therefore, the dot product $\vec{E} \cdot d\vec{A}$ simplifies to:

$$\vec{E} \cdot d\vec{A} = \left( \frac{1}{4\pi\epsilon_0} \frac{q}{R^2} \right) dA$$

Since the magnitude of $E$ is constant over the surface of the sphere, it can be pulled out of the integral:

$$\Phi_E = \frac{1}{4\pi\epsilon_0} \frac{q}{R^2} \iint_S dA = \frac{1}{4\pi\epsilon_0} \frac{q}{R^2} (4\pi R^2) = \frac{q}{\epsilon_0}$$

---

### 3. Discrete Approximation of the Flux

To verify this numerically, we can partition the sphere into small area elements $\Delta A_{ij}$ using spherical coordinates $\theta$ (polar angle) and $\phi$ (azimuthal angle).

The total flux is approximated by the sum:

$$\Phi_E \approx \sum_{i=1}^{N_\theta} \sum_{j=1}^{N_\phi} \vec{E}(\theta_i, \phi_j) \cdot \vec{n} \Delta A_{ij}$$

In spherical coordinates, the area element is:
$$\Delta A_{ij} = R^2 \sin(\theta_i) \Delta \theta \Delta \phi$$

> **Note on Implementation:** When coding this, avoid the poles ($\theta = 0$ and $\theta = \pi$) where $\sin\theta = 0$ to prevent singular or redundant points, or ensure your grid midpoints are used.

---

### 4. Dependence on the Number of Grid Points

Numerical accuracy is highly dependent on the "density" of our grid ($N_\theta \times N_\phi$). 

* **Low Resolution:** With few points, the curvature of the sphere is poorly represented, leading to a significant discretization error.
* **High Resolution:** As $N \to \infty$, the sum converges to the analytical value $\frac{q}{\epsilon_0}$.
* **Error Scaling:** The error typically decreases as $1/N$, where $N$ is the total number of points, depending on the integration method used (e.g., Midpoint rule vs. Trapezoidal).

---

### 5. Comparison with Analytical Result

The goal of the numerical simulation is to demonstrate **Gauss's Law**: the total flux depends only on the enclosed charge, not the radius of the sphere or the specific geometry of the surface.

| Method | Formula / Result |
| :--- | :--- |
| **Analytical** | $$\Phi_E = \frac{q}{\epsilon_0}$$ |
| **Numerical** | $$\Phi_E = \sum E \Delta A \cos(\theta)$$ |
| **Verification** | $$\text{Error} = | \Phi_{\text{analytical}} - \Phi_{\text{numerical}} |$$ |

By calculating the flux for different radii, you will find that while the field strength $E$ drops as $1/r^2$, the area increases as $r^2$, keeping the total flux constant—precisely as predicted by the analytical solution.