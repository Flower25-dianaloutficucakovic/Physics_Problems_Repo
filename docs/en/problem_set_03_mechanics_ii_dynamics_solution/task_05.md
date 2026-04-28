# Problem 5 – Momentum and one-dimensional head-on collision

## Given Information

Two bodies with masses $m_1$ and $m_2$ move along a single straight line. The collision is elastic.

Initial velocities: $v_1$ (before collision), $v_2$ (before collision)

---

## Solution

### 1. Conservation of momentum

The total momentum before collision equals the total momentum after collision:

$$m_1 v_1 + m_2 v_2 = m_1 v_1' + m_2 v_2'$$

where $v_1'$ and $v_2'$ are the velocities after collision.

---

### 2. Conservation of kinetic energy (elastic collision)

The total kinetic energy is conserved in an elastic collision:

$$\frac{1}{2}m_1 v_1^2 + \frac{1}{2}m_2 v_2^2 = \frac{1}{2}m_1 v_1'^2 + \frac{1}{2}m_2 v_2'^2$$

Simplifying:

$$m_1 v_1^2 + m_2 v_2^2 = m_1 v_1'^2 + m_2 v_2'^2$$

---

### 3. Determining velocities after collision

From the two conservation laws, we can derive the final velocities.

**From momentum conservation:**

$$m_1 v_1 + m_2 v_2 = m_1 v_1' + m_2 v_2'$$

$$v_1' = v_1 + \frac{m_2}{m_1}(v_2 - v_2')$$

**From energy conservation:**

$$m_1(v_1^2 - v_1'^2) = m_2(v_2'^2 - v_2^2)$$

$$m_1(v_1 - v_1')(v_1 + v_1') = m_2(v_2' - v_2)(v_2' + v_2)$$

**General formulas for velocities after elastic collision:**

$$v_1' = \frac{(m_1 - m_2)v_1 + 2m_2 v_2}{m_1 + m_2}$$

$$v_2' = \frac{(m_2 - m_1)v_2 + 2m_1 v_1}{m_1 + m_2}$$

---

### 4. Special case: $m_1 = m_2$

When the masses are equal, let $m_1 = m_2 = m$:

$$v_1' = \frac{(m - m)v_1 + 2m v_2}{m + m} = \frac{2m v_2}{2m} = v_2$$

$$v_2' = \frac{(m - m)v_2 + 2m v_1}{m + m} = \frac{2m v_1}{2m} = v_1$$

**Result:** The velocities are exchanged. The bodies swap their velocities.

---

### 5. Limit case: $m_2 \gg m_1$

When the second body is much heavier than the first, let $m_2 \gg m_1$:

$$v_1' = \frac{(m_1 - m_2)v_1 + 2m_2 v_2}{m_1 + m_2} \approx \frac{-m_2 v_1 + 2m_2 v_2}{m_2} = -v_1 + 2v_2$$

$$v_2' = \frac{(m_2 - m_1)v_2 + 2m_1 v_1}{m_1 + m_2} \approx \frac{m_2 v_2 + 2m_1 v_1}{m_2} = v_2 + \frac{2m_1}{m_2}v_1 \approx v_2$$

**Result:** 
- The light body bounces back with velocity $v_1' \approx -v_1 + 2v_2$
- The heavy body continues essentially unaffected: $v_2' \approx v_2$

---

### 6. Physical Interpretation

| Scenario | Result | Interpretation |
|----------|--------|-----------------|
| **Equal masses** | $v_1' = v_2$, $v_2' = v_1$ | Complete exchange of motion; first body stops, second moves with initial velocity of first |
| **Heavy target** ($m_2 \gg m_1$) | $v_1' \approx -v_1 + 2v_2$ | Light body bounces back (reverses direction) |
| | $v_2' \approx v_2$ | Heavy body barely affected, continues at nearly same speed |
| **Light target** ($m_1 \gg m_2$) | $v_1' \approx v_1$ | Heavy body continues almost unaffected |
| | $v_2' \approx 2v_1 - v_2$ | Light body accelerates in direction of heavy body |

---

### 7. Verification Example

**Given:** $m_1 = 2$ kg, $m_2 = 3$ kg, $v_1 = 5$ m/s, $v_2 = 0$ m/s

$$v_1' = \frac{(2 - 3) \cdot 5 + 2 \cdot 3 \cdot 0}{2 + 3} = \frac{-5}{5} = -1 \text{ m/s}$$

$$v_2' = \frac{(3 - 2) \cdot 0 + 2 \cdot 2 \cdot 5}{2 + 3} = \frac{20}{5} = 4 \text{ m/s}$$

**Check momentum:**
- Before: $2(5) + 3(0) = 10$ kg·m/s
- After: $2(-1) + 3(4) = -2 + 12 = 10$ kg·m/s ✓

**Check energy:**
- Before: $\frac{1}{2}(2)(5^2) + \frac{1}{2}(3)(0^2) = 25$ J
- After: $\frac{1}{2}(2)(
