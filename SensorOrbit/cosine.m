clc
clear
syms alpha beta gama theta;
Rz(alpha)=[cos(alpha) -sin(alpha) 0;sin(alpha) cos(alpha) 0; 0 0 1]
Ry(beta)=[cos(beta) 0 sin(beta);0 1 0; -sin(beta) 0 cos(beta)]
Rx(gama)=[1 0 0;0 cos(gama) -sin(gama);0 sin(gama) cos(gama)]
x=[cos(theta);sin(theta)];
y=[-sin(theta);cos(theta)];
quiver(0,0, 1,0, 1,'color', 'r')
hold on
quiver(0,0, 0,1, 1,'color','r')
y=[1 1];
quiver(0,0, 1,1, 1,'color','b')
theta=pi/2;
x=[1;1];
R=[cos(theta) -sin(theta); sin(theta) cos(theta)]
x1=R*x
quiver(0,0, x1(1),x1(2), 1,'color','b')
axis equal