clc,clear
n=[1750,1800,1850,1900,1950,1990,2000,2009];
ds=[791,980,1260,1650,2520,5270,6060,6800];
%% Cau a
p=polyfit(n,log(ds),1)
m=p(1);
b=exp(p(2));
x=1750:2009;
y=@(x)b*exp(m*x);
ds_1980a=y(1980);
ds_1980real=4453.8;
figure
subplot(2,2,1)
plot(x,y(x),'-r','linewidth',2); hold on;
plot(n,ds,'o','markersize',8);
plot(1980,ds_1980a,'s');
plot(1980,ds_1980real,'*');
title('Cau a, xap xi e mu','fontsize',15);
%% Cau b
pb=polyfit(n,ds,3);
ds_1980b=polyval(pb,1980);
x=1750:2009;
y=polyval(pb,x);
subplot(2,2,2);
plot(x,y,'-r','linewidth',2); hold on;
plot(n,ds,'o','markersize',8);
plot(1980,ds_1980b,'s');
plot(1980,ds_1980real,'*');
title('Cau b, xap xi bac 3','fontsize',15);
%% Cau c
xi=1750:2009;
pc1=interp1(n,ds,xi,'linear');
pc2=interp1(n,ds,xi,'spline');
ds_1980c1=interp1(n,ds,1980,'linear');
ds_1980c2=interp1(n,ds,1980,'spline');
subplot(2,2,3);
plot(xi,pc1,'-r','linewidth',2); hold on;
plot(n,ds,'o','markersize',8);
plot(1980,ds_1980c1,'s');
plot(1980,ds_1980real,'*');
title('Cau c, noi suy tuyen tinh');
subplot(2,2,4);
plot(xi,pc2,'-r','linewidth',2); hold on;
plot(n,ds,'o','markersize',8);
plot(1980,ds_1980c2,'s');
plot(1980,ds_1980real,'*');
title('Cau c, noi suy spline','fontsize',15);
