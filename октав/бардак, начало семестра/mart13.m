p=[1 0 0 -1];
r=roots(p);
r

d = 0.01+0.01*i;
f = @(x) x.^3 - 1;

#z = -2-2*i:d:2+2*i;
#plot(z, f(z));

eps = 1e-6;

##x0 = -2;
##y0 = -1;
##z0 = x0 + i*y0;
##zprev = z0;
##diff = (f(z0 + d) - f(z0)) / d;
##z1 = z0 - f(z0) / diff;
##count = 0;

for l=-1:0.1:1
for k=-1:0.05:1
  x0 = l;
  y0 = k;
  z0 = x0 + i*y0;
  zprev = z0;
  diff = (f(z0 + d) - f(z0)) / d;
  z1 = z0 - f(z0) / diff;
  while (abs(z1 - zprev) > eps)
    zprev = z1;
    diff = (f(zprev + d) - f(zprev)) / d;
    z1 = zprev - f(zprev) / diff;
  endwhile
  z1
 # real_z1 = real(z1)
  #imag_z1 = imag(z1)
  if((z1-r(1)) < eps)
    plot(l,k,'g*')
  endif
  if((z1-r(2)) < eps)
    plot(l,k,'r*')
  endif
  if((z1-r(3)) < eps)
    plot(l,k,'b*')
  endif
 # plot(real_z1,imag_z1,'g*')
  hold on;
endfor
endfor
#z1
