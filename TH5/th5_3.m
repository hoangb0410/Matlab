x=-pi:0.01:pi;
figure
c='rgbcmyk';
for alpha=1:7
    y=(x.^2)./alpha;
    p=plot(x,y,c(alpha),'linewidth',2.5);hold on
end
ylim([-1 20]);
title('Y=X^2/\alpha');
legend('\alpha=1','\alpha=2','\alpha=3','\alpha=4','\alpha=5','\alpha=6','\alpha=7')