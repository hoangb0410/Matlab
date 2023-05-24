function [x, iflag, itnum] = Jacobi(A,b,x0,delta,max_it)
A=[1.02,-0.05,-0.1;-0.11,1.03,-0.05;-0.11,-0.12,1.04];
b=[0.795;0.849;1.398];
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
