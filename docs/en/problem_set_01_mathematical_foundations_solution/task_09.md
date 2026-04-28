# Problem 9 – Harmonic Oscillator

## Equation of Motion

The equation to solve is:

$$
\frac{d^2 x}{dt^2} + \omega^2 x = 0
$$

---

## Part 1 – General Solution

We look for solutions of the form $x(t) = e^{\lambda t}$.

Substituting into the equation:

$$
\lambda^2 e^{\lambda t} + \omega^2 e^{\lambda t} = 0
\implies \lambda^2 + \omega^2 = 0
\implies \lambda = \pm i\omega
$$

Two independent complex solutions are $e^{i\omega t}$ and $e^{-i\omega t}$.

Using Euler's formula $e^{i\omega t} = \cos(\omega t) + i\sin(\omega t)$, we take the real and imaginary parts to obtain two real independent solutions:

$$
x_1(t) = \cos(\omega t), \qquad x_2(t) = \sin(\omega t)
$$

**General solution** (linear combination):

$$
\boxed{x(t) = C_1 \cos(\omega t) + C_2 \sin(\omega t)}
$$

where $C_1, C_2 \in \mathbb{R}$ are constants determined by initial conditions.

**Equivalent amplitude-phase form:**

$$
x(t) = A \cos(\omega t + \varphi)
$$

where $A = \sqrt{C_1^2 + C_2^2}$ is the amplitude and $\varphi = \arctan\!\left(-\dfrac{C_2}{C_1}\right)$ is the initial phase.

---

## Part 2 – Solution for Given Initial Conditions

Let the initial conditions be:

$$
x(0) = x_0, \qquad \dot{x}(0) = v_0
$$

**Step 1.** Apply $x(0) = x_0$:

$$
x(0) = C_1 \cos(0) + C_2 \sin(0) = C_1 = x_0
\implies C_1 = x_0
$$

**Step 2.** Differentiate the general solution:

$$
\dot{x}(t) = -C_1 \omega \sin(\omega t) + C_2 \omega \cos(\omega t)
$$

**Step 3.** Apply $\dot{x}(0) = v_0$:

$$
\dot{x}(0) = -C_1 \omega \cdot 0 + C_2 \omega \cdot 1 = C_2 \omega = v_0
\implies C_2 = \frac{v_0}{\omega}
$$

**Particular solution:**

$$
\boxed{x(t) = x_0 \cos(\omega t) + \frac{v_0}{\omega} \sin(\omega t)}
$$

**First and second derivatives:**

$$
\dot{x}(t) = -x_0\,\omega \sin(\omega t) + v_0 \cos(\omega t)
$$

$$
\ddot{x}(t) = -x_0\,\omega^2 \cos(\omega t) - v_0\,\omega \sin(\omega t) = -\omega^2 x(t)
$$

This confirms $\ddot{x} + \omega^2 x = 0$. ✓

**Amplitude of oscillation:**

$$
A = \sqrt{x_0^2 + \frac{v_0^2}{\omega^2}}
$$

---

## Part 3 – Visualization (HTML/JS Application)

The interactive application below lets you set $\omega$, $x_0$, $v_0$ and plots $x(t)$, $\dot{x}(t)$, $\ddot{x}(t)$.

> Save the code below as `oscillator.html` and open in a browser.

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Harmonic Oscillator</title>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <style>
    body { font-family: Arial, sans-serif; max-width: 900px; margin: 40px auto; padding: 0 20px; }
    .controls { display: flex; gap: 20px; flex-wrap: wrap; margin-bottom: 20px; }
    label { display: flex; flex-direction: column; font-size: 14px; }
    input[type=range] { width: 180px; }
    canvas { width: 100% !important; }
  </style>
</head>
<body>
  <h2>Harmonic Oscillator: d²x/dt² + ω²x = 0</h2>
  <div class="controls">
    <label>ω = <span id="omegaVal">1.0</span>
      <input type="range" id="omega" min="0.1" max="5" step="0.1" value="1.0">
    </label>
    <label>x(0) = <span id="x0Val">1.0</span>
      <input type="range" id="x0" min="-3" max="3" step="0.1" value="1.0">
    </label>
    <label>ẋ(0) = <span id="v0Val">0.0</span>
      <input type="range" id="v0" min="-5" max="5" step="0.1" value="0.0">
    </label>
  </div>
  <canvas id="chart"></canvas>

  <script>
    const N = 500, T = 4 * Math.PI;
    const ts = Array.from({length: N}, (_, i) => i * T / (N - 1));

    function getData() {
      const w  = +document.getElementById('omega').value;
      const x0 = +document.getElementById('x0').value;
      const v0 = +document.getElementById('v0').value;
      return {
        x:   ts.map(t =>  x0 * Math.cos(w*t) + (v0/w) * Math.sin(w*t)),
        dx:  ts.map(t => -x0 * w * Math.sin(w*t) + v0 * Math.cos(w*t)),
        ddx: ts.map(t => -x0 * w*w * Math.cos(w*t) - v0*w * Math.sin(w*t))
      };
    }

    const ctx = document.getElementById('chart').getContext('2d');
    const chart = new Chart(ctx, {
      type: 'line',
      data: {
        labels: ts.map(t => t.toFixed(2)),
        datasets: [
          { label: 'x(t)', borderColor: '#2196F3', data: [], pointRadius: 0, borderWidth: 2 },
          { label: 'ẋ(t)', borderColor: '#4CAF50', data: [], pointRadius: 0, borderWidth: 2 },
          { label: 'ẍ(t)', borderColor: '#F44336', data: [], pointRadius: 0, borderWidth: 2, borderDash: [5,3] }
        ]
      },
      options: {
        animation: false,
        plugins: { legend: { position: 'top' } },
        scales: { x: { ticks: { maxTicksLimit: 10 } } }
      }
    });

    function update() {
      const { x, dx, ddx } = getData();
      chart.data.datasets[0].data = x;
      chart.data.datasets[1].data = dx;
      chart.data.datasets[2].data = ddx;
      chart.update();
      document.getElementById('omegaVal').textContent = document.getElementById('omega').value;
      document.getElementById('x0Val').textContent   = document.getElementById('x0').value;
      document.getElementById('v0Val').textContent   = document.getElementById('v0').value;
    }

    ['omega','x0','v0'].forEach(id => document.getElementById(id).addEventListener('input', update));
    update();
  </script>
</body>
</html>
```