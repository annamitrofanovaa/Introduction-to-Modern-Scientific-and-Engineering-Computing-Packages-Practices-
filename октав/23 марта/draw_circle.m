function [x, y] = drawcircle (a, b, R)
  theta = linspace(0, 2*pi, 1000);
  x = a + R*cos(theta);
  y = b + R*sin(theta);

endfunction
