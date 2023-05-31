
function [x, y] = drawcircle (a, b, R)
  fi = linspace(0, 2*pi, 1000);
  x = a + R*cos(fi);
  y = b + R*sin(fi);
endfunction
