# Problem 3 – Work of a variable force

## Given

One-dimensional force:

$$F(x) = -kx$$

## Solution

### 1. Equation of motion and solution

Newton's second law:

$$m\frac{d^2x}{dt^2} = -kx$$

Rearranging:

$$\frac{d^2x}{dt^2} + \frac{k}{m}x = 0$$

Let $\omega = \sqrt{\frac{k}{m}}$:

$$\frac{d^2x}{dt^2} + \omega^2 x = 0$$

**General solution:**

$$x(t) = A\cos(\omega t) + B\sin(\omega t)$$

Or equivalently:

$$x(t) = C\cos(\omega t + \phi)$$

where $A$, $B$, $C$, and $\phi$ are determined by initial conditions.

---

### 2. Work done during displacement from $0$ to $x_0$

Work is defined as:

$$W = \int_0^{x_0} F(x)\,dx$$

$$W = \int_0^{x_0} (-kx)\,dx$$

$$W = -k\int_0^{x_0} x\,dx$$

$$W = -k\left[\frac{x^2}{2}\right]_0^{x_0}$$

$$W = -k\frac{x_0^2}{2}$$

$$W = -\frac{1}{2}kx_0^2$$

---

### 3. Interpretation as potential energy

The potential energy is related to work by:

$$U(x) = -\int F(x)\,dx$$

Since $F(x) = -kx$:

$$U(x) = -\int (-kx)\,dx$$

$$U(x) = k\int x\,dx$$

$$U(x) = k\frac{x^2}{2} + C$$

Taking $U(0) = 0$ as reference:

$$U(x) = \frac{1}{2}kx^2$$

Notice that:

$$W = U(0) - U(x_0) = 0 - \frac{1}{2}kx_0^2 = -\frac{1}{2}kx_0^2$$

This confirms the work-energy relationship.

---

### 4. Verification of relationship $F = -\frac{dU}{dx}$

Given potential energy:

$$U(x) = \frac{1}{2}kx^2$$

Calculate the derivative:

$$\frac{dU}{dx} = \frac{d}{dx}\left(\frac{1}{2}kx^2\right) = kx$$

Therefore:

$$F(x) = -\frac{dU}{dx} = -kx$$ ✓

The relationship is verified.

---

### 5. Graphs of $F(x)$ and $U(x)$

**Force graph: $F(x) = -kx$**

- Linear relationship passing through the origin
- Negative slope: $-k$
- At $x > 0$: force is negative (restoring)
- At $x < 0$: force is positive (restoring)

**Potential energy graph: $U(x) = \frac{1}{2}kx^2$**

- Parabolic shape (quadratic)
- Minimum at $x = 0$: $U(0) = 0$
- Symmetric about the origin
- Always non-negative: $U(x) \geq 0$

**Key observations:**

1. The potential is minimum where the force is zero ($x = 0$)
2. The steeper the $U(x)$ curve, the larger the magnitude of $F(x)$
3. This is characteristic of a **harmonic oscillator** (Hooke's law)
4. The force always points toward the equilibrium position, making it a **conservative restoring force**

