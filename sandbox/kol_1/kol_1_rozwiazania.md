# Rozwiązania krok po kroku do `kol_1.md`

## Pytanie 1

Dane:

$$
\vec r(t)=\bigl(2t^2-t,\ t^3-3t\bigr)
$$

Szukamy przyspieszenia, więc różniczkujemy trajektorię dwa razy.

Najpierw prędkość:

$$
\vec v(t)=\vec r\,'(t)=\bigl(4t-1,\ 3t^2-3\bigr)
$$

Teraz przyspieszenie:

$$
\vec a(t)=\vec v\,'(t)=\bigl(4,\ 6t\bigr)
$$

W chwili $t=2$:

$$
\vec a(2)=\bigl(4,\ 12\bigr)
$$

Wniosek:

$$
\vec a(2)=\bigl(4,12\bigr)
$$

Poprawna odpowiedź: `B`.

## Pytanie 2

Dane:

$$
\vec v(t)=\bigl(3t^2,\ 2t\bigr), \qquad \vec r(0)=(0,0)
$$

Aby znaleźć położenie, całkujemy prędkość.

Dla pierwszej współrzędnej:

$$
x'(t)=3t^2
$$

$$
x(t)=\int 3t^2\,dt=t^3+C_1
$$

Z warunku $x(0)=0$ dostajemy $C_1=0$, więc

$$
x(t)=t^3
$$

Dla drugiej współrzędnej:

$$
y'(t)=2t
$$

$$
y(t)=\int 2t\,dt=t^2+C_2
$$

Z warunku $y(0)=0$ dostajemy $C_2=0$, więc

$$
y(t)=t^2
$$

Zatem:

$$
\vec r(t)=\bigl(t^3,\ t^2\bigr)
$$

W chwili $t=2$:

$$
\vec r(2)=\bigl(8,\ 4\bigr)
$$

Poprawna odpowiedź: `A`.

## Pytanie 3

Dane:

$$
\vec a(t)=\bigl(6t,\ -4\bigr), \qquad \vec v(0)=(0,0)
$$

Aby znaleźć prędkość, całkujemy przyspieszenie.

Pierwsza współrzędna:

$$
v_x'(t)=6t
$$

$$
v_x(t)=\int 6t\,dt=3t^2+C_1
$$

Z warunku $v_x(0)=0$ dostajemy $C_1=0$, więc

$$
v_x(t)=3t^2
$$

Druga współrzędna:

$$
v_y'(t)=-4
$$

$$
v_y(t)=\int (-4)\,dt=-4t+C_2
$$

Z warunku $v_y(0)=0$ dostajemy $C_2=0$, więc

$$
v_y(t)=-4t
$$

Zatem:

$$
\vec v(t)=\bigl(3t^2,\ -4t\bigr)
$$

W chwili $t=2$:

$$
\vec v(2)=\bigl(12,\ -8\bigr)
$$

Poprawna odpowiedź: `A`.

## Pytanie 4

Dane:

$$
\vec r(t)=\bigl(t^3-2t,\ 2t^2+t\bigr), \qquad m=2
$$

Najpierw liczymy przyspieszenie.

Prędkość:

$$
\vec v(t)=\bigl(3t^2-2,\ 4t+1\bigr)
$$

Przyspieszenie:

$$
\vec a(t)=\bigl(6t,\ 4\bigr)
$$

W chwili $t=4$:

$$
\vec a(4)=\bigl(24,\ 4\bigr)
$$

Z II zasady Newtona:

$$
\vec F=m\vec a
$$

czyli

$$
\vec F(4)=2\cdot(24,4)=(48,8)
$$

Poprawna odpowiedź: `A`.

## Pytanie 5

Dane:

$$
x(t)=t^2, \qquad t\in[0,1]
$$

$$
F(x)=2x
$$

Pracę siły liczymy ze wzoru:

$$
W=\int F\,dx
$$

Ponieważ siła zależy od położenia, najwygodniej całkować po $x$.

Dla $t=0$ mamy:

$$
x(0)=0
$$

Dla $t=1$ mamy:

$$
x(1)=1
$$

Zatem:

$$
W=\int_0^1 2x\,dx=\left[x^2\right]_0^1=1
$$

Można też policzyć po czasie:

$$
W=\int_0^1 F(x(t))\,x'(t)\,dt
$$

$$
=\int_0^1 2t^2\cdot 2t\,dt=\int_0^1 4t^3\,dt=\left[t^4\right]_0^1=1
$$

Poprawna odpowiedź: `C`.

## Pytanie 6

Dane:

$$
\vec r(t)=\bigl(\cos(t^2),\ \sin(t^2)\bigr)
$$

