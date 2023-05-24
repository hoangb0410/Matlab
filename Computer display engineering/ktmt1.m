U=load('Vietnam_all.dat');
x1=U(:,1);
y1=U(:,2);
figure()
subplot(3,1,1);
plot(x1,y1,'.r'); hold on
title('Toa do ban do viet nam','fontsize',12,'fontweight','b');
xlabel('Kinh do');
ylabel('Vi do');
xscal=2;
yscal=1;
x2=x1*xscal;
y2=y1*yscal;
subplot(3,1,2);
plot(x2,y2,'.g');
title('Toa do ban do viet nam','fontsize',12,'fontweight','b');
xlabel('Kinh do');
ylabel('Vi do');
alpha=45;
x3=x1*cos(alpha)-y1*sin(alpha);
y3=x1*sin(alpha)+y1*cos(alpha);
subplot(3,1,3);
plot(x3,y3,'.b');
title('Toa do ban do viet nam','fontsize',12,'fontweight','b');
xlabel('Kinh do');
ylabel('Vi do');
axis square;
axis equal;
