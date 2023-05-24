function [x] = gauss_seidel(A,b,x0)
    %A=[10,-1,2,0;-1,11,-1,3;2,-1,10,-1;0,3,-1,8];
    %b=[6;25;-11;15];
    %x0=[0;0;0;0];
    format long
    n = length(b);
    x = x0;
    epxilon=0.001;
    x(1) = (b(1)-A(1,2:n)*x0(2:n))/A(1,1);
    relerr = norm(x-x0,inf)/(norm(x,inf)+eps);
    while relerr > epxilon
        x(1) = (b(1)-A(1,2:n)*x0(2:n))/A(1,1);
        for i = 2:n
            if i < n
                x(i) = (b(i)-A(i,1:i-1)*x(1:i-1)-A(i,i+1:n)*x0(i+1:n))/A(i,i);
            else
                x(n) = (b(n)-A(n,1:n-1)*x(1:n-1))/A(n,n);
            end
        end
        relerr = norm(x-x0,inf)/(norm(x,inf)+eps);
        x0 = x;
    end
end