przy założeniu $t\ge 0$.

Najpierw sprawdzamy tor ruchu.

Oznaczmy:

$$
x=\cos(t^2), \qquad y=\sin(t^2)
$$

Wtedy:

$$
x^2+y^2=\cos^2(t^2)+\sin^2(t^2)=1
$$

To oznacza, że punkt porusza się po okręgu jednostkowym.

Teraz liczymy prędkość:

$$
\vec v(t)=\bigl(-2t\sin(t^2),\ 2t\cos(t^2)\bigr)
$$

Jej wartość:

$$
|\vec v(t)|=\sqrt{(-2t\sin(t^2))^2+(2t\cos(t^2))^2}
$$

$$
=\sqrt{4t^2\sin^2(t^2)+4t^2\cos^2(t^2)}
$$

$$
=\sqrt{4t^2(\sin^2(t^2)+\cos^2(t^2))}=\sqrt{4t^2}=2|t|
$$

Dla standardowego założenia $t\ge 0$ otrzymujemy:

$$
|\vec v(t)|=2t
$$

czyli szybkość rośnie liniowo w czasie.

Poprawna odpowiedź: `B`.

## Pytanie 7

Piłeczka została puszczona z wysokości 4. piętra, a jedno piętro ma $3\ \text{m}$.

Początkowa wysokość:

$$
h_0=4\cdot 3=12\ \text{m}
$$

Po każdym odbiciu piłeczka traci $\frac14$ energii, więc zostaje jej:

$$
\frac34
$$

całej energii sprzed odbicia.

Na maksymalnej wysokości cała energia jest energią potencjalną:

$$
E=mgh
$$

Zatem wysokość po każdym odbiciu także mnoży się przez $\frac34$.

Po pierwszym odbiciu:

$$
h_1=12\cdot\frac34
$$

Po drugim odbiciu:

$$
h_2=12\cdot\left(\frac34\right)^2
$$

Po trzecim odbiciu:

$$
h_3=12\cdot\left(\frac34\right)^3
$$

Poprawna odpowiedź: `B`.

## Pytanie 8

Dane:

- początkowe maksymalne wychylenie: $A$
- przy każdym przejściu przez równowagę energia maleje o $\frac14$
- szukamy maksymalnego wychylenia osiągniętego bezpośrednio po drugim przejściu przez położenie równowagi

To znaczy, że po każdym takim przejściu zostaje:

$$
\frac34
$$

początkowej energii z poprzedniego etapu.

Po dwukrotnym przejściu przez równowagę:

$$
E_2=E_0\left(\frac34\right)^2
$$

Dla oscylatora harmonicznego energia jest proporcjonalna do kwadratu amplitudy:

$$
E\propto A^2
$$

czyli

$$
\frac{E_2}{E_0}=\frac{A_2^2}{A^2}
$$

Podstawiamy:

$$
\frac{A_2^2}{A^2}=\left(\frac34\right)^2
$$

Pierwiastkujemy:

$$
\frac{A_2}{A}=\frac34
$$

więc

$$
A_2=\frac34 A
$$

Poprawna odpowiedź: `C`.

## Pytanie 9

Dane:

$$
y(x,t)=2\sin(\pi x-4\pi t)
$$

Porównujemy to ze standardową postacią fali:

$$
y(x,t)=A\sin(kx-\omega t)
$$

Stąd odczytujemy:

$$
k=\pi, \qquad \omega=4\pi
$$

Prędkość fali:

$$
v=\frac{\omega}{k}=\frac{4\pi}{\pi}=4
$$

Teraz sprawdzamy fazę punktów $x=0$ i $x=2$.

Różnica faz między tymi punktami wynosi:

$$
\Delta\varphi=k\Delta x=\pi\cdot 2=2\pi
$$

Różnica faz równa $2\pi$ oznacza tę samą fazę.

Można też policzyć długość fali:

$$
\lambda=\frac{2\pi}{k}=\frac{2\pi}{\pi}=2
$$

Punkty odległe o jedną długość fali drgają w tej samej fazie, a tutaj odległość wynosi właśnie $2$.

Poprawna odpowiedź: `A`.

## Pytanie 10

Dane są dwa drgania o częstotliwościach:

$$
f_1=10\ \text{Hz}, \qquad f_2=12\ \text{Hz}
$$

Częstotliwość dudnień jest równa wartości bezwzględnej różnicy częstotliwości:

$$
f_d=|f_2-f_1|
$$

Podstawiamy:

$$
f_d=|12-10|=2\ \text{Hz}
$$

Poprawna odpowiedź: `B`.

## Klucz odpowiedzi

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
