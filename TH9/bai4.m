clc,clear
x=0:0.05:4;
for k=1:length(x)
    St=@(t)sin(t.^2);
    Ct=@(t)cos(t.^2);
    Sx(k)=quad(St,0,x(k));
    Cx(k)=quad(Ct,0,x(k));
end
figure
plot(x,Sx,'-b','linewidth',2);
hold on
plot(x,Cx,'--r','linewidth',2);
legend('S(x)','C(x)');
figure
plot(Cx,Sx,'linewidth',2);
