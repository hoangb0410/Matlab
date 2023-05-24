clc,clear
%% Cau a
syms L Lc W d;
T=simple(W*L*Lc/(d*(Lc^2-d^2)^(1/2)))
Fy=simple(W-T*(Lc^2-d^2)^(1/2)/Lc)
Fx=simple(T*d/Lc)
%% Cau b
Tb=subs(T,{W,L,Lc},{200,120,66})
Fyb=subs(Fy,{W,L,Lc},{200,120,66})
Fxb=subs(Fx,{W,L,Lc},{200,120,66})
F=simple(sqrt(Fxb^2+Fyb^2))
%% Cau c
d=[20:0.01:70];
figure
h2=ezplot(Tb,[20:70]);hold on
set(h2,'color','r','linewidth',2);
h1=ezplot(F,[20:70]);
set(h1,'color','b','linewidth',2);
title('Do thi T va F');
legend('F','T',2);
%% Cau d
d=[20:70];
Tb=subs(Tb);
[gt,vt]=min(Tb);
dmin=d(vt);
Tmin=gt;
plot(dmin,Tmin,'ok','markerfacecolor','k');
text(45,1400,sprintf('d_{min}=%.3f; T_{min}=%.3f',dmin,Tmin),'fontsize',15,'verticalalignment','top','horizontalalignment','center');
axis([20,70,400,2000])