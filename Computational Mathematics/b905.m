f=@(x,y)cos(x);
[x,y]=ode45(f,[0:0.1:2*pi],0);
plot(x,y)