clc,clear
syms Fx T d Lc Fy W L
eq1=Fx-T*d/Lc;
eq2=Fy+T*sqrt(Lc^2-d^2)/Lc -W;
eq3=T*sqrt(Lc^2-d^2)/Lc*d-W*L;
%% Cau a
disp('cau a')
nghiem = solve (eq1,eq2,eq3,T,Fx,Fy);
Fx0=nghiem.Fx,
Fy0=nghiem.Fy,
T0=nghiem.T
%% Cau b
disp('cau b')
W=200;
L=120;
Lc=66;
T=subs(T0)
%T0=simple(subs(T0))
Fx=subs(Fx0)
%Fx0=simple(subs(Fx0))
Fy=simple(subs(Fy0))
F=simplify(sqrt(Fx0^2+Fy0^2))
%% Cau c
figure
F=subs(F);
d=[20:70];
ezplot(F,d);
hold on
h1=ezplot(T,d);
set(h1,'color','k');
legend(2,'F','T')
title('Do thi T va F');
axis([20,70,300,2000])
%% Cau d
d=[20:70];
T0=subs(T0);
[gt,vt]=min(T0);
dmin=d(vt);
Tmin=gt;
hold on;
plot(dmin,Tmin,'markerfacecolor','k')

