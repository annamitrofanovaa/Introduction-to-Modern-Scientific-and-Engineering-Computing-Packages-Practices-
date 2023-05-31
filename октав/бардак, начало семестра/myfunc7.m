x = [0:0.02:1];
y = x.*(1 - x) + 0.1;
x1 = [-0.5:0.05:1.5];
plot(x,y, 'Color', [1 1/3 1/3], 'LineWidth', 3, 'LineStyle', '--')

hold on
plot(x1,(x1+0.5)/5, 'Color', [1 1/4 1/5], 'Marker', 's', 'LineWidth', 2,
'MarkerSize', 10)
hold off

grid on;
xlabel('Time');
ylabel('Function');
title('Graphics');
