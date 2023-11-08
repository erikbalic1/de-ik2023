%torus

clear 
syms u v 
R = 5; r = 2;
x(u,v) = (R + r*cos(v)) * cos(u);
y(u,v) = (R + r*cos(v)) * sin(u);
z(u,v) = r * sin(v);
fsurf(x,y,z,[0 2*pi 0 2*pi])
axis equal
u0 = 4; v0 = 0.92;
P = [x(u0, v0), y(u0, v0), z(u0, v0)];
hold on
plot3(P(1), P(2), P(3), '.r', 'MarkerSize',20)

%parameteres gorbe sikban
%v0 parameter fix, u0 mozog

cx(u) = x(u, v0)
cy(u) = y(u, v0)
cz(u) = z(u, v0)
fplot3(cx,cy,cz,[0 2*pi], '.b','LineWidth',3)

%u0 parameter fix, v0 mozog

dx(v) = x(u0, v)
dy(v) = y(u0, v)
dz(v) = z(u0, v)
fplot3(dx,dy,dz,[0 2*pi], '.g', 'LineWidth',3)

%erintovektor1

cxd(u) = diff(cx, u)
cyd(u) = diff(cy, u)
czd(u) = diff(cz, u)
ce = [cxd(u0), cyd(u0), czd(u0)];
quiver3(P(1), P(2), P(3), ce(1), ce(2), ce(3), '.r', ...
    'Linewidth', 3)

%erintovektor2

dxd(v) = diff(dx, v)
dyd(v) = diff(dy, v)
dzd(v) = diff(dz, v)
de = [dxd(v0), dyd(v0), dzd(v0)];
quiver3(P(1), P(2), P(3), de(1), de(2), de(3), '.m', ...
    'Linewidth', 3)

%vektorialis szorzat = normalvektor

n = cross(ce, de)
quiver3(P(1), P(2), P(3), n(1), n(2), n(3), '.k', ...
    'Linewidth', 3)

%-----------------
%parameteres gorbe

clear
px = [-1 4 7 9];
py = [1 6 7 3];
plot(px, py, '*')
axis([-4 12 -1 9])
axis equal
tk = [-1 3 4 6];
syms a3 a2 a1 a0 b3 b2 b1 b0 t

%elso megoldas:

%e = [ a3 * tk(1)^3 + a2 * tk(1)^2 + a1 * tk(1) + a0 == px(1), ...
%      a3 * tk(2)^3 + a2 * tk(2)^2 + a1 * tk(2) + a0 == px(2), ...
%      a3 * tk(3)^3 + a2 * tk(3)^2 + a1 * tk(3) + a0 == px(3), ...
%      a3 * tk(4)^3 + a2 * tk(4)^2 + a1 * tk(4) + a0 == px(4) ];
%m = solve(e, [a3 a2 a1 a0])
%m.a3, m.a2, m.a1, m.a0 -> megoldasok kiirasa egyenkent
%cx(t) = m.a3 * t^3 + m.a2 * t^2 + m.a1 * t + m.a0

%masodik megoldas(praktikusabb):

x(t) = a3 * t^3 + a2 * t^2 + a1 * t + a0
e = [ x(tk(1)) == px(1), x(tk(2)) == px(2), ...
      x(tk(3)) == px(3), x(tk(4)) == px(4) ];
m = solve(e, [a3 a2 a1 a0]);
cx(t) = subs(x, [a3 a2 a1 a0], [m.a3 m.a2 m.a1 m.a0])
% subs -> kicsereli az elso parametereket a masodik parameterekre
y(t) = b3 * t^3 + b2 * t^2 + b1 * t + b0
e = [ y(tk(1)) == py(1), y(tk(2)) == py(2), ...
      y(tk(3)) == py(3), y(tk(4)) == py(4) ];
m = solve(e, [b3 b2 b1 b0]);
cy(t) = subs(y, [b3 b2 b1 b0], [m.b3 m.b2 m.b1 m.b0])
% subs -> kicsereli az elso parametereket a masodik parameterekre
hold on
fplot(cx, cy, [tk(1), tk(4)])

