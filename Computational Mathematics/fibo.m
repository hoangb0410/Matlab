function y=fibo(n)
y1=round(rand(1,n)*10);
y2=round(rand(1,n)*10);
y=[y1;y2];
for k=3:n
    y(k,:)=y(k-1,:)+y(k-2,:);
end