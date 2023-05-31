t=0:0.05:5*pi
x=sin(t)
y=cos(t)
plot3(x,y,t,'b')
hold on
t=0:0.05:5*pi
y=-1*sin(t)
x=-cos(t)
plot3(x,y,t,'g')

for i= 0:pi/4:5*pi
  plot3([cos(i),-1*cos(i)],[sin(i),-1*sin(i)],[i,i]);
  hold on;
end

hold off

