clc,clear
R=10;H=30;
V=pi*H/R*conv([1 0 0],[-1 R])
r=0:0.1:10;
y=polyval(V,r);
figure
plot(r,y,'linewidth',2);hold on
r=roots(V-[0 0 0 800]);
r=r(r>0)
f=polyder(V);
rmax=roots(f);
rmax=rmax(rmax>0)
Vmax=polyval(V,rmax)