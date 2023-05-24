clc,clear
R=0.25;
n=7;
vmax=80;
y=@(r)2*pi*vmax*(1-r./R).^(1/n).*r;
Q=quad(y,0,R)