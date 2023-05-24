function line1=line1_vuong_caoviethoang(a)
    [m n]=size(a);
    line1=0;p=1;q=1;
    a(m+1,n+1)=0;
    for i=1:m
        for j=1:n
           if a(i,j)==1
                dem=1;
                p=i+1;
                q=j+1;
                while a(p,q)==1
                    dem=dem+1;
                    p=p+1;
                    q=q+1;
                end
                if dem>line1
                    line1=dem;
                end
           end
        end
    end
    a(m+1,:)=[];
    a(:,n+1)=[];
    % lat ma tran theo chieu trai phai roi lam tuong tu
    a=fliplr(a);
    a(m+1,n+1)=0;
    for i=1:m
        for j=1:n
           if a(i,j)==1
                dem=1;
                p=i+1;
                q=j+1;
                while a(p,q)==1
                    dem=dem+1;
                    p=p+1;
                    q=q+1;
                end
                if dem>line1
                    line1=dem;
                end
           end
        end
    end
