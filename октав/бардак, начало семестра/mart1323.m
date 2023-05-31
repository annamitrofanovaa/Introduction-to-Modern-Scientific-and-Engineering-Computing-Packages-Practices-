p=[1 0 0 -1];
r=roots(p);
r



f = @(x) x.^3 - 1;

d = 0.01;
eps = 1e-6;
x = -2:d:2;
x0 = -2 + i;
xprev = x0;
diff = (f(x0 + d) - f(x0)) / d;
x1 = x0 - f(x0) / diff;
count = 0;

while (abs(x1 - xprev) > eps)
  xprev = x1;
  diff = (f(xprev + d) - f(xprev)) / d;
  x1 = xprev - f(xprev) / diff;
  count += 1;

endwhile

x1
