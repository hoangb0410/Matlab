clc
clear
theta0=0;
e=0.7417
a=500*10^3
muy=3.983e14
h=sqrt(a*(1-e^2)*muy)
theta = 0:0.01:2*pi;
r = (h^2/muy) ./ (1 + e.*cos(theta));
x = r.*cos(theta);
y = r.*sin(theta);
plot(x, y,'linewidth',2)
hold on
plot(0,0,'marker','o','markersize',5,'markerfacecolor','b','markeredgecolor','b')
plot(max(x),0,'marker','*','color','r')
plot([min(x) max(x)],[0 0],'linewidth',1.5,'color','k')
chuky=2*pi*sqrt(a^3/muy)
d=max(x)
t=0;
nghiem=0;
while (nghiem<=2*pi)    
    M=(2*pi/chuky)*t;
    nghiem=fzero(@(shi)shi-e*sin(shi)-M,[0 2*pi]);
    r1=a*[1-e*cos(nghiem)];
    theta1=2*atan(sqrt((1+e)/(1-e))*tan(nghiem/2));
    x = r1*cos(theta1);
    y = r1*sin(theta1);
    plot([0 x],[0 y],'linewidth',1,'color','g')
    drawnow();
    t=t+1;
end
plot([0 d],[0 0],'linewidth',2,'color','r')
xlabel("x");
ylabel("y");