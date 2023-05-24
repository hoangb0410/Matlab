clc,clear
V=250;
Axq=@(R)pi*sqrt(R^4+9*(V^2)/(pi^2*R^2));
[Rmin,Amin]=fminbnd(Axq,0,10)
hmin=3*V/(pi*Rmin^2)
