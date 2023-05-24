function bai6
    [x,y]=ode45(@F,[0:0.1:2*pi],[1,0]);
    figure
    plot(x,cos(2*x),'--r');hold on
    plot(x,y(:,1),'ob','markerfacecolor','b')
    legend('nghiem giai tich','nghiem ode');
    axis([0,2*pi,-1,2])
function dy=F(x,y)
    dy(1,1)=y(2);
    dy(2,1)=-4*cos(2*x);