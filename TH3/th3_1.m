x=-3:0.1:5;
y=(x+5).^2./(4+3*x.^2);
h=plot(x,y,'--r');
set(h,'linewidth',2);
hold on
x=-3:5;
y=(x+5).^2./(4+3*x.^2);
h=plot(x,y,'o');
set(h,'markeredgecolor','k','markerfacecolor','b','markersize',12);