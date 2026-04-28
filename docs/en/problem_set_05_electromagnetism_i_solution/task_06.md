# Problem 6 – 2D field map

## System Description

A system of three point charges in a 2D plane generating an electric field. The field vector at any point $(x, y)$ is the superposition of contributions from all three charges.

---

## 1. Function for calculating the electric field vector

**Electric field from a point charge:**

For a point charge $q$ located at position $(x_q, y_q)$, the electric field at point $(x, y)$ is:

$$\vec{E} = k \frac{q}{r^2} \hat{r}$$

where $r$ is the distance from the charge and $\hat{r}$ is the unit vector pointing away from the charge.

**Distance and direction:**

$$r = \sqrt{(x - x_q)^2 + (y - y_q)^2}$$

$$\hat{r} = \frac{1}{r}\begin{pmatrix} x - x_q \\ y - y_q \end{pmatrix}$$

**Field components:**

$$E_x = k \frac{q(x - x_q)}{r^3}$$

$$E_y = k \frac{q(y - y_q)}{r^3}$$

**Total field from three charges:**

$$\vec{E}(x, y) = \sum_{i=1}^{3} k \frac{q_i}{r_i^2} \hat{r}_i = \sum_{i=1}^{3} \begin{pmatrix} k \frac{q_i(x - x_i)}{r_i^3} \\ k \frac{q_i(y - y_i)}{r_i^3} \end{pmatrix}$$

where $k = 8.99 \times 10^9$ N·m²/C².

**Singularity handling:**

To avoid division by zero at charge locations, enforce a minimum distance:

$$r_{\min} = \max(r, \epsilon) \quad \text{where} \quad \epsilon = 0.01 \text{ m}$$

---

## 2. Generate a vector field map

**Grid setup:**

For domain $x \in [-2, 2]$ m and $y \in [-2, 2]$ m, create a uniform grid:

$$x_i = -2 + i \cdot \Delta x, \quad y_j = -2 + j \cdot \Delta y$$

with $\Delta x = \Delta y = 0.1$ m (resulting in a $41 \times 41$ grid).

**At each grid point $(x_i, y_j)$, calculate:**

$$\vec{E}_{i,j} = E_x(x_i, y_j) \hat{x} + E_y(x_i, y_j) \hat{y}$$

$$|\vec{E}_{i,j}| = \sqrt{E_x^2 + E_y^2}$$

**Normalization for visualization:**

To display arrows of uniform length with color indicating field strength:

$$\hat{E}_{i,j} = \frac{\vec{E}_{i,j}}{|\vec{E}_{i,j}|}$$

Color intensity: $c = \log_{10}(|\vec{E}|)$ (logarithmic scale for better visualization)

---

## 3. Example configuration

**Default three-charge system:**

| Charge | Position $(x, y)$ | Magnitude |
|--------|-------------------|-----------|
| $q_1$ | $(-0.5, 0)$ m | $+2 \, \mu$C |
| $q_2$ | $(+0.5, 0)$ m | $-1 \, \mu$C |
| $q_3$ | $(0, +0.8)$ m | $+1 \, \mu$C |

**Field at origin $(0, 0)$:**

Distance from $q_1$: $r_1 = 0.5$ m

$$\vec{E}_1 = k \frac{2 \times 10^{-6}}{(0.5)^2} \hat{x} = 8.99 \times 10^9 \times \frac{2 \times 10^{-6}}{0.25} \hat{x} = 71.92 \times 10^3 \hat{x} \text{ N/C}$$

Distance from $q_2$: $r_2 = 0.5$ m

$$\vec{E}_2 = k \frac{(-1) \times 10^{-6}}{(0.5)^2} (-\hat{x}) = 35.96 \times 10^3 \hat{x} \text{ N/C}$$

Distance from $q_3$: $r_3 = 0.8$ m

$$\vec{E}_3 = k \frac{1 \times 10^{-6}}{(0.8)^2} (-\hat{y}) = -14.0 \times 10^3 \hat{y} \text{ N/C}$$

**Total field at origin:**

$$\vec{E}(0,0) = (71.92 + 35.96) \times 10^3 \hat{x} - 14.0 \times 10^3 \hat{y} = 107.88 \times 10^3 \hat{x} - 14.0 \times 10^3 \hat{y} \text{ N/C}$$

---

## 4. Find equilibrium points numerically

**Definition:** An equilibrium point is where $\vec{E} = 0$:

$$E_x(x_0, y_0) = 0$$

$$E_y(x_0, y_0) = 0$$

**Numerical method: Newton-Raphson in 2D**

Starting from initial guess $\vec{r}^{(0)} = (x^{(0)}, y^{(0)})$:

$$\vec{r}^{(n+1)} = \vec{r}^{(n)} - \mathbf{J}^{-1}(\vec{r}^{(n)}) \vec{E}(\vec{r}^{(n)})$$

where $\mathbf{J}$ is the Jacobian matrix:

$$\mathbf{J} = \begin{pmatrix} \frac{\partial E_x}{\partial x} & \frac{\partial E_x}{\partial y} \\ \frac{\partial E_y}{\partial x} & \frac{\partial E_y}{\partial y} \end{pmatrix}$$

**For the default configuration, expected equilibrium points:**

