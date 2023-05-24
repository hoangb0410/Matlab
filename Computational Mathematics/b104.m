clc,clear
syms x y R ;
dtron=x^2+y^2-R^2
f=sqrt(R^2-x^2);
a=diff(f,x);
x0=7;R0=10;
y0=subs(f,{x,R},{x0,R0})
a=subs(a,{x,R},{x0,R0})
dthang=simple(a*(x-x0)-y+y0)
dtron=subs(dtron,R,R0)
figure
h1=ezplot(dtron,[-20,20]);
set(h1,'color','b','linewidth',2);
hold on
h2=ezplot(dthang,[-20,20]);
set(h2,'color','r','linewidth',2);
plot(x0,y0,'om','markerfacecolor','m')
axis([-20,20,-20,20])
axis square
title('DUONG TRON VA TIEP TUYEN')
