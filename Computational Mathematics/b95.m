f=@(x,y)cos(x);
[x,y]=ode45(f,[0,2*pi],0);
figure
plot(x,y);
