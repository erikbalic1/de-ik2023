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
