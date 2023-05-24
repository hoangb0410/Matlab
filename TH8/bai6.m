clc,clear
H=[0:3:33];
D=[1.2,0.91,0.66,0.47,0.31,0.19,0.12,0.075,0.046,0.029,0.018,0.011];
figure
subplot(2,2,1)
plot(H,D,'o');
subplot(2,2,2)
semilogx(H,D,'o');
subplot(2,2,3)
semilogy(H,D,'o');
subplot(2,2,4)
loglog(H,D,'o');
%Chon x tuyen tinh, y logarit y=b*e^(mx)
p=polyfit(H,log(D),1);
m=p(1);b=exp(p(2));
x=0:0.1:33;
y=@(x)b*exp(m*x);
figure
plot(x,y(x),'-r','linewidth',2);
hold on
plot(H,D,'o','markersize',8);