function ptb2(a,b,c)
clc
delta=b*b-2*a*c
if delta<0
    disp('Phuong trinh vo nghiem')
elseif delta>0
    x1=(-b+sqrt(delta))/(2*a);
    x2=(-b-sqrt(delta))/(2*a);
    disp('Phuong trinh co 2 nghiem thuc la: ',x1,x2);
elseif delta==0
    disp('Phuong trinh co nghiem kep: ',-b/(2*a));
end