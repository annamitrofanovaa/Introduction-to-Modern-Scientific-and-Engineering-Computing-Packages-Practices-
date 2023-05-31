function dthetadt = taskTheta (t, theta)
  L=5;
  dthetadt(1) = theta(2);
  dthetadt(2) = -(9.8/L) .* sin(theta(1));
  dthetadt = dthetadt;
endfunction
