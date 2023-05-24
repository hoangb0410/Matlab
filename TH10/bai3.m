clc,clear
syms a b c v
dV=-pi*a*b*c*sin(v)^3;
V=int(dV,v,-pi,0)
a=1;b=2;c=3;
V=subs(V)