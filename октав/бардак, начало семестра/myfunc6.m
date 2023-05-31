function a = myfunc6 (n,m)
a=ones(n,m).*round(randi(100))
  for i= 2:1:n;
    a(i,:)=a(i,1)+i-1;
  endfor
endfunction
