clc,clear
y0=0;
f=@(x,y)cos(x);
[x y]=ode45(f,[0:0.01:2*pi],y0); 
figure
plot(x,y,'linewidth',2);