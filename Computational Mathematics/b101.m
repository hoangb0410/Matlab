syms x;
S1=x^2*(x-6)+4*(3*x-2);
S2=(x+2)^2-8*x;
a=simple(S1*S2)
b=simple(S1/S2)
c=simple(S1+S2)
x=[1:5]
kq=subs(c)