function x=Nth_prime_caoviethoang(n)
    if n<1
        x='';
    else
        x=1;
        for count=1:n
            while nto(x)==0
                x=x+1;
            end;
            x=x+1;
        end
        x=x-1;
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
