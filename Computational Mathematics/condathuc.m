function kq=condathuc(u,v)
d1=length(u);
d2=length(v);
n=max(d1,d2);
u=[zeros(1,n-d1),u]
v=[zeros(1,n-d2),v]
kq=u+v;