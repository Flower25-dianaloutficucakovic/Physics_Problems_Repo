# Problem 5 – Superposition of waves, beats, and group velocity

## Given Waves

$$y_1(x,t) = A\sin(kx - \omega t)$$

$$y_2(x,t) = A\sin(kx - (\omega + \Delta\omega)t)$$

## Solution

### 1. Determine the resultant wave and reduce to product form

The superposition is:

$$y(x,t) = y_1(x,t) + y_2(x,t) = A\sin(kx - \omega t) + A\sin(kx - (\omega + \Delta\omega)t)$$

Using the sum-to-product formula:

$$\sin(\alpha) + \sin(\beta) = 2\sin\left(\frac{\alpha + \beta}{2}\right)\cos\left(\frac{\alpha - \beta}{2}\right)$$

Let:
$$\alpha = kx - \omega t$$
$$\beta = kx - (\omega + \Delta\omega)t$$

Then:
$$\frac{\alpha + \beta}{2} = kx - \omega t - \frac{\Delta\omega}{2}t = kx - \left(\omega + \frac{\Delta\omega}{2}\right)t$$

$$\frac{\alpha - \beta}{2} = \frac{\Delta\omega}{2}t$$

Therefore:

$$y(x,t) = 2A\sin\left(kx - \left(\omega + \frac{\Delta\omega}{2}\right)t\right)\cos\left(\frac{\Delta\omega}{2}t\right)$$

**Product form (Carrier × Envelope):**

$$y(x,t) = \underbrace{2A\cos\left(\frac{\Delta\omega}{2}t\right)}_{\text{Envelope}} \cdot \underbrace{\sin\left(kx - \left(\omega + \frac{\Delta\omega}{2}\right)t\right)}_{\text{Carrier wave}}$$

---

### 2. Identify the beat frequency and beat period at $x = 0$

At the point $x = 0$:

$$y(0,t) = 2A\cos\left(\frac{\Delta\omega}{2}t\right)\sin\left(-\left(\omega + \frac{\Delta\omega}{2}\right)t\right)$$

$$y(0,t) = -2A\cos\left(\frac{\Delta\omega}{2}t\right)\sin\left(\left(\omega + \frac{\Delta\omega}{2}\right)t\right)$$

The envelope modulates the amplitude:

$$\text{Envelope: } A_{\text{env}}(t) = 2A\left|\cos\left(\frac{\Delta\omega}{2}t\right)\right|$$

The envelope oscillates with angular frequency:

$$\omega_{\text{beat}} = \Delta\omega$$

**Beat frequency** (frequency of amplitude modulation):

$$f_{\text{beat}} = \frac{\Delta\omega}{2\pi}$$

**Beat period:**

$$T_{\text{beat}} = \frac{1}{f_{\text{beat}}} = \frac{2\pi}{\Delta\omega}$$

**Alternative form (using frequency difference):**

If $\omega_1 = \omega$ and $\omega_2 = \omega + \Delta\omega$, then:

$$f_{\text{beat}} = |f_2 - f_1| = \frac{\Delta\omega}{2\pi}$$

---

### 3. Physical interpretation

**Envelope** (slowly varying amplitude):

$$A_{\text{env}}(t) = 2A\left|\cos\left(\frac{\Delta\omega}{2}t\right)\right|$$

- Represents the **modulation of amplitude** over time
- Oscillates slowly if $\Delta\omega \ll \omega$
- Reaches maximum when both waves are **in phase**
- Reaches zero when waves are **in antiphase** (destructive interference)
- **Period:** $T_{\text{beat}} = \frac{2\pi}{\Delta\omega}$

**Carrier wave:**

$$\sin\left(kx - \left(\omega + \frac{\Delta\omega}{2}\right)t\right)$$

- Represents the **fast oscillation** of the disturbance
- Angular frequency: $\omega_{\text{carrier}} = \omega + \frac{\Delta\omega}{2}$ (average of the two)
- **Phase velocity** (carrier): $v_{\text{phase}} = \frac{\omega_{\text{carrier}}}{k} = \frac{\omega + \frac{\Delta\omega}{2}}{k}$

**Group velocity** (speed of the envelope/energy):

$$v_{\text{group}} = \frac{d\omega}{dk}$$

For these two waves:

$$v_{\text{group}} = \frac{\Delta\omega}{\Delta k}$$

Since both waves have the same $k$, we compute the limit:

$$v_{\text{group}} = \lim_{\Delta k \to 0} \frac{\Delta\omega}{\Delta k}$$

