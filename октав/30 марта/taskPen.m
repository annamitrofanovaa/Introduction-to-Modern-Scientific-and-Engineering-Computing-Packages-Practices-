L = 5;

pkg load symbolic;
clear
ode45(@taskTheta, 0:0.01:10, [0,1])

