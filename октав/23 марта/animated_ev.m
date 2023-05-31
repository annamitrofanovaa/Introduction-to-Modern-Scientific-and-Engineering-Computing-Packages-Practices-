function [X,Y] = animated_ev (x, y)

  t = -50:0.05:50;
  plot(x(t),y(t));
  hold on;

  h=1e-3;
  dx = @(q) (x(q+h)-x(q))/h;
  ddx = @(q) (dx(q+h)-dx(q))/h;
  dy = @(q) (y(q+h)-y(q))/h;
  ddy = @(q) (dy(q+h)-dy(q))/h;

  k = 1;
  A = plot(0,0);
  C = plot(0,0);

  for i = t
    X(k)=x(i)-dy(i)*( ( (dx(i)).^2 + (dy(i)).^2 )/( dx(i) .* ddy(i) - dy(i) .* ddx(i) ) );
    Y(k)=y(i)+dx(i)*( ( (dx(i)).^2 + (dy(i)).^2 )/( dx(i) .* ddy(i) - dy(i) .* ddx(i) ) );

    R = norm([X(k) - x(i), Y(k) - y(i)]);

    fi = linspace(0, 2*pi, 1000);
    circleX = X(k) + R*cos(fi);
    circleY = Y(k) + R*sin(fi);

    set(C, 'xdata', X, 'ydata', Y);
    set(A, 'xdata', circleX, 'ydata', circleY,'LineWidth', 0.5);
    pause(0.05)
    k = k + 1;
  endfor
endfunction
