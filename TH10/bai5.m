clc,clear
syms R L C t i
%% Cau a
nghiem=dsolve('L*D2i+R*Di+1/C*i=0','Di(0)=8','i(0)=0')
%% Cau b
L=3;R=10;C=80e-6;
Ib=subs(nghiem)
figure
h=ezplot(Ib,[0,1]);
title('UNDERDAMPED','fontsize',15)
set(h,'linewidth',2)
axis([0,1,-0.15,0.15]);
%% Cau c
L=3;R=200;C=1200e-6;
Ic=subs(nghiem)
figure
h=ezplot(Ic,[0,1]);
title('OVERDAMPED','fontsize',15)
set(h,'linewidth',2)
axis([0,1,0,0.15]);
%% Cau d
L=3;R=201;C=300e-6;
Id=subs(nghiem)
figure
h=ezplot(Id,[0,1]);
title('CRITICAL DAMPED','fontsize',15)
set(h,'linewidth',2)
axis([0,1,0,0.1]);

