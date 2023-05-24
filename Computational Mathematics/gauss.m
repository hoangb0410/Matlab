function [B,X] = gauss(A,b)
if nargin <1 error ('phai nhap vao ma tran can phan tich');
end;
N = size(A,1);%1 la dong,2 la cot,i la hang,j la cot
m = size(A,2)+1;
z = size(b,1);
t = size(b,2);
c=b;
if t>z
for j=1:t % chuyen vi ma tran
for i=1:z
b(j,i)=c(i,j);
end;
end;
b=b(:,1:z);
end;
if z>t
b=c;
end;
z = size(b,1);
t = size(b,2);
l=[A b];i=1;
d=0;
for h=1:N
k=l(h:N,:);%chon hang thu h den N
k=k(:,h:m); %chon cot thu h den m
for j=1:(m-h+1)
for i=1:(N-h+1)
if k(i,j)~=0
e=i;
if h==1
f=j;
end;
if h~=1
f=1;
end;
break;
end;
end;
if k(i,j)~=0
break;
end;
end;%tim phan tu khac 0 dau tien de hoan doi
k=circshift(k, [-(e-1), -(f-1)]);
p=[l(1:(h-1),h:m);k];
l=[l(1:N,1:(h-1)) p];
for g=h:(N-1)
for i=(g+1):N
if l(g,g)~=0
c=l(i,g)/l(g,g);
for j=g:m
l(i,j)=l(i,j)-(c*l(g,j));
end;
end;
if l(g,g)==0
break;
end;
end;
if l(g,g)==0
break;
end;
end;% bien doi so cap khu cac phan tu ben duoi
end;
B=l;
rA=0;
rB=0;
for s=1:N
i=N+1-s;
for j=1:(m-1)
if B(i,j)~=0
rA=i;
break;
end;
end;
if B(i,j)~=0
break;
end;
end;%tim hang ma tran he so
for s=1:N
i=N+1-s;
for j=1:m
if B(i,j)~=0
rB=i;
break;
end;
end;if B(i,j)~=0
break;
end;
end;% tim hang ma tran mo rong
if rA<rB
X= ('phuong trinh vo nghiem');
end;
if rA==rB
if rA<(m-1)
X= ('phuong trinh co vo so nghiem');
end;
u=0;
if rA==(m-1) %giai nghiem he theo phuong phap khu Gauss
for s=1:(m-1)
i=m-s;
if i==(m-1);
X(i)=B(i,m)/B(i,i);
end;
if i~=(m-1)
for c=1:(s-1)
y=m-c;
u=u+X(y)*B(i,y);
X(i)=(B(i,m)-u)/B(i,i);
end;
end;
u=0;
end;
end;
end;