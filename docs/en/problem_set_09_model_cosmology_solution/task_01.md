
## Problem 1 – Ptolemy's Model

### 1. Kinematic Framework & Superposition of Circular Motions
In the geocentric Ptolemaic framework, the complex apparent motion of planets is modeled by the superposition of two uniform circular motions:
1. **The Deferent:** A large guiding circle centered near the Earth with radius $R$, along which an imaginary point moves with constant angular velocity $\omega$.
2. **The Epicycle:** A smaller secondary circle with radius $r$, centered on the moving point of the deferent, around which the actual planet rotates with constant angular velocity $\Omega$.



Let the position of the center of the epicycle be given by the vector $\vec{r}_D(t)$, and the position of the planet relative to the center of the epicycle be given by $\vec{r}_E(t)$. By vector addition, the position vector of the planet $\vec{r}(t) = [x(t), y(t)]^T$ relative to the Earth at the origin is:

$$\vec{r}(t) = \vec{r}_D(t) + \vec{r}_E(t)$$

Assuming both orbits begin along the positive x-axis at $t = 0$, the parametric components are expressed as:

$$x(t) = R \cos(\omega t) + r \cos(\Omega t)$$

$$y(t) = R \sin(\omega t) + r \sin(\Omega t)$$

---

### 2. Derivation of Parametric Velocity and Trajectory Acceleration Vectors
To analyze the kinematics and structural changes in the apparent path, we differentiate the position coordinates with respect to time $t$. 

#### First Derivative (Velocity Vector Components)
$$\dot{x}(t) = \frac{\text{d}x}{\text{d}t} = -R\omega \sin(\omega t) - r\Omega \sin(\Omega t)$$

$$\dot{y}(t) = \frac{\text{d}y}{\text{d}t} = R\omega \cos(\omega t) + r\Omega \cos(\Omega t)$$

#### Second Derivative (Acceleration Vector Components)
$$\ddot{x}(t) = \frac{\text{d}^2x}{\text{d}t^2} = -R\omega^2 \cos(\omega t) - r\Omega^2 \cos(\Omega t)$$

$$\ddot{y}(t) = \frac{\text{d}^2y}{\text{d}t^2} = -R\omega^2 \sin(\omega t) - r\Omega^2 \sin(\Omega t)$$

The magnitude of the distance from Earth to the planet squared, $d^2(t) = x^2(t) + y^2(t)$, can be simplified using standard trigonometric identities:

$$d^2(t) = (R \cos(\omega t) + r \cos(\Omega t))^2 + (R \sin(\omega t) + r \sin(\Omega t))^2$$

$$d^2(t) = R^2(\cos^2(\omega t) + \sin^2(\omega t)) + r^2(\cos^2(\Omega t) + \sin^2(\Omega t)) + 2Rr(\cos(\omega t)\cos(\Omega t) + \sin(\omega t)\sin(\Omega t))$$

$$d^2(t) = R^2 + r^2 + 2Rr \cos((\Omega - \omega)t)$$

---

### 3. Investigation of the Condition for Retrograde Motion
Retrograde motion occurs when the apparent angular projection of the planet viewed from Earth reverses its regular directional sweep. We define the ecliptic longitude $\varphi(t)$ as the angular projection in polar coordinates:

$$\varphi(t) = \arctan\left(\frac{y(t)}{x(t)}\right)$$

The apparent angular velocity $\dot{\varphi}(t)$ is given by:

$$\dot{\varphi}(t) = \frac{\text{d}\varphi}{\text{d}t} = \frac{x(t)\dot{y}(t) - y(t)\dot{x}(t)}{x^2(t) + y^2(t)}$$

Because the denominator $d^2(t) = x^2(t) + y^2(t)$ is a squared Euclidean distance, it is strictly positive ($d^2(t) > 0$). Thus, the sign of the angular velocity is entirely governed by the numerator, $N(t) = x(t)\dot{y}(t) - y(t)\dot{x}(t)$. Substituting our parametric equations into $N(t)$ yields:

