function [x, iflag, itnum] = Jacobi(A,b,x0,delta,max_it)
A=[24.21,2.42,3.85;2.31,31.49,1.52;3.49,4.85,28.72];
b=[30.24;40.95;42.81];
max_it=12;
x0=[0;0;0];
delta=0.0001;
n = length(b);
iflag = 1; k = 0;
diagA = diag(A);
A = A-diag(diag(A));
while k < max_it
k = k+1;
x = (b-A*x0)./diagA;
relerr = norm(x-x0,inf)/(norm(x,inf)+eps);
x0 = x;
if relerr < delta
break
end
end
itnum = k;
if (itnum == max_it)
iflag = -1;
end