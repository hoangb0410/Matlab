clc,clear
syms x y R
%% Tim pt tiep tuyen 
% pt dt biet hsg a va di qua diem (x0,y0): y=a(x-x0)+y0
dtron=x^2+y^2-R^2;
f=sqrt(R^2-x^2);
a=diff(f,x);
R0=10; x0=7;
a=subs(a,{x,R},{x0,R0}) %he so goc a
y0=subs(f,{x,R},{x0,R0})
dthang=a*(x-x0)-y+y0
dtron=subs(dtron,R,R0)
%% Ve hinh
h1=ezplot(dtron,[-20,20]);hold on
set(h1,'linewidth',3,'color','b');
h2=ezplot(dthang,[-20,20]);
set(h2,'linewidth',3,'color','r');
title('DUONG TRON VA TIEP TUYEN')
plot(x0,y0,'om','markerfacecolor','m','markersize',12)
axis equal
axis([-20 20 -20 20])

