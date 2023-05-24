%% Trai dat quanh Mat Troi
syms theta ra rp;
% Te=01/01/2023 12:00:00
% ban truc lon (km)
a1=149597871
%  do lech tam
e1=0.01671022
% goc nghieng mp quy dao (do->radian)
i1=0.00005*pi/180;
% Diem moc (do->radian)
Omega1=-11,26064*pi/180;
% Can diem (do->radian)
omega1=102,94719*pi/180;

%ra=rp*(1+e)/(1-e)
eq1=ra-rp*(1+e1)/(1-e1)
%a=(abs(rp)+abs(ra))/2
eq2=a1-(abs(rp)+abs(ra))/2
[ra1, rp1]=solve(eq1,eq2)

r=(a1*(1-e1^2))/(1+e1*cos(theta))
rx=r*cos(theta);
ry=r*sin(theta);
R1=[cos(Omega1) -sin(Omega1) 0;sin(Omega1) cos(Omega1) 0; 0 0 1];
R2=[1 0 0; 0 cos(i1) -sin(i1); 0 sin(i1) cos(i1)];
R3=[cos(omega1) -sin(omega1) 0;sin(omega1) cos(omega1) 0;0 0 1];
R_OXYZ_oxyz=R1*R2*R3;
x_XYZ=R_OXYZ_oxyz*[1;0;0];
y_XYZ=R_OXYZ_oxyz*[0;1;0];
z_XYZ=R_OXYZ_oxyz*[0;0;1];
r3D=R_OXYZ_oxyz*[rx;ry;0];
ra3D=R_OXYZ_oxyz*[-ra1;0;0];
rp3D=R_OXYZ_oxyz*[rp1;0;0];
figure
%quiver3(0,0,0,1,0,0,10^7,'color','r')
hold on 
axis equal
plot3(0,0,0,'marker','o','markersize',12,'markerfacecolor','b')
%quiver3(0,0,0,x_XYZ(1),x_XYZ(2),x_XYZ(3),10^7,'color','b')
%quiver3(0,0,0,y_XYZ(1),y_XYZ(2),y_XYZ(3),10^7,'color','b')
%quiver3(0,0,0,z_XYZ(1),z_XYZ(2),z_XYZ(3),10^7,'color','b')
fplot3(r3D(1),r3D(2),r3D(3),[0 2*pi],'linewidth',2);
title('Trai Dat quanh Mat Troi','fontsize',10)

%% Ve tinh quanh Trai Dat
% ban truc lon (km)
a2=7150;
%  do lech tam
e2=0.00121029;
% goc nghieng mp quy dao (do->radian)
i2=98.134*pi/180;
% Diem moc (do->radian)
Omega2=10*pi/180;
% Can diem (do->radian)
omega2=89*pi/180;

%ra=rp*(1+e)/(1-e)
eq1=ra-rp*(1+e2)/(1-e2)
%a=(abs(rp)+abs(ra))/2
eq2=a2-(abs(rp)+abs(ra))/2
[ra2, rp2]=solve(eq1,eq2)

r=(a2*(1-e2^2))/(1+e2*cos(theta))
rx=r*cos(theta);
ry=r*sin(theta);
R1=[cos(Omega2) -sin(Omega2) 0;sin(Omega2) cos(Omega2) 0; 0 0 1];
R2=[1 0 0; 0 cos(i2) -sin(i2); 0 sin(i2) cos(i2)];
R3=[cos(omega2) -sin(omega2) 0;sin(omega2) cos(omega2) 0;0 0 1];
R_OXYZ_oxyz=R1*R2*R3;
x_XYZ=R_OXYZ_oxyz*[1;0;0];
y_XYZ=R_OXYZ_oxyz*[0;1;0];
z_XYZ=R_OXYZ_oxyz*[0;0;1];
r3D=R_OXYZ_oxyz*[rx;ry;0];
ra3D=R_OXYZ_oxyz*[-ra2;0;0];
rp3D=R_OXYZ_oxyz*[rp2;0;0];
figure
%quiver3(0,0,0,1,0,0,10^7,'color','r')
hold on 
axis equal
plot3(0,0,0,'marker','o','markersize',12,'markerfacecolor','b')
%quiver3(0,0,0,x_XYZ(1),x_XYZ(2),x_XYZ(3),10^7,'color','b')
%quiver3(0,0,0,y_XYZ(1),y_XYZ(2),y_XYZ(3),10^7,'color','b')
%quiver3(0,0,0,z_XYZ(1),z_XYZ(2),z_XYZ(3),10^7,'color','b')
fplot3(r3D(1),r3D(2),r3D(3),[0 2*pi],'linewidth',2);
title('Ve tinh quanh Trai Dat','fontsize',10)