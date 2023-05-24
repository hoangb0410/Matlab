clc,clear
k=0.2:0.1:0.7;
V=8000;
b=(4*V./(pi.*pi.*(k.*k-1).*(k-1))).^(1/3);
a=k.*b;
S=pi*pi*(b.^2+a.^2);
kq=[k',a',b',S'];
fprintf('K\t\ta\t\tb\t\tS\n');
fprintf('%.1f\t\t%.2f\t%.2f\t%.3f\n',kq');
file1=fopen('ketqua.txt','w');
fprintf(file1,'K\ta\tb\tS\n');
fprintf(file1,'%.1f\t%.2f\t%.2f\t%.3f\n',kq');
fclose(file1);


