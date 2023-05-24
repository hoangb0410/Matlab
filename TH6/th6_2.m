clc,clear
V=8000;
k=[0.2:0.1:0.7]';
b=(4*V./(pi.*pi.*(k.*k-1).*(k-1))).^(1/3);
a=k.*b;
S=pi*pi.*(b.*b-a.*a);
kq=[k,a,b,S];
fprintf('k \t\t a\t\t b\t\t S\n');
fprintf('%.1f \t %.2f\t %.2f\t %.3f\n',kq');
file1=fopen('ketqua.txt','w');
fprintf(file1,'k \t a\t b\t S\n');
fprintf(file1,'%.1f \t %.2f\t %.2f\t %.3f\n',kq');
fclose(file1);