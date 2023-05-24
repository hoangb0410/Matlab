clc
syms theta;
omega=pi/3;
i=pi/6;
Omega=pi/4;
e=0.7417
muy=3.983e14
%theta = 0:0.01:2*pi;
%rp=(500+6370)*1000;
rp=6871000
ra=rp*(1+e)/(1-e)
a=(abs(rp)+abs(ra))/2
h=sqrt(a*(1-e^2)*muy)
r=(a*(1-e^2))/(1+e*cos(theta))
rx=r*cos(theta);
ry=r*sin(theta);
R1=[cos(Omega) -sin(Omega) 0;sin(Omega) cos(Omega) 0; 0 0 1];
R2=[1 0 0; 0 cos(i) -sin(i); 0 sin(i) cos(i)];
R3=[cos(omega) -sin(omega) 0;sin(omega) cos(omega) 0;0 0 1];
R_OXYZ_oxyz=R1*R2*R3;
x_XYZ=R_OXYZ_oxyz*[1;0;0];
y_XYZ=R_OXYZ_oxyz*[0;1;0];
z_XYZ=R_OXYZ_oxyz*[0;0;1];
r3D=R_OXYZ_oxyz*[rx;ry;0];
ra3D=R_OXYZ_oxyz*[-ra;0;0];
rp3D=R_OXYZ_oxyz*[rp;0;0];
figure
quiver3(0,0,0,1,0,0,10^7,'color','r')
hold on 
axis equal
plot3(0,0,0,'marker','o','markersize',12,'markerfacecolor','b')
quiver3(0,0,0,x_XYZ(1),x_XYZ(2),x_XYZ(3),10^7,'color','b')
quiver3(0,0,0,y_XYZ(1),y_XYZ(2),y_XYZ(3),10^7,'color','b')
quiver3(0,0,0,z_XYZ(1),z_XYZ(2),z_XYZ(3),10^7,'color','b')
fplot3(r3D(1),r3D(2),r3D(3),[0 2*pi],'linewidth',2);