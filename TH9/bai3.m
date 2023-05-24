clc,clear
R=0.25;
n=7;
vmax=80;
f=@(r)2*pi*vmax.*r.*(1-r./R).^(1/n);
Q=quad(f,0,R)