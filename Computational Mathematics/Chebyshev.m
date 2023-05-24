function t=Chebyshev(n)
syms x;
t0=1;t1=x;
for k=2:(n-1)
    t2=2*x*t1-t0;
    t0=t1;
    t1=t2;
end
t=simplify(t2);
end