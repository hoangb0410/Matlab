clc,clear
syms L R C t i;
nghiem=dsolve('L*D2i+R*Di+1/C*i=0','Di(0)=8','i(0)=0')
%% cau b
L=3;R=10;C=80e-6;
Ib=subs(nghiem);
figure
h1=ezplot(Ib,[0:0.01:1]);
set(h1,'linewidth',2);
%% cau c
L=3;R=200;C=1200e-6;
Ic=subs(nghiem);
figure
h2=ezplot(Ic,[0:0.01:1]);
set(h2,'linewidth',2);
