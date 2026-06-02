# Step-by-step solutions to `kol_1_en.md`

## Question 1

Given:

$$
\vec r(t)=\bigl(2t^2-t,\ t^3-3t\bigr)
$$

We are looking for the acceleration, so we differentiate the trajectory twice.

First, the velocity:

$$
\vec v(t)=\vec r\,'(t)=\bigl(4t-1,\ 3t^2-3\bigr)
$$

Now the acceleration:

$$
\vec a(t)=\vec v\,'(t)=\bigl(4,\ 6t\bigr)
$$

At time $t=2$:

$$
\vec a(2)=\bigl(4,\ 12\bigr)
$$

Therefore the correct answer is `B`.

## Question 2

Given:

$$
\vec v(t)=\bigl(3t^2,\ 2t\bigr), \qquad \vec r(0)=(0,0)
$$

To find the position, we integrate the velocity.

For the first coordinate:

$$
x'(t)=3t^2
$$

$$
x(t)=\int 3t^2\,dt=t^3+C_1
$$

Using $x(0)=0$, we get $C_1=0$, so

$$
x(t)=t^3
$$

For the second coordinate:

$$
y'(t)=2t
$$

$$
y(t)=\int 2t\,dt=t^2+C_2
$$

Using $y(0)=0$, we get $C_2=0$, so

$$
y(t)=t^2
$$

Hence:

$$
\vec r(t)=\bigl(t^3,\ t^2\bigr)
$$

At time $t=2$:

$$
\vec r(2)=\bigl(8,\ 4\bigr)
$$

Therefore the correct answer is `A`.

## Question 3

Given:

$$
\vec a(t)=\bigl(6t,\ -4\bigr), \qquad \vec v(0)=(0,0)
$$

To find the velocity, we integrate the acceleration.

First coordinate:

$$
v_x'(t)=6t
$$

$$
v_x(t)=\int 6t\,dt=3t^2+C_1
$$

Using $v_x(0)=0$, we get $C_1=0$, so

$$
v_x(t)=3t^2
$$

Second coordinate:

$$
v_y'(t)=-4
$$

$$
v_y(t)=\int (-4)\,dt=-4t+C_2
$$

Using $v_y(0)=0$, we get $C_2=0$, so

$$
v_y(t)=-4t
$$

Hence:

$$
\vec v(t)=\bigl(3t^2,\ -4t\bigr)
$$

At time $t=2$:

$$
\vec v(2)=\bigl(12,\ -8\bigr)
$$

Therefore the correct answer is `A`.

## Question 4

Given:

$$
\vec r(t)=\bigl(t^3-2t,\ 2t^2+t\bigr), \qquad m=2
$$

First, compute the acceleration.

Velocity:

$$
\vec v(t)=\bigl(3t^2-2,\ 4t+1\bigr)
$$

Acceleration:

$$
\vec a(t)=\bigl(6t,\ 4\bigr)
$$

At time $t=4$:

$$
\vec a(4)=\bigl(24,\ 4\bigr)
$$

Using Newton's second law:

$$
\vec F=m\vec a
$$

so

$$
\vec F(4)=2\cdot(24,4)=(48,8)
$$

Therefore the correct answer is `A`.

## Question 5

Given:

$$
x(t)=t^2, \qquad t\in[0,1]
$$

$$
F(x)=2x
$$

The work done by the force is

$$
W=\int F\,dx
$$

Since the force depends on position, it is easiest to integrate with respect to $x$.

At $t=0$:

$$
x(0)=0
$$

At $t=1$:

$$
x(1)=1
$$

Therefore:

$$
W=\int_0^1 2x\,dx=\left[x^2\right]_0^1=1
$$

We can also compute it using time:

$$
W=\int_0^1 F(x(t))\,x'(t)\,dt
$$

$$
=\int_0^1 2t^2\cdot 2t\,dt=\int_0^1 4t^3\,dt=\left[t^4\right]_0^1=1
$$

Therefore the correct answer is `C`.

## Question 6

Given:

