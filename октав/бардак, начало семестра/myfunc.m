function a = myfunc (n,m)
  a=false(n,m);
  for i= 1:1:n
    for j= 1:1:m
      a(i,j)=mod((i+j),2)
    endfor
  endfor
endfunction
