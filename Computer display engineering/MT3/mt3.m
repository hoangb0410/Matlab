clc,clear
U=load('U_tinh_toan.txt');
x1=U(:,1);
y1=U(:,2);
plot(x1,y1,'-b','linewidth',1.5); hold on
U1=load('U_do_dac.txt');
x2=U1(:,1);
y2=U1(:,2);
plot(x2,y2,'*r');
title('Bieu do');
text(20,1,'Bai2','color','r')
ylabel('thoigian (gio)');
xlabel('van toc (m/s)');
legend('tinh toan','do dac');