%Bezier-gorbe

clear
px = [-1 3 5 8];
py = [2 6 5 1];
plot(px, py, '*--')
axis equal
hold on
syms t 
cx(t) = 0*t;
cy(t) = 0*t;
n = 3
for i = 0 : n
    b(t) = nchoosek(n, i) * t^i * (1-t)^(n - i);
    cx(t) = cx(t) + px(i + 1) * b(t);
    cy(t) = cy(t) + py(i + 1) * b(t);
end
fplot(cx, cy, [0 1])

%Erintovektorok:

v = [n * (px(2) - px(1)), n * (py(2) - py(1))];
quiver(px(1), py(1), v(1), v(2))
w = [n * (px(4) - px(3)), n * (py(4) - py(3))];
quiver(px(4), py(4), w(1), w(2))

%Hermite-iv 
clear
px = [ 2 6 ]; py = [ 1 2 ];
plot(px, py, '*');
axis([-4 14 -2 12])
axis equal; hold on;
vx = [ 3 0 ]; vy = [ 8 10 ];
quiver(px(1), py(1), vx(1), vy(1));
quiver(px(2), py(2), vx(2), vy(2));
syms t a3 a2 a1 a0 b3 b2 b1 b0
x(t) = a3 * t^3 + a2 * t^2 + a1 * t + a0;
xd(t) = diff(x, t);
t1 = 1; t2 = 2;
e = [ x(t1) == px(1), x(t2) == px(2), ...
     xd(t1) == vx(1), xd(t2) == vx(2)];
m = solve(e, [a3 a2 a1 a0])
cx(t) = subs(x, [a3 a2 a1 a0], [m.a3 m.a2 m.a1 m.a0])
y(t) = b3 * t^3 + b2 * t^2 + b1 * t + b0;
yd(t) = diff(y, t);
e = [ y(t1) == py(1), y(t2) == py(2), ...
     yd(t1) == vy(1), yd(t2) == vy(2)];
m = solve(e, [b3 b2 b1 b0])
cy(t) = subs(y, [b3 b2 b1 b0], [m.b3 m.b2 m.b1 m.b0])
fplot(cx, cy, [t1 t2])

%Csatlakoztatas

rx = [ px(2) 13];
ry = [ py(2) -1];
wx = [ vx(2) 1];
wy = [ vy(2) 6];
t3 = -1; t4 = 2;
plot(rx, ry, '*');
quiver(rx(1), ry(1), wx(1), wy(1));
quiver(rx(2), ry(2), wx(2), wy(2));

e = [ x(t3) == rx(1), x(t4) == rx(2), ...
     xd(t3) == wx(1), xd(t4) == wx(2)];
m = solve(e, [a3 a2 a1 a0])
dx(t) = subs(x, [a3 a2 a1 a0], [m.a3 m.a2 m.a1 m.a0])

e = [ y(t3) == ry(1), y(t4) == ry(2), ...
     yd(t3) == wy(1), yd(t4) == wy(2)];
m = solve(e, [b3 b2 b1 b0])
dy(t) = subs(y, [b3 b2 b1 b0], [m.b3 m.b2 m.b1 m.b0])
fplot(dx, dy, [t3 t4])
