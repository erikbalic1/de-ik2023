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
