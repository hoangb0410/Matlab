clc,clear
syms a b c u v;
dV=-pi*a*b*c*sin(v)^3;
V=int(dV,-pi,0)
a=1;b=2;c=3;
V=subs(V)
