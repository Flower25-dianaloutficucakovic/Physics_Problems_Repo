
## Problem 2 – Copernicus's Model

This section provides the comprehensive theoretical derivation, mathematical formulation, and kinematic analysis of the heliocentric Copernican system, mapping the relative coordinates of an outer planet (Mars) observed from a moving platform (Earth).

---

### 1. Kinematic Equations of Heliocentric Circular Orbits

In the heliocentric framework proposed by Nicolaus Copernicus, the Sun resides stationary at the origin of a celestial coordinate system:

$$
\vec{r}_{\text{Sun}} = \begin{bmatrix} 0 \\ 0 \end{bmatrix}
$$

Let the orbits of Earth (indexed as $Z$ for *Ziemia*) and Mars (indexed as $M$) be approximated as coplanar, concentric circles centered on the Sun. The positions of both planets as a function of time $t$ are described by their respective heliocentric radius vectors $\vec{r}_Z(t)$ and $\vec{r}_M(t)$:

$$
\vec{r}_Z(t) = R_Z \begin{bmatrix} \cos(\omega_Z t) \\ \sin(\omega_Z t) \end{bmatrix}
$$

$$
\vec{r}_M(t) = R_M \begin{bmatrix} \cos(\omega_M t) \\ \sin(\omega_M t) \end{bmatrix}
$$

Where the symbols represent:
* $R_Z, R_M$: The semi-major axes (orbital radii) of Earth and Mars respectively, satisfying $R_M > R_Z$.
* $\omega_Z, \omega_M$: The constant orbital angular frequencies of Earth and Mars. According to Keplerian mechanics, the angular velocities scale inversely with the orbital radius ($\omega \propto R^{-3/2}$), which dictates that $\omega_Z > \omega_M$.

---

### 2. Relative Geocentric Position Vector Formulation

To understand how an observer on Earth sees Mars against the background of distant stars, we must shift from a heliocentric frame to a moving geocentric reference frame. The relative position vector $\vec{r}_{M/Z}(t)$ defines the displacement vector pointing from Earth directly to Mars:

$$
\vec{r}_{M/Z}(t) = \vec{r}_M(t) - \vec{r}_Z(t)
$$

Substituting our parametric heliocentric equations yields the component-wise geocentric coordinates:

$$
\vec{r}_{M/Z}(t) = \begin{bmatrix} x_{M/Z}(t) \\ y_{M/Z}(t) \end{bmatrix} = \begin{bmatrix} R_M \cos(\omega_M t) - R_Z \cos(\omega_Z t) \\ R_M \sin(\omega_M t) - R_Z \sin(\omega_Z t) \end{bmatrix}
$$

---

### 3. Analytical Derivation of Retrograde Motion Conditions

The apparent position of Mars on the celestial sphere is determined by its **ecliptic longitude** $\phi(t)$, which is defined geometrically by the phase angle of the relative coordinate vector:

$$
\phi(t) = \operatorname{atan2}\left(y_{M/Z}(t),\, x_{M/Z}(t)\right)
$$

Alternatively, this can be stated implicitly via the tangent function:

$$
\tan(\phi(t)) = \frac{y_{M/Z}(t)}{x_{M/Z}(t)}
$$

#### Direct Derivation of Apparent Angular Velocity
**Prograde motion** occurs when the planet appears to move eastward across the sky ($\frac{\text{d}\phi}{\text{d}t} > 0$). **Retrograde motion** occurs when the apparent motion reverses direction westward, which mathematically demands that:

$$
\frac{\text{d}\phi}{\text{d}t} < 0
$$

To find $\frac{\text{d}\phi}{\text{d}t}$, we differentiate the implicit equation with respect to time $t$:

$$
\sec^2(\phi) \frac{\text{d}\phi}{\text{d}t} = \frac{\dot{y}_{M/Z}x_{M/Z} - y_{M/Z}\dot{x}_{M/Z}}{x_{M/Z}^2}
$$

Using the trigonometric identity $\sec^2(\phi) = 1 + \tan^2(\phi) = 1 + \frac{y^2}{x^2} = \frac{x^2 + y^2}{x^2}$, we can isolate the angular velocity profile:

$$
\frac{\text{d}\phi}{\text{d}t} = \frac{x_{M/Z}\dot{y}_{M/Z} - y_{M/Z}\dot{x}_{M/Z}}{x_{M/Z}^2 + y_{M/Z}^2}
$$

Since the denominator $x_{M/Z}^2 + y_{M/Z}^2 \ge (R_M - R_Z)^2 > 0$ is always positive, the sign of the angular motion depends exclusively on the numerator. Let us evaluate the time derivatives of our position components:

$$
\dot{x}_{M/Z}(t) = -\omega_M R_M \sin(\omega_M t) + \omega_Z R_Z \sin(\omega_Z t)
$$

$$
\dot{y}_{M/Z}(t) = \omega_M R_M \cos(\omega_M t) - \omega_Z R_Z \cos(\omega_Z t)
$$

Substituting these back into our numerator expression $N(t) = x_{M/Z}\dot{y}_{M/Z} - y_{M/Z}\dot{x}_{M/Z}$:

