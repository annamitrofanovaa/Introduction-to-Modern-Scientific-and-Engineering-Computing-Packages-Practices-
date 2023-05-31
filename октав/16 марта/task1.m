#x(n+1) = delta * xn * (1 - xn); уравнение плодящихся кроликов???? логистическое отображение

#возьмём n = 10
xn = 0.2;
delta = 1:0.1:4;
#delta = 5;
X = []
for i=1:1000
  xn = delta .* xn .* (1 - xn);
  X(i) = xn;
endfor
plot(delta, xn);

