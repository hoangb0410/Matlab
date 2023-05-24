function kq=BtoB_OR(omegax,omegay,omegaz)
%phy=3*t;
%shi=t;
%theta=2*t;
syms t theta phy shi dtheta dphy dshi
f1=dphy - dshi*sin(theta)-omegax;
f2=dtheta*cos(phy) + dshi*cos(theta)*sin(phy)-omegay;
f3=dshi*cos(phy)*cos(theta) - dtheta*sin(phy)-omegaz;
kq=solve(f1,f2,f3,dphy,dtheta,dshi)
end