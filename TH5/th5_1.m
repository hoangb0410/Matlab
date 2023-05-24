x1=-3:0.1:5;
x2=-3:1:5;
y1=(x1+5).^2./(4+3*x1.^2);
y2=(x2+5).^2./(4+3*x2.^2);
figure
plot(x1,y1,'--r','linewidth',2);hold on;
plot(x2,y2,'o','markeredgecolor','k','markerfacecolor','b','markersize',12);


