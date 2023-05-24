U1=load('Hs_cal_meas.dat');
x1=U1(:,1);
y1=U1(:,2);
figure();
subplot(2,1,1);
plot(x1,'b');hold on
plot(y1,'r');
subplot(2,1,2);
scatter(x1,y1,'y1');
hold on
