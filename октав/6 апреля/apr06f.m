function dzdt = apr06f (t, theta)
  dzdt=zeros(2,1);
  len=2;
  dzdt(1) = theta(2);
  dzdt(2) = -(9.8/len) .* sin(theta(1));
endfunction
