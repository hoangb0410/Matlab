clc
clear
theta0=0;
e=0.7417
a=2.6597e+07
muy=3.983e14
h=sqrt(a*(1-e^2)*muy)
theta = 0:0.01:2*pi;
r = (h^2/muy) ./ (1 + e.*cos(theta));
x = r.*cos(theta);
y = r.*sin(theta);
figure
plot(x, y,'linewidth',1.5,'color','r')
hold on
plot(0,0,'marker','o','markersize',10,'markerfacecolor','b','markeredgecolor','b')
plot(max(x),0,'marker','*','color','r')
plot(min(x),0,'marker','*','color','r')
plot([min(x) max(x)],[0 0],'linewidth',1.5,'color','k')
chuky=2*pi*sqrt(a^3/muy);
theta=8.5*pi/9;
r = (h^2/muy)/(1 + e*cos(theta));
x = r*cos(theta);
y = r*sin(theta);
quiver(0,0,x,y,1,'color','r')
quiver(0,0,1,0,10^7,'color','b','linewidth',1)
quiver(0,0,0,1,10^7,'color','b','linewidth',1)
omega1=pi/4;
i=pi/6;
omega2=pi/3;
R1=[cos(omega1) -sin(omega1) 0;sin(omega1) cos(omega1) 0; 0 0 1];
R2=[1 0 0; 0 cos(i) -sin(i); 0 sin(i) cos(i)];
R3=[cos(omega2) -sin(omega2) 0;sin(omega2) cos(omega2) 0;0 0 1];
ROxy=R1*R2*R3;
theta = 0:0.01:2*pi;
r = (h^2/muy) ./ (1 + e.*cos(theta));
x = r.*cos(theta);
y = r.*sin(theta);
z=r*0;
r0=[x;y;z];
r1=ROxy*r0;
figure
plot3(x,y,z,'linewidth',1.5,'color','r')
hold on
plot3([min(x),max(x)],[0,0],[0,0],'linewidth',1.5,'color','k')
theta=8.5*pi/9;
r = (h^2/muy)/(1 + e*cos(theta));
x = r*cos(theta);
y = r*sin(theta);
vec=[x;y;0];
vec1=ROxy*vec;
quiver3(0,0,0,x,y,0,1,'color','r')
quiver3(0,0,0,1,0,0,10^7,'color','b','linewidth',1)
quiver3(0,0,0,0,1,0,10^7,'color','b','linewidth',1)
quiver3(0,0,0,0,0,1,10^7,'color','b','linewidth',1)
