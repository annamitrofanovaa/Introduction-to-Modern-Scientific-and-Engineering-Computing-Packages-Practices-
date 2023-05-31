##a=1;
##b=1;
##c=1;
##[fi,z]=meshgrid(0:2*pi/50:2*pi, -1:0.1:4);
##r=sqrt( ((1+z/c).**2)./( (cos(fi)/a).**2 + (sin(fi)/b).**2) );
##x=r.*cos(fi);
##y=r.*sin(fi);
##mesh(x,y,z)
[x, y, t] = meshgrid(-pi:0.1:pi, -pi:0.1:pi, -1:0.1:1);
z=20-x.^2-y.^2;
hold on
surf(x,y,z)
x0=0;
y0=-1;
z0=19;
x1=x0-2*x1*t;
y1=y0-2*y1*t;
z1=z0-t;
figure

surf(x1,y1,z1)


