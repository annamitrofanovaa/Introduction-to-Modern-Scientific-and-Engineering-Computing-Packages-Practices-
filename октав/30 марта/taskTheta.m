function dthetadt = taskTheta (t, theta)
  dthetadt(1) = theta(2);
  dthetadt(2) = -9.8/5 .* sin(theta);
  dthetadt = dthetadt'
endfunction
