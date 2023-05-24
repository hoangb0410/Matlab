clc,clear
x=[0:0.05:4];
for k=1:length(x)
    S=@(t)sin(t.^2);
    C=@(t)cos(t.^2);
    Sx(k)=quad(S,0,x(k));
    Cx(k)=quad(C,0,x(k));
end
figure
plot(x,Sx,'-b','linewidth',2);hold on
plot(x,Cx,'--r','linewidth',2);
legend('S(x)','C(x)');
figure
plot(Cx,Sx,'linewidth',2);