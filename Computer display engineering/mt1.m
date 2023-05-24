clc, clear
x=0:0.01:10;
y=0:0.01:10;
plot(x,10,'-r','linewidth',2), hold on
plot(x,0,'-r','linewidth',2) , hold on
plot(0,y,'-r','linewidth',2) , hold on
plot(10,y,'-r','linewidth',2)
axis equal;
axis([-5 15 -5 15])

