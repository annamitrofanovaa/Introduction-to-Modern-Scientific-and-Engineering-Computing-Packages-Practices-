u=0:0.05:2*pi;
v=-1:0.05:1;

[X,Y]=meshgrid(u,v);
x=(1+Y./2 .* cos(X./2)).*cos(X);
y=(1+Y./2 .* sin(X./2)).*sin(X);
z=Y./2.*sin(X./2);
surf(x,y,z);

