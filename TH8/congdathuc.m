function p=congdathuc(x,y)
n=max(length(x),length(y));
x=[zeros(1,n-length(x)),x];
y=[zeros(1,n-length(y)),y];
p=x+y;