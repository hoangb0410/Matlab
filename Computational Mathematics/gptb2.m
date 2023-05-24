function gptb2(a ,b ,c)
if a==0
    if b~=0 
        fprintf('Phuong trinh co nghiem thuc x=%8.7f\n',-c/b)
    else b==0
        fprintf('Nhap lai he so a, b, c\n')
        return
    end
else a~=0
    fprintf('Phuong trinh ton tai nghiem thuc.\n')
end
end