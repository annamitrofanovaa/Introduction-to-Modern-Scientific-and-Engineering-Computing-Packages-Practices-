x = -2:0.1:2;
y = -2:0.1:2;
h = 10^(-8);
x0 = 0;
y0 = -1;
t = -1:0.1:0;
[x1, y1] = meshgrid(x,y);

z = 20 - x1.^2 - y1.^2;
surfc(x1,y1,z);
shading interp;

z0 = 20 - x0^2 - y0^2;
dx = ((20 - (x0 + h).^2 - y0.^2 - z0) - (20 - x0.^2 - y0.^2 - z0))./h;
dy = ((20 - (y0 + h).^2 - x0.^2 - z0) - (20 - x0.^2 - y0.^2 - z0))./h;
dz = ((20 - x0.^2 - y0.^2 - (z0 + h)) - (20 - x0.^2 - y0.^2 - z0))./h;
hold on;

axis equal;
x2 = x0 + t*dx;
y2 = y0 + t*dy;
z2 = z0 + t*dz;
plot3(x2,y2,z2);
plot3(x0, y0,z0, 'r*', 'markersize', 7)
xlabel("x");
ylabel("y");
zlabel("z");
hold off
