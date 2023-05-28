clear
x=-5*pi:pi/500:5*pi;
y=sin(x);

plot(x,y);
hold on;
xlim([-10, 10]);
ylim([-10, 10]);
hold on;

t = 0:0.05:10;
A = plot(0,0);
B = plot(0,0);
C = plot(0,0);
k=1;

for i = t
    x=i;
    y=sin(i);
    R=1;
    #for j = 1:1:5
      x=i;
      y=sin(i);
      [circleX, circleY] = circles(x,y,R);
      set(C, 'xdata', circleX, 'ydata', circleY);
      hold on;
      pause(0.06)


      fun= (@a) ((i-a)^2+(sin(i)-sin(a))^2 - 2);
     # j=fsolve(fun, i );
      j=i+2;
      x=j;
      y=sin(j);
      [circleX, circleY] = circles(x,y,R);
      set(A, 'xdata', circleX, 'ydata', circleY);
      hold on;
      pause(0.06)

      l=j+1.5;
      x=l;
      y=sin(l);
      [circleX, circleY] = circles(x,y,R);
      set(B, 'xdata', circleX, 'ydata', circleY);
      hold on;
      pause(0.06)
    #endfor

    k=k+1;
endfor

