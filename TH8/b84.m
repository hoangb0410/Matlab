clc,clear
year=[1750,1800,1850,1900,1950,1990,2000,2009];
po=[791,980,1260,1650,2520,5270,6060,6800];
p=polyfit(year,log(po),1);
m=p(1);
b=exp(p(2));
y=@(x)b*exp(m*x);
po1980=y(1980);
po1980real=4453.8;
x=1750:0.1:2009;
figure
plot(x,y(x),'-r');hold on
plot(year,po,'ob')
plot(1980,po1980,'s');
plot(1980,po1980real,'*');
%%cau b
pb=polyfit(year,po,3);
po1980b=polyval(pb,1980);
y=polyval(pb,x);
figure
plot(x,y,'-r');hold on
plot(year,po,'ob')
plot(1980,po1980b,'s');
plot(1980,po1980real,'*');
%% cau c
pc1=interp1(year,po,x,'linear');
po1980c1=interp1(year,po,1980,'linear');
pc2=interp1(year,po,x,'spline');
po1980c2=interp1(year,po,1980,'spline');
figure
subplot(1,2,1)
plot(x,pc1,'-r');hold on
plot(year,po,'ob')
plot(1980,po1980c1,'s');
plot(1980,po1980real,'*');
subplot(1,2,2)
plot(x,pc2,'-r');hold on
plot(year,po,'ob')
plot(1980,po1980c2,'s');
plot(1980,po1980real,'*');
