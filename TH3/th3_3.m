clc,clear
x=linspace(-pi,pi);
c='rgbcmyk';
figure
for a=1:7
    y=(x.^2)./a;
    plot(x,y,c(a),'linewidth',2.5);
    hold on
    plot(x,y,'r')
end
ylim([-1,20])
title('y=x^2/\alpha','fontsize',16)
legend('\alpha=1','\alpha=2','\alpha=3','\alpha=4','\alpha=5','\alpha=6','\alpha=7')