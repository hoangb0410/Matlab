function [x,k]=chiadoi(f,a,b,ep)
format long
Nmax=100;%%loi 1
k=0;
while (abs(b-a)>ep)&&(k<Nmax)
    c=(a+b)/2;
    k=k+1;
    if subs(f,c)==0
        x=c;
        return;
    if subs(f,a)*subs(f,c)>0
        a=c;
    else
        b=c;
    end
    end
x=c;
end