clc,clear
syms Fx T d Lc Fy W L;
eq1=Fx-T*d/Lc;
eq2=Fy+T*sqrt(Lc^2-d^2)/Lc -W;
eq3=T*sqrt(Lc^2-d^2)/Lc*d-W*L;
%% Cau a
nghiem = solve(eq1,eq2,eq3,T,Fx,Fy);
Fx0=nghiem.Fx
Fy0=nghiem.Fy
T0=nghiem.T
%% Cau b
W=200; L=120; Lc=66;
T0= simplify(subs(T0))
Fx0=simplify(subs(Fx0))
Fy0=simplify(subs(Fy0))
F=simplify(sqrt(Fx0^2+Fy0^2))
%% Cau c
figure
h1=ezplot(F,[20,70]);
set(h1,'linewidth',2,'color','b')
hold on
h2=ezplot(T0,[20,70]);
set(h2,'linewidth',2,'color','r')
axis([20,70,300,2000]);
legend('F','T',2)
title('Do thi T va F','fontsize',15)
%% Cau d
d=20:1:70;
T0=subs(T0);
[gt,vt]=min(T0);
dmin=d(vt);
Tmin=gt;
plot(dmin,Tmin,'ok','markerfacecolor','k');
text(25,1400,sprintf('d_{min}=%.3f; T_{min}=%.3f',dmin,Tmin),'fontsize',15,'verticalalignment','top','horizontalalignment','left');