For a general dispersion relation $\omega(k)$:

$$v_{\text{group}} = \frac{d\omega}{dk}$$

**For non-dispersive waves** (like electromagnetic waves in vacuum):
$$v_{\text{phase}} = v_{\text{group}} = v$$

**For dispersive waves** (like water waves, light in media):
$$v_{\text{phase}} \neq v_{\text{group}}$$

---

### 4. Python/HTML/JS visualization of beats and superposition

#### HTML + JavaScript Implementation

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wave Superposition and Beats</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f5f5f5;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .controls {
            margin: 20px 0;
            padding: 15px;
            background: #f9f9f9;
            border-left: 4px solid #2196F3;
        }
        .control-group {
            margin: 10px 0;
        }
        label {
            display: inline-block;
            width: 150px;
            font-weight: bold;
        }
        input[type="range"] {
            width: 200px;
        }
        .value-display {
            display: inline-block;
            min-width: 100px;
            background: #e3f2fd;
            padding: 5px 10px;
            border-radius: 4px;
            margin-left: 10px;
        }
        canvas {
            border: 1px solid #ddd;
            margin: 20px 0;
            display: block;
            background: white;
        }
        .info {
            background: #e8f5e9;
            padding: 15px;
            border-left: 4px solid #4CAF50;
            margin: 20px 0;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Wave Superposition: Beats and Group Velocity</h1>
        
        <div class="controls">
            <div class="control-group">
                <label for="amplitude">Amplitude A:</label>
                <input type="range" id="amplitude" min="0.1" max="2" step="0.1" value="1">
                <span class="value-display" id="ampValue">1.0</span> m
            </div>
            
            <div class="control-group">
                <label for="k">Wavenumber k:</label>
                <input type="range" id="k" min="0.5" max="5" step="0.5" value="2">
                <span class="value-display" id="kValue">2.0</span> rad/m
            </div>
            
            <div class="control-group">
                <label for="omega">Angular frequency ω:</label>
                <input type="range" id="omega" min="2" max="20" step="1" value="10">
                <span class="value-display" id="omegaValue">10.0</span> rad/s
            </div>
            
            <div class="control-group">
                <label for="deltaOmega">Frequency difference Δω:</label>
                <input type="range" id="deltaOmega" min="0.1" max="4" step="0.1" value="1">
                <span class="value-display" id="deltaOmegaValue">1.0</span> rad/s
            </div>
            
            <div class="control-group">
                <label for="time">Time t:</label>
                <input type="range" id="time" min="0" max="20" step="0.1" value="0">
                <span class="value-display" id="timeValue">0.0</span> s
            </div>
        </div>

        <div class="info">
            <strong>Beat Frequency:</strong> <span id="beatInfo"></span><br>
            <strong>Beat Period:</strong> <span id="beatPeriodInfo"></span><br>
            <strong>Phase Velocity:</strong> <span id="phaseVelInfo"></span><br>
            <strong>Group Velocity:</strong> <span id="groupVelInfo"></span>
        </div>

        <h2>Wave 1: y₁(x,t) = A sin(kx - ωt)</h2>
        <canvas id="canvas1" width="1000" height="200"></canvas>

        <h2>Wave 2: y₂(x,t) = A sin(kx - (ω + Δω)t)</h2>
        <canvas id="canvas2" width="1000" height="200"></canvas>

        <h2>Superposition: y(x,t) = y₁ + y₂ (Carrier × Envelope)</h2>
        <canvas id="canvas3" width="1000" height="200"></canvas>

        <h2>Envelope: A_env(t) = 2A|cos(Δω·t/2)| at x=0</h2>
        <canvas id="canvas4" width="1000" height="200"></canvas>

        <h2>Phase Space at x=0: Amplitude vs Time</h2>
        <canvas id="canvas5" width="1000" height="200"></canvas>
    </div>

    <script>
        function updateValues() {
            const A = parseFloat(document.getElementById('amplitude').value);
            const k = parseFloat(document.getElementById('k').value);
            const omega = parseFloat(document.getElementById('omega').value);
            const deltaOmega = parseFloat(document.getElementById('deltaOmega').value);
            const t = parseFloat(document.getElementById('time').value);

            // Update display values
            document.getElementById('ampValue').textContent = A.toFixed(2);
            document.getElementById('kValue').textContent = k.toFixed(2);
            document.getElementById('omegaValue').textContent = omega.toFixed(2);
            document.getElementById('deltaOmegaValue').textContent = deltaOmega.toFixed(2);
            document.getElementById('timeValue').textContent = t.toFixed(2);

            // Calculate derived quantities
            const beatFreq = deltaOmega / (2 * Math.PI);
            const beatPeriod = 2 * Math.PI / deltaOmega;
            const phaseVel = omega / k;
            const groupVel = deltaOmega;

            document.getElementById('beatInfo').textContent = `f_beat = ${beatFreq.toFixed(4)} Hz (ω_beat = ${deltaOmega.toFixed(2)} rad/s)`;
            document.getElementById('beatPeriodInfo').textContent = `T_beat = ${beatPeriod.toFixed(4)} s`;
            document.getElementById('phaseVelInfo').textContent = `v_phase = ω/k = ${phaseVel.toFixed(4)} m/s`;
            document.getElementById('groupVelInfo').textContent = `v_group ≈ Δω/Δk → ${groupVel.toFixed(4)} m/s (envelope speed)`;

            // Draw waves
            drawWave1(A, k, omega, t);
            drawWave2(A, k, omega, deltaOmega, t);
            drawSuperposition(A, k, omega, deltaOmega, t);
            drawEnvelope(A, deltaOmega, t);
            drawPhaseSpace(A, deltaOmega);
        }

        function drawWave1(A, k, omega, t) {
            const canvas = document.getElementById('canvas1');
            const ctx = canvas.getContext('2d');
            const width = canvas.width;
            const height = canvas.height;
            const centerY = height / 2;
            const scale = 30;

            ctx.clearRect(0, 0, width, height);
            ctx.strokeStyle = '#2196F3';
            ctx.lineWidth = 2;
            ctx.beginPath();

            for (let px = 0; px < width; px++) {
                const x = px / scale;
                const y = A * Math.sin(k * x - omega * t);
                const py = centerY - y * scale;
                if (px === 0) ctx.moveTo(px, py);
                else ctx.lineTo(px, py);
            }
            ctx.stroke();

            // Grid and axes
            ctx.strokeStyle = '#e0e0e0';
            ctx.lineWidth = 1;
            ctx.beginPath();
            ctx.moveTo(0, centerY);
            ctx.lineTo(width, centerY);
            ctx.stroke();

            ctx.fillStyle = '#666';
            ctx.font = '12px Arial';
            ctx.textAlign = 'left';
            ctx.fillText('y₁(x,t)', 10, 20);
        }

        function drawWave2(A, k, omega, deltaOmega, t) {
            const canvas = document.getElementById('canvas2');
            const ctx = canvas.getContext('2d');
            const width = canvas.width;
            const height = canvas.height;
            const centerY = height / 2;
            const scale = 30;

            ctx.clearRect(0, 0, width, height);
            ctx.strokeStyle = '#FF5722';
            ctx.lineWidth = 2;
            ctx.beginPath();

            for (let px = 0; px < width; px++) {
                const x = px / scale;
                const y = A * Math.sin(k * x - (omega + deltaOmega) * t);
                const py = centerY - y * scale;
                if (px === 0) ctx.moveTo(px, py);
                else ctx.lineTo(px, py);
            }
            ctx.stroke();

            ctx.strokeStyle = '#e0e0e0';
            ctx.lineWidth = 1;
            ctx.beginPath();
            ctx.moveTo(0, centerY);
            ctx.lineTo(width, centerY);
            ctx.stroke();

            ctx.fillStyle = '#666';
            ctx.font = '12px Arial';
            ctx.textAlign = 'left';
            ctx.fillText('y₂(x,t) = A sin(kx - (ω + Δω)t)', 10, 20);
        }

        function drawSuperposition(A, k, omega, deltaOmega, t) {
            const canvas = document.getElementById('canvas3');
            const ctx = canvas.getContext('2d');
            const width = canvas.width;
            const height = canvas.height;
            const centerY = height / 2;
            const scale = 30;

            ctx.clearRect(0, 0, width, height);

            // Draw envelope
            ctx.strokeStyle = '#4CAF50';
            ctx.lineWidth = 3;
            ctx.beginPath();
            for (let px = 0; px < width; px++) {
                const x = px / scale;
                const envelope = 2 * A * Math.abs(Math.cos(deltaOmega * t / 2));
                const py = centerY - envelope * scale;
                if (px === 0) ctx.moveTo(px, py);
                else ctx.lineTo(px, py);
            }
            ctx.stroke();

            // Draw -envelope
            ctx.beginPath();
            for (let px = 0; px < width; px++) {
                const x = px / scale;
                const envelope = 2 * A * Math.abs(Math.cos(deltaOmega * t / 2));
                const py = centerY + envelope * scale;
                if (px === 0) ctx.moveTo(px, py);
                else ctx.lineTo(px, py);
            }
            ctx.stroke();

            // Draw superposition (carrier)
            ctx.strokeStyle = '#9C27B0';
            ctx.lineWidth = 2;
            ctx.beginPath();
            for (let px = 0; px < width; px++) {
                const x = px / scale;
                const y1 = A * Math.sin(k * x - omega * t);
                const y2 = A * Math.sin(k * x - (omega + deltaOmega) * t);
                const y = y1 + y2;
                const py = centerY - y * scale;
                if (px === 0) ctx.moveTo(px, py);
                else ctx.lineTo(px, py);
            }
            ctx.stroke();

            ctx.strokeStyle = '#e0e0e0';
            ctx.lineWidth = 1;
            ctx.beginPath();
            ctx.moveTo(0, centerY);
            ctx.lineTo(width, centerY);
            ctx.stroke();

            ctx.fillStyle = '#666';
            ctx.font = '12px Arial';
            ctx.textAlign = 'left';
            ctx.fillText('y(x,t) = y₁ + y₂ (purple), Envelope (green)', 10, 20);
        }

        function drawEnvelope(A, deltaOmega, t) {
            const canvas = document.getElementById('canvas4');
            const ctx = canvas.getContext('2d');
            const width = canvas.width;
            const height = canvas.height;
            const centerY = height / 2;
            const scale = 80;

            ctx.clearRect(0, 0, width, height);
            ctx.strokeStyle = '#4CAF50';
            ctx.lineWidth = 2;
            ctx.beginPath();

            for (let px = 0; px < width; px++) {
                const time = (px / width) * 20;
                const envelope = 2 * A * Math.abs(Math.cos(deltaOmega * time / 2));
                const py = centerY - envelope * scale;
                if (px === 0) ctx.moveTo(px, py);
                else ctx.lineTo(px, py);
            }
            ctx.stroke();

            // Mark current time
            const currentPx = (t / 20) * width;
            ctx.fillStyle = '#FF5722';
            ctx.beginPath();
            ctx.arc(currentPx, centerY - 2 * A * Math.abs(Math.cos(deltaOmega * t / 2)) * scale, 5, 0, 2 * Math.PI);
            ctx.fill();

            ctx.strokeStyle = '#e0e0e0';
            ctx.lineWidth = 1;
            ctx.beginPath();
            ctx.moveTo(0, centerY);
            ctx.lineTo(width, centerY);
            ctx.stroke();

            ctx.fillStyle = '#666';
            ctx.font = '12px Arial';
            ctx.textAlign = 'left';
            ctx.fillText('Envelope A_env(t) = 2A|cos(Δω·t/2)| at x=0 (red dot = current time)', 10, 20);
        }

        function drawPhaseSpace(A, deltaOmega) {
            const canvas = document.getElementById('canvas5');
            const ctx = canvas.getContext('2d');
            const width = canvas.width;
            const height = canvas.height;
            const centerY = height / 2;
            const scale = 80;

            ctx.clearRect(0, 0, width, height);
            ctx.strokeStyle = '#FF9800';
            ctx.lineWidth = 2;
            ctx.beginPath();

            for (let px = 0; px < width; px++) {
                const time = (px / width) * 20;
                const amplitude = 2 * A * Math.abs(Math.cos(deltaOmega * time / 2));
                const py = centerY - amplitude * scale;
                if (px === 0) ctx.moveTo(px, py);
                else ctx.lineTo(px, py);
            }
            ctx.stroke();

            ctx.strokeStyle = '#e0e0e0';
            ctx.lineWidth = 1;
            ctx.beginPath();
            ctx.moveTo(0, centerY);
            ctx.lineTo(width, centerY);
            ctx.stroke();

            ctx.fillStyle = '#666';
            ctx.font = '12px Arial';
            ctx.textAlign = 'left';
            ctx.fillText('Amplitude Modulation: |y(0,t)| = 2A|cos(Δω·t/2)|', 10, 20);
        }

        // Event listeners
        document.getElementById('amplitude').addEventListener('input', updateValues);
        document.getElementById('k').addEventListener('input', updateValues);
        document.getElementById('omega').addEventListener('input', updateValues);
        document.getElementById('deltaOmega').addEventListener('input', updateValues);
        document.getElementById('time').addEventListener('input', updateValues);

        // Initial draw
        updateValues();
    </script>
</body>
</html>