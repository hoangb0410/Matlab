clc,clear
syms d L Lc W Fax Fay T;
eq1=Fax-T*d/Lc;
eq2=Fay+T*(Lc^2-d^2)^(1/2)/Lc-W;
eq3=T*d*(Lc^2-d^2)^(1/2)/Lc-W*L;
%% cau a
nghiem=solve(eq1,eq2,eq3,Fax,Fay,T);
Fx=nghiem.Fax
Fy=nghiem.Fay
T=nghiem.T
Fa=sqrt(Fx^2+Fy^2)
%% cau b
L=120;W=200;Lc=66;
Fx=simple(subs(Fx))
Fy=simple(subs(Fy))
T=simple(subs(T))
Fa=simple(subs(Fa))
%% cau c
figure 
h1=ezplot(T,[20:0.1:70]);
set(h1,'color','r','linewidth',2)
hold on
h2=ezplot(Fa,[20:0.1:70]);
set(h2,'color','b','linewidth',2)
legend('T','F',2);
title('Do thi T va F','fontsize',15);
%% cau d
d=[20:0.1:70];
T=subs(T);
[Tmin,vt]=min(T);
dmin=d(vt);
plot(dmin,Tmin,'ok','markerfacecolor','k');
text(45,900,sprintf('d_{min}=%.3f; T_{min}=%.3f',dmin,Tmin),'verticalalignment','top','horizontalalignment','center','fontsize',12)