$$N(t) = \Big(R \cos(\omega t) + r \cos(\Omega t)\Big)\Big(R\omega \cos(\omega t) + r\Omega \cos(\Omega t)\Big) - \Big(R \sin(\omega t) + r \sin(\Omega t)\Big)\Big(-R\omega \sin(\omega t) - r\Omega \sin(\Omega t)\Big)$$

Expanding and collecting coefficients:

$$N(t) = R^2\omega\Big(\cos^2(\omega t) + \sin^2(\omega t)\Big) + r^2\Omega\Big(\cos^2(\Omega t) + \sin^2(\Omega t)\Big) + Rr(\omega + \Omega)\Big(\cos(\omega t)\cos(\Omega t) + \sin(\omega t)\sin(\Omega t)\Big)$$

Applying the cosine subtraction identity $\cos(A)\cos(B) + \sin(A)\sin(B) = \cos(A-B)$:

$$N(t) = R^2\omega + r^2\Omega + Rr(\omega + \Omega)\cos\Big((\Omega - \omega)t\Big)$$

For retrograde motion to occur, the angular direction must reverse, which requires $\dot{\varphi}(t) < 0$, meaning:

$$R^2\omega + r^2\Omega + Rr(\omega + \Omega)\cos\Big((\Omega - \omega)t\Big) < 0$$

The maximum likelihood of this inequality holding occurs when the cosine function reaches its absolute minimum value, $\cos((\Omega - \omega)t) = -1$. This geometric alignment happens at perigee, when the planet passes closest to Earth. Substituting $-1$ for the cosine term gives the boundary condition:

$$R^2\omega + r^2\Omega - Rr(\omega + \Omega) < 0$$

Rearranging the terms:

$$R\omega(R - r) - r\Omega(R - r) < 0$$

$$\Big(R\omega - r\Omega\Big)\Big(R - r\Big) < 0$$

Assuming a standard Ptolemaic system configuration where the deferent radius is larger than the epicycle radius ($R > r \implies R - r > 0$), we divide both sides by $(R-r)$, isolating the fundamental inequality for retrogradation:

$$R\omega - r\Omega < 0 \implies r\Omega > R\omega$$

Expressing this as a ratio:

$$\frac{r}{R} > \frac{\omega}{\Omega}$$

**Theoretical Interpretation:** Retrograde motion occurs if and only if the maximum linear tangential velocity of the planet on its epicycle ($r\Omega$) exceeds the orbital speed of the epicycle center moving along the main deferent ($R\omega$).

---

### 4. Determination of Turning Moments in Angular Projection
The stationary tipping points where the planet stalls and changes its apparent direction (transitioning into or out of retrograde loops) occur precisely when the apparent angular velocity passes through zero ($\dot{\varphi}(t) = 0$).

Setting the numerator function $N(t) = 0$:

$$R^2\omega + r^2\Omega + Rr(\omega + \Omega)\cos\Big((\Omega - \omega)t\Big) = 0$$

Isolating the cosine term:

$$\cos\Big((\Omega - \omega)t\Big) = -\frac{R^2\omega + r^2\Omega}{Rr(\omega + \Omega)}$$

To obtain real solutions for time $t$, the absolute value of the right-hand side must satisfy the constraint bounded by the domain of the inverse cosine function:

$$\left| -\frac{R^2\omega + r^2\Omega}{Rr(\omega + \Omega)} \right| \le 1$$

Applying the arccosine function to extract the angular phase:

$$(\Omega - \omega)t = \pm \arccos\left(-\frac{R^2\omega + r^2\Omega}{Rr(\omega + \Omega)}\right) + 2k\pi, \quad k \in \mathbb{Z}$$

Solving for the explicit moments of directional turnaround ($t_{\text{station}}$):

$$t_{\text{station}} = \frac{1}{\Omega - \omega} \left[ \pm \arccos\left(-\frac{R^2\omega + r^2\Omega}{Rr(\omega + \Omega)}\right) + 2k\pi \right], \quad k \in \mathbb{Z}$$

This analytical solution determines the boundaries of the retrograde window during each synodic cycle of the planet.