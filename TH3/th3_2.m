clc,clear
fi=linspace(0,2*pi);
x=2*cos(fi);
y=2*sin(fi);
plot(x,y,'linewidth',4)
hold on
plot(0,0,'s','markeredgecolor','b','markerfacecolor','b')
text(0,-0.2,'TAM','horizontalalignment','center','verticalalignment','top')
axis equal
axis ([-3,3,-4,4])
