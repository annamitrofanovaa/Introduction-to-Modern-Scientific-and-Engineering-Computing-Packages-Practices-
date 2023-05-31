function normal_parametr(f, x0, y0)
  #поверхность передается как анонимная функция и рисуется
  x = -2:0.1:2;
  y = -2:0.1:2;
  [X, Y] = meshgrid(x, y);
  Z = f(X, Y);
  surf(X, Y, Z);
  shading interp;
  axis equal;
  t = -1:0.1:0;
  h = 10^(-10);
  z0 = f(x0, y0);
  dx = (f(x0+h, y0) - f(x0, y0)) / h;
  dy = (f(x0, y0+h) - f(x0, y0)) / h;
  hold on;
  x2 = x0 + t*dx;
  y2 = y0 + t*dy;
  z2 = z0 - t;
  plot3(x2,y2,z2);
  hold off;
end
