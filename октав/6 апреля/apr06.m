tspan=0:0.05:10;
y0=[0,1];
[t,y] = ode45(@apr06f, tspan, y0);
plot(t,y);


