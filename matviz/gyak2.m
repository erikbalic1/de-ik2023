clear 
syms t
x(t) = cos(t) *t;
y(t) = sin(t) *t;
z(t) = t;
fplot3(x, y, z, [0, 18*pi], 'r', 'LineWidth',2)
axis equal
xlabel('x'); ylabel('y'); zlabel('z')
t0 = 53;
P = [x(t0), y(t0), z(t0)];
hold on
plot3(P(1), P(2), P(3), '.', 'MarkerSize',15)
xd(t) = diff(x, t);
yd(t) = diff(y, t);
zd(t) = diff(z, t);
v = [xd(t0), yd(t0), zd(t0)];
quiver3(P(1), P(2), P(3), v(1), v(2), v(3), 'b')


clear
syms x y
f(x, y) = sin(x) + cos(y);
fsurf(f, [-10 5 -5 8], 'y')
axis equal
xlabel('x'); ylabel('y'); zlabel('z');
hold on
%fimplicit(f, [-10 5 -5 8], 'r', 'LineWidth', 4)
fimplicit(f, 'r', 'LineWidth',4)
x0 = -6; y0 = 5.8;
plot3(x0, y0, f(x0, y0), '*', 'MarkerSize', 15)


clear
syms x y z 
F(x, y, z) = x^2 + y^2 + z^2 -1;
fimplicit3(F)
axis equal


clear
syms x y z 
F(x, y, z) = 1/x^2 - 1/y^2 + 1/z^2;
fimplicit3(F, [0 10 -10 10 -10 10])
axis equal
F(2, 3, 1)
