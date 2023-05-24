clc,clear
p1=[1 0];
p2=[1 1];
p3=[1 2];
p=conv(p1,conv(p2,p3))-[0 0 0 1716]
x=roots(p);
x=x(x>0)