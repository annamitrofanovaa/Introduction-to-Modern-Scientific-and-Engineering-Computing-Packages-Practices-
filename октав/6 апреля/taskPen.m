[t,y] = ode45(@taskTheta, 0:0.05:10, [0,1]);
plot(t,y);
legend;
