clc,clear
syms L R C t i
nghiem=dsolve('L*D2i+R*Di+1/C*i','Di(0)=8','i(0)=0')
%% cau b
L=3;R=10;C=80e-6;
yb=subs(nghiem)
figure
h1=ezplot(yb,[0,1]);
set(h1,'color','b','linewidth',2);
title('UNDERDAMPED');
%% cau c
L=3;R=200;C=1200e-6;
yc=subs(nghiem)
figure
h2=ezplot(yc,[0,1]);
set(h2,'color','b','linewidth',2);
title('OVERDAMPED');
%% cau d
L=3;R=201;C=300e-6;
yd=subs(nghiem)
figure
h3=ezplot(yd,[0,1]);
set(h3,'color','b','linewidth',2);
title('CRITICALLY DAMPED');