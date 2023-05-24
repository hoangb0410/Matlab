function [b,m]=powerfit(x,y)
p=polyfit(log(x),log(y),1);
m=p(1);
b=exp(p(2));
x1=[x(1):0.1:x(length(x))];
y1=@(x1)b*x1.^m;
figure
hold on
plot(x1,y1(x1),'-r','linewidth',2);
plot(x,y,'o','markersize',8);