# Problem 2 – Inclined plane with friction

## Given Data

- Mass of body: $m$
- Angle of incline: $\alpha$
- Coefficient of kinetic friction: $\mu$

## Solution

### 1. Determine all forces acting on the body

The forces acting on the body are:

1. **Gravitational force**: 
$$\vec F_g = m\vec g = (0, -mg)$$

2. **Normal force** (perpendicular to the plane):
$$N = mg\cos(\alpha)$$

3. **Friction force** (opposing motion, along the plane):
$$f = \mu N = \mu mg\cos(\alpha)$$

**Component analysis along and perpendicular to the plane:**

Along the plane (positive direction down the slope):
$$F_{\parallel} = mg\sin(\alpha) - \mu mg\cos(\alpha)$$

Perpendicular to the plane:
$$F_{\perp} = N - mg\cos(\alpha) = 0$$

---

### 2. Derive the acceleration $\vec a$

Using Newton's second law along the plane:

$$ma = mg\sin(\alpha) - \mu mg\cos(\alpha)$$

$$a = g(\sin(\alpha) - \mu\cos(\alpha))$$

**Vector form** (along the incline, positive downward):

$$\vec a = g(\sin(\alpha) - \mu\cos(\alpha))\hat{s}$$

where $\hat{s}$ is the unit vector along the slope.

**Condition for motion:**

For the body to slide down:
$$\sin(\alpha) > \mu\cos(\alpha)$$

$$\tan(\alpha) > \mu$$

---

### 3. Calculate the time of descent from height $h$

The distance along the plane is:
$$s = \frac{h}{\sin(\alpha)}$$

Using the kinematic equation with constant acceleration and initial velocity $v_0 = 0$:

$$s = \frac{1}{2}at^2$$

$$\frac{h}{\sin(\alpha)} = \frac{1}{2}g(\sin(\alpha) - \mu\cos(\alpha))t^2$$

Solving for time $t$:

$$t^2 = \frac{2h}{g\sin(\alpha)(\sin(\alpha) - \mu\cos(\alpha))}$$

$$t = \sqrt{\frac{2h}{g\sin(\alpha)(\sin(\alpha) - \mu\cos(\alpha))}}$$

**Simplified form:**

$$t = \sqrt{\frac{2h}{g(\sin^2(\alpha) - \mu\sin(\alpha)\cos(\alpha))}}$$

---

### 4. Determine the final velocity $\vec v$

Using the kinematic equation:
$$v^2 = v_0^2 + 2as$$

With $v_0 = 0$ and $s = \frac{h}{\sin(\alpha)}$:

$$v^2 = 2g(\sin(\alpha) - \mu\cos(\alpha))\cdot\frac{h}{\sin(\alpha)}$$

$$v^2 = \frac{2gh(\sin(\alpha) - \mu\cos(\alpha))}{\sin(\alpha)}$$

$$v = \sqrt{\frac{2gh(\sin(\alpha) - \mu\cos(\alpha))}{\sin(\alpha)}}$$

Or using $v = at$:

$$v = g(\sin(\alpha) - \mu\cos(\alpha))\sqrt{\frac{2h}{g\sin(\alpha)(\sin(\alpha) - \mu\cos(\alpha))}}$$

$$v = \sqrt{2gh(\sin(\alpha) - \mu\cos(\alpha))\cdot\frac{g}{sin(\alpha)}}$$

---

### 5. Check consistency with energy balance

**Energy approach:**

Initial energy: 
$$E_i = mgh + 0 = mgh$$

(gravitational potential energy, kinetic energy = 0)

Final energy:
$$E_f = 0 + \frac{1}{2}mv^2 = \frac{1}{2}mv^2$$

(potential energy = 0 at the bottom, kinetic energy at final velocity)

**Work done by friction:**

$$W_{\text{friction}} = -f \cdot s = -\mu mg\cos(\alpha) \cdot \frac{h}{\sin(\alpha)}$$

$$W_{\text{friction}} = -\mu mgh\frac{\cos(\alpha)}{\sin(\alpha)} = -\mu mgh\cot(\alpha)$$

**Energy balance (work-energy theorem):**

$$E_f = E_i + W_{\text{friction}}$$

$$\frac{1}{2}mv^2 = mgh - \mu mgh\cot(\alpha)$$

$$\frac{1}{2}v^2 = gh\left(1 - \mu\cot(\alpha)\right)$$

$$\frac{1}{2}v^2 = gh\left(1 - \mu\frac{\cos(\alpha)}{\sin(\alpha)}\right)$$

$$\frac{1}{2}v^2 = gh\left(\frac{\sin(\alpha) - \mu\cos(\alpha)}{\sin(\alpha)}\right)$$

$$v^2 = \frac{2gh(\sin(\alpha) - \mu\cos(\alpha))}{\sin(\alpha)}$$

$$v = \sqrt{\frac{2gh(\sin(\alpha) - \mu\cos(\alpha))}{\sin(\alpha)}}$$

**✓ This matches the result from kinematics!** The energy balance is consistent.

---

## Key Observations

1. **Without friction** ($\mu = 0$): 
$$v = \sqrt{2gh}$$ 
This is the result from free fall.

2. **Maximum friction** ($\mu = \tan(\alpha)$): 
$$a = 0$$ 
The body does not accelerate.

3. **Energy dissipation**: The work done by friction represents the mechanical energy converted to heat.

4. **Limiting cases confirm correctness**: Our formulas reduce to known results when friction or angle approach limiting values.

