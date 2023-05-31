f = @(x) 1 + (1 + sin(x) - cos(x)).^2 - (sin(2*x) - cos(2*x) - 0.2).^2;
x = -10:0.1:10;

plot(x, f(x));
hold on
plot(x, 0*x);
grid on;
eps = 1e-10;
h = 0.00005;

roots_x =[];
a = -5;
b = 5;
step = 0.1;
for i = a:step:b
    fdif = (f(i + h) - f(i)) / h;
    xprev = i;

    xn = i - (f(i) / fdif);

    while (abs(xn - xprev) > eps)
      xprev = xn;
      fdif = (f(xn + h) - f(xn)) / h;
      xn = xn - (f(xn) / fdif);
    endwhile
    if(xn <= b) && (xn >= a)
      roots_x = [roots_x, xn];
    endif
endfor

res = unique(roots_x);

disp(roots_x);
disp(res);
plot(res, f(res), 'r*');

hold off
