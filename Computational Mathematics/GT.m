function [Q]=GT(n);
if n<0
    disp('Nhap lai');
else
    Q=1;
    for i=1:n
    Q=Q*i
    end
end