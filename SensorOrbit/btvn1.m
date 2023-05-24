syms x real
format short
rp=(500+6370)*1000;
e=0.7417;
a=rp/(1-e)
g=6.6740831*10^-11;
m=5.9722*10^24;
U=g*m;
E =-U/2/a;
v0 = sqrt(2*(U/rp+E));
T=2*pi*sqrt(a^3/U);
t=T/3600;
n=2*pi/t;

t0=2*pi*7.5/t;
v=vpasolve(x-e*sin(x)==t0,x);
theta=2*atan(sqrt((1+e)/(1-e))*tan(v/2))

gocc=pi/6;
goc=2*atan(sqrt((1-e)/(1+e))*tan(gocc/2));
M=goc-e*goc;
t1=M/(2*pi)*t;

x1=0:2*pi/100:2*pi;
p=rp*(1+e);
r=p./(1+e*cos(x1));
y=sin(x1).*r;
x=cos(x1).*r;
plot(x,y,'LineWidth',1,'color','r')
hold on
plot(0,0,'marker','o','markersize',10,'markerfacecolor','b','markeredgecolor','b')
plot(min(x),0,'marker','*','color','r','markersize',8)
plot(max(x),0,'marker','*','color','r','markersize',8)
plot([min(x),max(x)],[0 0],'LineWidth',1,'color','k')
