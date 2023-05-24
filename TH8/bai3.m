clc,clear
R=10;
H=30;
V=pi*H/R*conv([1 0 0],[-1 R])
r=0:0.01:10;
y=polyval(V,r);
figure
plot(r,y,'linewidth',2);
r0=roots(V-[0 0 0 800]);
r_800=r0(r0>0)
v0=polyder(V);
r1=roots(v0);
r_max=r1(r1>0)
Vmax=polyval(V,r_max)