$$
N(t) = \left[ R_M \cos(\omega_M t) - R_Z \cos(\omega_Z t) \right] \left[ \omega_M R_M \cos(\omega_M t) - \omega_Z R_Z \cos(\omega_Z t) \right] - \left[ R_M \sin(\omega_M t) - R_Z \sin(\omega_Z t) \right] \left[ -\omega_M R_M \sin(\omega_M t) + \omega_Z R_Z \sin(\omega_Z t) \right]
$$

Expanding and regrouping terms using the fundamental trigonometric identity $\cos^2(\theta) + \sin^2(\theta) = 1$ and the cosine difference formula $\cos(\alpha)\cos(\beta) + \sin(\alpha)\sin(\beta) = \cos(\alpha - \beta)$:

$$
N(t) = \omega_M R_M^2 + \omega_Z R_Z^2 - (\omega_M + \omega_Z)R_M R_Z \cos\left((\omega_Z - \omega_M)t\right)
$$

Thus, the condition for the onset of retrograde motion reduces to the inequality:

$$
\omega_M R_M^2 + \omega_Z R_Z^2 - (\omega_M + \omega_Z)R_M R_Z \cos\left((\omega_Z - \omega_M)t\right) < 0
$$

$$
\cos\left((\omega_Z - \omega_M)t\right) > \frac{\omega_M R_M^2 + \omega_Z R_Z^2}{(\omega_M + \omega_Z)R_M R_Z}
$$

#### Analysis of the Synodic Bound at Opposition
The maximum value of the cosine term occurs at $\cos\left((\omega_Z - \omega_M)t\right) = 1$, which represents the geometric point of **opposition**—when the Sun, Earth, and Mars line up perfectly on the same side of space. At this precise synodic moment, the inequality simplifies directly to:

$$
\omega_M R_M^2 + \omega_Z R_Z^2 < (\omega_M + \omega_Z)R_M R_Z
$$

Grouping identical frequency components on opposite sides:

$$
\omega_M R_M(R_M - R_Z) < \omega_Z R_Z(R_M - R_Z)
$$

Since $R_M > R_Z$, we can divide safely by $(R_M - R_Z)$ without flipping the inequality:

$$
\omega_M R_M < \omega_Z R_Z \implies v_M < v_Z
$$

Because the physical velocity $v$ of an outer planet is fundamentally smaller than that of an inner planet ($v_M \approx 24.1\text{ km/s} < v_Z \approx 29.8\text{ km/s}$), this inequality is always satisfied. Thus, **retrograde motion is guaranteed to occur during every synodic period, centered precisely around the date of planetary opposition**.

---

### 4. Mathematical Equivalence: Copernicus vs. Ptolemy

A key triumph of kinematic physics is proving that Copernicus's heliocentric model and Ptolemy's geocentric epicyclic model are mathematically equivalent descriptions of relative planetary motion.

Recall Ptolemy's parametric model from Problem 1, which frames planetary trajectories using a major carrier circle (the **deferent**) and a secondary spinning circle (the **epicycle**):

$$
x_P(t) = R_{\text{def}} \cos(\omega_{\text{def}} t) + r_{\text{epi}} \cos(\omega_{\text{epi}} t)
$$

$$
y_P(t) = R_{\text{def}} \sin(\omega_{\text{def}} t) + r_{\text{epi}} \sin(\omega_{\text{epi}} t)
$$

Now, observe Copernicus's relative geocentric tracking equations derived in Section 2:

$$
x_{M/Z}(t) = R_M \cos(\omega_M t) - R_Z \cos(\omega_Z t)
$$

$$
y_{M/Z}(t) = R_M \sin(\omega_M t) - R_Z \sin(\omega_Z t)
$$

By applying the trigonometric identity $-\cos(\theta) = \cos(\theta + \pi)$ and $-\sin(\theta) = \sin(\theta + \pi)$, we can seamlessly rewrite Copernicus's vector equations into a purely additive form:

$$
x_{M/Z}(t) = R_M \cos(\omega_M t) + R_Z \cos(\omega_Z t + \pi)
$$

$$
y_{M/Z}(t) = R_M \sin(\omega_M t) + R_Z \sin(\omega_Z t + \pi)
$$

By matching coefficients directly against Ptolemy's framework, we map the variables perfectly:

| Geocentric Parameter | Physical Heliocentric Equivalent |
| :--- | :--- |
| **Deferent Radius ($R_{\text{def}}$)** | Radius of the outer planet's heliocentric orbit ($R_M$) |
| **Epicycle Radius ($r_{\text{epi}}$)** | Radius of Earth's heliocentric orbit ($R_Z$) |
| **Deferent Frequency ($\omega_{\text{def}}$)** | Angular velocity of Mars around the Sun ($\omega_M$) |
| **Epicycle Frequency ($\omega_{\text{epi}}$)** | Angular velocity of Earth around the Sun shifted by a phase offset ($\omega_Z t + \pi$) |

#### Theoretical Interpretation
This structural equivalence shows that Ptolemy’s complex geometric system was not a physical hallucination. Rather, it was a legitimate coordinate transformation. The epicycle is simply the geometric reflection of Earth's own orbital velocity being projected onto our observations of the outer planets. 

Copernicus simplified this frame of reference by realizing that we can eliminate a dedicated epicycle for every single planet in the solar system by replacing them with a single shared circle: the orbit of our moving Earth.