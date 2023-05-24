clc,clear
x=0:0.1:6;
y=@(x)x.^3-8*x.^2+17.*x+sqrt(x)-10;
%plot(x,y(x)); hold on
%plot(x,0);
x1=fzero(y,[0 2])
x2=fzero(y,[2 3])
x3=fzero(y,[4 6])
%plot(x1,y(x1),'o','markerfacecolor','b');
%plot(x2,y(x2),'o','markerfacecolor','b');
%plot(x3,y(x3),'o','markerfacecolor','b');