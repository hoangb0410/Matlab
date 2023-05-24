function [n,y]=nguyentovongquanh_caoviethoang(a,b)
    y=[];n=0;
    for i=a:b
        if ktra(i)==1
            n=n+1;
            y(n)=i;
        end
    end
function kq=ktra(a)
    kq=1;
    x=[];
    a=num2str(a);
    chuoi=a;
    d=length(a);
    chuoi(d+1:2*d)=a;
    for i=1:d
        x(i)=str2num(chuoi(i:i+d-1));
        if nto(x(i))==0
            kq=0;
        end
    end
function kt=nto(a)
    kt=1;
    if a<2
        kt=0;
    elseif (a>2)&(rem(a,2)==0)
        kt=0;
    elseif (a>3)&(rem(a,3)==0)
        kt=0;
    else
            dem=0;
        for i=1:sqrt(a)
            if rem(a,i)==0
                dem=dem+1;
            end
        end
        if dem>1
            kt=0;
        end
    end

