clc,clear
year=[1750,1800,1850,1900,1950,1990,2000,2009];
po=[791,980,1260,1650,2520,5270,6060,6800];
%% Cau a
%y=b*e^(mx)
pa=polyfit(year,log(po),1);
m=pa(1);
b=exp(pa(2));
x=1750:2009;
y=@(x)b*exp(m*x);
po_1980a=y(1980);
po_1980_real=4453.8;
figure
subplot(2,2,1);
plot(x,y(x),'-r','linewidth',2);hold on
plot(year,po,'o','markersize',8);
plot(1980,po_1980a,'s');
plot(1980,po_1980_real,'*');
%% cau b
pb=polyfit(year,po,3);
x=1750:2009;
y=polyval(pb,x);
po_1980b=polyval(pb,1980);
subplot(2,2,2);
plot(x,y,'-r','linewidth',2);hold on
plot(year,po,'o','markersize',8);
plot(1980,po_1980b,'s');
plot(1980,po_1980_real,'*');
%% cau c
xi=1750:0.1:2009;
pc1=interp1(year,po,xi,'linear');
pc2=interp1(year,po,xi,'spline');
po_1980c1=interp1(year,po,1980,'linear');
po_1980c2=interp1(year,po,1980,'spline');
subplot(2,2,3);
plot(xi,pc1,'-r','linewidth',2);hold on
plot(year,po,'o','markersize',8);
plot(1980,po_1980c1,'s');
plot(1980,po_1980_real,'*');
subplot(2,2,4);
plot(xi,pc2,'-r','linewidth',2);hold on
plot(year,po,'o','markersize',8);
plot(1980,po_1980c2,'s');
plot(1980,po_1980_real,'*');
