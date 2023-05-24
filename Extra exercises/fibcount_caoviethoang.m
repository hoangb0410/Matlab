function [n,y]= fibcount_caoviethoang( u )
n=0;
if length(u)==0
   u(1)=0;
end
    if ktra(u(1))==1
        n=1;
        y(1)=u(1);
    end
    for i=1:length(u)
        if ktra(u(i))==1
            n=n+1;
            y(n)=u(i);
        end
    end
    if n==0 
        y=[];
    else
        y=sort(y);
    end
    i=1;
    while i<length(y)
        for j=length(y):-1:(i+1)
            if y(j)==y(i)
                y(j)=[];
            end
        end
        i=i+1;
    end
    n=length(y);
function x=ktra(a)
    f1=1;
    f2=1;
    f3=2;
   if a<1
       x=0;
   elseif a<4
       x=1;
   else
       while f3<a
           f1=f2;
           f2=f3;
           f3=f1+f2;
       end
       if f3==a
           x=1;
       else
           x=0;
       end
           
   end
