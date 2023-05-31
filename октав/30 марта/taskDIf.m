#syms y(t);

##DE = diff(y, t) - y == 0;
##sol = dsolve(DE)
##
####чтобы задать началные условия
##sol = dsolve(DE, y(0) == 1)
##
#### для второй производнорй
##DE = diff(y, t, 2) + y == 0;

## для систем
##syms x(t) y(t)
##ode_sys = [diff(x(t), t) == y(t); diff(y(t),t) == x(t)]
##soln = dsolve(ode_sys)
##
##sx = soln.x
##sy = soln.y
##
##syms y(x)
##DE = diff(y(x), x) - 0.2*x*y(x) == 0;
##
##sol1 = dsolve(DE, y(0) == 0.3)

##x_val = linspace(-5,5,100);
###plot(x_val, sol1(x_val), 'r', 'linewidth', 4);
##sol2 = function_handle(sol1)
##sol2 = @(x) 3 * exp (x.^2 / 10) / 10;
##y = sol2(x_val);
##plot(x_val, y, 'g*', 'marketsize', 3);

###ode45 - метод Ранге - Кутты
##dydt = @(t,y) 2*t;
##[t,y] = ode45(dydt, [-1,1],1)

##function dy=twofuns(t,y)
##  dy(1) = y(2);
##  dy(2) = -y(1);
##
##endfunction
##
##function dydt = twoeq(t,y)
##    dydt(1) = y(2); z = dy/dt
##    dydt(2) = y(1) + t - dydt(1); dz/dt = y + t - z
##    dydt = dydt'
##endfunction
##ode45(@twoeq, [-1,1], [0,0]);



