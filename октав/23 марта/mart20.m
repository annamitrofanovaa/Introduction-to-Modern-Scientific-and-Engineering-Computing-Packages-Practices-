#эволюта
h=1e-4;

x = @(t) 1*cos(t);
y = @(t) 2*sin(t);
x0=0.5;
x00=0.50001;
r=3.9;


dx = @(q) (x(q+h)-x(q))/h;
ddx = @(q) (dx(q+h)-dx(q))/h;

dy = @(q) (y(q+h)-y(q))/h;
ddy = @(q) (dy(q+h)-dy(q))/h;

t = -2*pi:0.01*pi:2*pi;

a=x(t)-dy(t).*( ( (dx(t)).^2 + (dy(t)).^2. )./( dx(t) .* ddy(t) - dy(t) .* ddx(t) ) );
b=y(t)+dx(t).*( ( (dx(t)).^2 + (dy(t)).^2. )./( dx(t) .* ddy(t) - dy(t) .* ddx(t) ) );

plot(a,b);

