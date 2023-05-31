#маятник

g = 9.81;
L = 1;

theta0 = pi/6;
omega0 = 2;

% time
t0 = 0;
tf = 30;
h = 0.01;

f = @(t, y) [y(2); -g/L*sin(y(1))];

[t, y] = ode45(f, t0:h:tf, [theta0, omega0]);

fps = 30;
speedup = 10;
dt = 1/(fps*speedup);
scale = 1;


fig = figure();
figure(fig);
ampl = subplot(3,1,1);
anim = subplot(3,1,[2 3]);


x0 = 0;
y0 = 0;

hold(anim,"on");
line = plot(anim,[x0, x0], [y0, y0], 'b-', 'LineWidth', 2);
dot = plot(anim,x0, y0, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
set(anim, 'xlim', [-1 1], 'ylim', [-1 0]);

hold(ampl,"on");
amplitude = plot(ampl,t, y(:,1), 'k-', 'LineWidth', 2);
massdot = plot(ampl,t(1), y(1,1), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');

for i = 1:length(t)
    x1 = x0 + L*sin(y(i, 1))*scale;
    y1 = y0 - L*cos(y(i, 1))*scale;

    set(line, 'xData',[x0, x1], 'yData', [y0, y1]);
    set(dot,'xData', x1, 'yData',y1);
    set(massdot, 'XData', t(i), 'YData', y(i,1));

    pause(dt);
end
hold(anim,"off");
hold(ampl, "off");
