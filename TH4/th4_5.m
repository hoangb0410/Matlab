n=0;s=0;
x=input('x=');
s1=((-1)^n)*x^(2*n+1)/factorial(2*n+1);
E=abs((s-s1)/s1)
while E >= 10^(-6)
    s=s1;
    s1=s+((-1)^n)*x^(2*n+1)/factorial(2*n+1);
    E=abs((s-s1)/s1);
    n=n+1;
end
disp('Ket qua: ');
disp(s);

