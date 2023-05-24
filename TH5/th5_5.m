clc
tam=input('Nhap toa do tam: ')
r=input('Nhap ban kinh: ')
fi=0:0.01:2*pi;
x=r*cos(fi);
y=r*sin(fi);
figure
plot(x+tam(1),y+tam(2),'linewidth',2);hold on
plot(tam(1),tam(2),'s','markeredgecolor','b','markerfacecolor','b');
text(tam(1),tam(2)-0.2,sprintf('TAM (%d,%d)',tam(1),tam(2)),'horizontalalignment','center','verticalalignment','top');
text(tam(1),tam(2)-0.75,sprintf('BAN KINH = %d',r),'horizontalalignment','center','verticalalignment','top');
title(sprintf('Toa do tam [%d %d]\nBan kinh %d',tam(1),tam(2),r));
axis equal
