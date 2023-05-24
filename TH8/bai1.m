p1=[1 0];p2=[1 1];p3=[1 2];
x=roots(conv(p1,conv(p2,p3))+[0 0 0 -1716]);
x1=x(imag(x)==0);
kq=[x1,x1+1,x1+2]