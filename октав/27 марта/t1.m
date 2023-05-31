x = @(t) 4*cos(t);
y = @(t) 3*sin(t);

xlim([-7, 7]);
ylim([-7, 7]);
hold on;
[X, Y] = animated_ev(x, y);

