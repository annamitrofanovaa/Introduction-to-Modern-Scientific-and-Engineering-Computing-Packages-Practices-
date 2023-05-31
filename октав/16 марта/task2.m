
t = -2*pi:0.01*pi:2*pi;
a = 1;
b = 2;

x = (a^2 - b^2) / a * (cos(t)).^3;
y = (b^2 - a^2) / b * (sin(t)).^3;

plot(x,y);
