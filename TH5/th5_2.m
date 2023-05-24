t=0:0.01:2*pi;
x=2*cos(t);
y=2*sin(t);
plot(x,y,'-b','linewidth',2.5);hold on
plot(0,0,'s','markeredgecolor','b','markerfacecolor','b')
text(0,-0.2,'TAM','horizontalalignment','center','verticalalignment','top')
axis equal
axis([-3,3,-4,4])