- **Point A**: On the line connecting $q_1$ and $q_2$ (on negative $x$-axis due to charge asymmetry)
- **Point B**: Potentially on the positive $y$-axis above $q_3$ (unlikely with this configuration)

**Convergence criterion:**

$$|\vec{E}(\vec{r}^{(n)})| < 10^{-6} \text{ N/C}$$

---

## 5. Investigate stability of equilibrium points

**Stability analysis:** Displace slightly from equilibrium $\vec{r}_0$ and check if the system returns or diverges.

**Perturbation:** $\vec{r} = \vec{r}_0 + \delta\vec{r}$ where $|\delta\vec{r}| = 10^{-3}$ m

**Force on test charge at perturbed position:**

$$\vec{F} = q_{\text{test}} \vec{E}(\vec{r}_0 + \delta\vec{r}) \approx q_{\text{test}} \mathbf{J}(\vec{r}_0) \delta\vec{r}$$

**Stability criterion:** Calculate eigenvalues $\lambda_1, \lambda_2$ of Jacobian $\mathbf{J}$

- **Stable** (attractor): both $\lambda_i < 0$ (saddle point in electrostatics)
- **Unstable** (repellor): both $\lambda_i > 0$
- **Saddle point**: $\lambda_1 < 0 < \lambda_2$ (typical for point charge equilibrium)

**For electrostatic equilibrium:** All equilibrium points in 2D are unstable saddle points (consequence of Laplace's equation $\nabla^2 \phi = 0$ in charge-free regions).

---

## 6. Comparison with two-charge systems

### Case A: Two equal positive charges at $(\pm a, 0)$

**Charges:** $q_1 = q_2 = +q$ at $(-a, 0)$ and $(+a, 0)$

**Symmetry:** Field is symmetric about both axes

$$E_x(0, y) = 0$$

$$E_y(x, 0) = 0 \quad \text{for all } x$$

**Equilibrium point:** $(0, 0)$ (on the line connecting charges)

$$\vec{E}(0, 0) = 0$$

**Field along $y$-axis:**

$$\vec{E}(0, y) = 2k \frac{q}{(a^2 + y^2)^{3/2}} (-y\hat{y})$$

Direction: toward the plane containing the charges for any $y \neq 0$.

### Case B: Two opposite charges at $(\pm a, 0)$

**Charges:** $q_1 = +q$ at $(-a, 0)$, $q_2 = -q$ at $(+a, 0)$ (dipole configuration)

**Symmetry:** Field is antisymmetric about the midpoint

$$\vec{E}(-x, y) = -\vec{E}(x, -y)$$

**No equilibrium point** except at infinity

**Field along perpendicular bisector** $(0, y)$:

$$\vec{E}(0, y) = k\frac{2qa}{(a^2 + y^2)^{3/2}} \hat{x}$$

Field points from negative to positive charge.

---

## 7. HTML Visualization Structure

```html
<!DOCTYPE html>
<html>
<head>
    <title>2D Electric Field Map</title>
    <style>
        body { font-family: Arial; margin: 20px; }
        #canvas { border: 2px solid black; }
        .controls { margin: 20px 0; }
        .charge-control { margin: 10px; padding: 10px; border: 1px solid gray; }
        input { margin: 5px; }
        button { padding: 8px 15px; margin: 5px; }
    </style>
</head>
<body>
    <h1>2D Electric Field Map</h1>
    
    <div class="controls">
        <h3>Charge Configuration</h3>
        
        <div class="charge-control">
            <label>Charge 1:</label><br>
            x: <input type="number" id="q1x" value="-0.5" step="0.1"> m
            y: <input type="number" id="q1y" value="0" step="0.1"> m
            q: <input type="number" id="q1" value="2" step="0.1"> μC
            <span id="q1-color" style="display: inline-block; width: 20px; height: 20px; background: red; margin-left: 10px;"></span>
        </div>
        
        <div class="charge-control">
            <label>Charge 2:</label><br>
            x: <input type="number" id="q2x" value="0.5" step="0.1"> m
            y: <input type="number" id="q2y" value="0" step="0.1"> m
            q: <input type="number" id="q2" value="-1" step="0.1"> μC
            <span id="q2-color" style="display: inline-block; width: 20px; height: 20px; background: blue; margin-left: 10px;"></span>
        </div>
        
        <div class="charge-control">
            <label>Charge 3:</label><br>
            x: <input type="number" id="q3x" value="0" step="0.1"> m
            y: <input type="number" id="q3y" value="0.8" step="0.1"> m
            q: <input type="number" id="q3" value="1" step="0.1"> μC
            <span id="q3-color" style="display: inline-block; width: 20px; height: 20px; background: green; margin-left: 10px;"></span>
        </div>
        
        <button onclick="updateField()">Update Field</button>
        <button onclick="findEquilibrium()">Find Equilibrium Points</button>
        <button onclick="resetDefaults()">Reset to Defaults</button>
    </div>
    
    <canvas id="fieldCanvas" width="800" height="800"></canvas>
    
    <div id="info">
        <p><strong>Equilibrium points found:</strong> <span id="equilibria-count">0</span></p>
        <div id="equilibria-list"></div>
    </div>
    
    <script src="field_map.js"></script>
</body>
</html>