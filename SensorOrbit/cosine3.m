clc
clear
syms alpha beta gama theta;
Rz=[cos(alpha) -sin(alpha) 0;sin(alpha) cos(alpha) 0; 0 0 1]
Ry=[cos(beta) 0 sin(beta);0 1 0; -sin(beta) 0 cos(beta)]
Rx=[1 0 0;0 cos(gama) -sin(gama);0 sin(gama) cos(gama)]
x=[cos(theta);sin(theta)];
y=[-sin(theta);cos(theta)];
quiver3(0,0,0, 1,0,0, 1,'color', 'r')
hold on
quiver3(0,0,0, 0,0,1, 1,'color','r')
quiver3(0,0,0, 0,1,0, 1,'color','r')
quiver3(0,0,0, 1,1,1, 1,'color','b')
alpha=pi/3;
Rz=subs(Rz);
k=[1;1;1];
k1=Rz*k;
quiver3(0,0,0, k1(1),k1(2),k1(3), 1,'color','b')
axis equal