$$
\vec r(t)=\bigl(\cos(t^2),\ \sin(t^2)\bigr)
$$

with the assumption $t\ge 0$.

First, check the path of motion.

Let

$$
x=\cos(t^2), \qquad y=\sin(t^2)
$$

Then

$$
x^2+y^2=\cos^2(t^2)+\sin^2(t^2)=1
$$

So the point moves along the unit circle.

Now compute the velocity:

$$
\vec v(t)=\bigl(-2t\sin(t^2),\ 2t\cos(t^2)\bigr)
$$

Its magnitude is

$$
|\vec v(t)|=\sqrt{(-2t\sin(t^2))^2+(2t\cos(t^2))^2}
$$

$$
=\sqrt{4t^2\sin^2(t^2)+4t^2\cos^2(t^2)}
$$

$$
=\sqrt{4t^2(\sin^2(t^2)+\cos^2(t^2))}=\sqrt{4t^2}=2|t|
$$

Since $t\ge 0$, we get

$$
|\vec v(t)|=2t
$$

So the speed increases linearly with time.

Therefore the correct answer is `B`.

## Question 7

The ball is dropped from the height of the 4th floor, and one floor is $3\ \text{m}$ high.

Initial height:

$$
h_0=4\cdot 3=12\ \text{m}
$$

After each bounce, the ball loses $\frac14$ of its energy, so it keeps

$$
\frac34
$$

of the previous energy.

At the maximum height, all energy is potential energy:

$$
E=mgh
$$

Therefore the maximum height is also multiplied by $\frac34$ after each bounce.

After the first bounce:

$$
h_1=12\cdot\frac34
$$

After the second bounce:

$$
h_2=12\cdot\left(\frac34\right)^2
$$

After the third bounce:

$$
h_3=12\cdot\left(\frac34\right)^3
$$

Therefore the correct answer is `B`.

## Question 8

Given:

- initial maximum displacement: $A$
- at each passage through equilibrium, the energy decreases by $\frac14$
- we are looking for the maximum displacement reached immediately after the second passage through equilibrium

This means that after each such passage, the remaining energy is

$$
\frac34
$$

of what it was before that passage.

After two passages through equilibrium:

$$
E_2=E_0\left(\frac34\right)^2
$$

For a harmonic oscillator, energy is proportional to the square of the amplitude:

$$
E\propto A^2
$$

Therefore

$$
\frac{E_2}{E_0}=\frac{A_2^2}{A^2}
$$

Substitute:

$$
\frac{A_2^2}{A^2}=\left(\frac34\right)^2
$$

Taking the square root:

$$
\frac{A_2}{A}=\frac34
$$

so

$$
A_2=\frac34 A
$$

Therefore the correct answer is `C`.

## Question 9

Given:

$$
y(x,t)=2\sin(\pi x-4\pi t)
$$

Compare this with the standard wave form:

$$
y(x,t)=A\sin(kx-\omega t)
$$

So we read off:

$$
k=\pi, \qquad \omega=4\pi
$$

Wave speed:

$$
v=\frac{\omega}{k}=\frac{4\pi}{\pi}=4
$$

Now check the phase relation between $x=0$ and $x=2$.

The phase difference is

$$
\Delta\varphi=k\Delta x=\pi\cdot 2=2\pi
$$

A phase difference of $2\pi$ means the same phase.

We can also compute the wavelength:

$$
\lambda=\frac{2\pi}{k}=\frac{2\pi}{\pi}=2
$$

Points separated by one wavelength oscillate in the same phase, and here the separation is exactly $2$.

Therefore the correct answer is `A`.

## Question 10

Two oscillations have frequencies

$$
f_1=10\ \text{Hz}, \qquad f_2=12\ \text{Hz}
$$

The beat frequency is the absolute difference of the two frequencies:

$$
f_b=|f_2-f_1|
$$

Substitute:

$$
f_b=|12-10|=2\ \text{Hz}
$$

Therefore the correct answer is `B`.

## Answer Key

1. B
2. A
3. A
4. A
5. C
6. B
7. B
8. C
9. A
10. B
