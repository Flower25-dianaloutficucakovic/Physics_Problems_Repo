# Problem 7 – Work of a Force Along a Trajectory

## Given

Force field:

$$
\vec{F}(x, y) = (y,\ 2x)
$$

Parametric trajectory:

$$
x(t) = t, \qquad y(t) = t^2, \qquad t \in [0, 1]
$$

---

## Step 1 – Velocity Vector

Differentiate the trajectory with respect to $t$:

$$
\vec{v}(t) = \frac{d\vec{r}}{dt} = \left(\frac{dx}{dt},\ \frac{dy}{dt}\right) = (1,\ 2t)
$$

The differential displacement vector is:

$$
d\vec{r} = \vec{v}(t)\, dt = (1,\ 2t)\, dt
$$

---

## Step 2 – Express the Force Along the Trajectory

Substitute the parametric equations $x = t$, $y = t^2$ into $\vec{F}$:

$$
\vec{F}(x(t),\, y(t)) = \bigl(y(t),\ 2x(t)\bigr) = \bigl(t^2,\ 2t\bigr)
$$

---

## Step 3 – Line Integral for Work

The work is defined as:

$$
W = \int_C \vec{F} \cdot d\vec{r} = \int_0^1 \vec{F}(x(t), y(t)) \cdot \vec{v}(t)\, dt
$$

Compute the dot product:

$$
\vec{F} \cdot \vec{v} = (t^2,\ 2t) \cdot (1,\ 2t) = t^2 \cdot 1 + 2t \cdot 2t = t^2 + 4t^2 = 5t^2
$$

Therefore:

$$
W = \int_0^1 5t^2\, dt
$$

---

## Step 4 – Analytical Calculation

$$
W = 5 \int_0^1 t^2\, dt = 5 \left[\frac{t^3}{3}\right]_0^1 = 5 \cdot \frac{1}{3} = \frac{5}{3}
$$

$$
\boxed{W = \frac{5}{3} \approx 1.6\overline{6}}
$$

---

## Step 5 – Riemann Sum (Numerical Verification)

The integral can be approximated by the Riemann sum with $N$ subintervals of equal width $\Delta t = \frac{1}{N}$:

$$
W \approx \sum_{i=0}^{N-1} \vec{F}(x(t_i),\, y(t_i)) \cdot \vec{v}(t_i)\, \Delta t = \sum_{i=0}^{N-1} 5t_i^2\, \Delta t, \qquad t_i = i \cdot \Delta t
$$

As $N \to \infty$, this sum converges to the analytical result $W = \dfrac{5}{3}$.

---

## HTML/JS Numerical Calculator

Save the block below as `task_07.html` and open in a browser:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Problem 7 – Work Integral</title>
  <style>
    body { font-family: monospace; padding: 2rem; background: #1e1e2e; color: #cdd6f4; }
    h2 { color: #89b4fa; }
    input { width: 80px; padding: 4px; margin: 0 8px; }
    button { padding: 6px 16px; background: #89b4fa; border: none; color: #1e1e2e;
             font-weight: bold; cursor: pointer; border-radius: 4px; }
    table { border-collapse: collapse; margin-top: 1rem; }
    th, td { border: 1px solid #45475a; padding: 6px 14px; text-align: right; }
    th { background: #313244; color: #89b4fa; }
    .highlight { color: #a6e3a1; font-weight: bold; }
  </style>
</head>
<body>
  <h2>Problem 7 – Work of F = (y, 2x) along y = x²</h2>
  <p>Analytical result: W = <strong>5/3 ≈ 1.66667</strong></p>
  <label>N (divisions): <input id="nInput" type="number" value="10" min="1" max="100000"></label>
  <button onclick="compute()">Compute</button>

  <table id="results">
    <thead><tr><th>N</th><th>Numerical W</th><th>Error |W - 5/3|</th></tr></thead>
    <tbody></tbody>
  </table>

  <script>
    const exact = 5 / 3;

    function riemannWork(N) {
      const dt = 1 / N;
      let sum = 0;
      for (let i = 0; i < N; i++) {
        const t = i * dt;          // left endpoint
        // F(x(t), y(t)) = (t^2, 2t),  v(t) = (1, 2t)
        // F · v = t^2*1 + 2t*2t = t^2 + 4t^2 = 5t^2
        sum += 5 * t * t * dt;
      }
      return sum;
    }

    function compute() {
      const N0 = parseInt(document.getElementById('nInput').value);
      const tbody = document.querySelector('#results tbody');
      tbody.innerHTML = '';

      const ns = [1, 2, 5, 10, 50, 100, 500, N0].filter((v, i, a) => a.indexOf(v) === i).sort((a,b)=>a-b);
      for (const N of ns) {
        const W = riemannWork(N);
        const err = Math.abs(W - exact);
        const row = `<tr>
          <td>${N}</td>
          <td class="highlight">${W.toFixed(8)}</td>
          <td>${err.toExponential(3)}</td>
        </tr>`;
        tbody.innerHTML += row;
      }
    }
    compute();
  </script>
</body>
</html>
```

---

## Summary

| Step | Result |
|------|--------|
| Velocity | $\vec{v}(t) = (1,\ 2t)$ |
| Force on trajectory | $\vec{F}(t) = (t^2,\ 2t)$ |
| Integrand $\vec{F} \cdot \vec{v}$ | $5t^2$ |
| Work $W$ | $\dfrac{5}{3}$ |

> **Physical interpretation:** The work $W = \frac{5}{3}$ J (assuming SI units) is the total energy transferred by the force $\vec{F}$ to a particle moving along the parabola $y = x^2$ from $(0,0)$ to $(1,1)$. Since $W > 0$, the force acts in the general direction of motion along this path.