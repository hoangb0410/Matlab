function quangduong=quydaobia(a,b,x0,y0,v0,teta,w)
S=-v0^2/(2*w);
quangduong=S;
xd=x0;yd=y0;
plot([a a 0 0 a],[0 b b 0 0],'b','linewidth',2); hold on
while S>0
    [x1,y1,teta1]=diemtieptheo(a,b,x0,y0,teta);
    Sgc=S;
    S=S-sqrt((x1-x0)^2+(y1-y0)^2);
    if S>0
        plot([x0 x1],[y0 y1],'r','linewidth',2);
        x0=x1;
        y0=y1;
        teta=teta1;
    end
end
disp(teta);
x1=x0+Sgc*cosd(teta);
y1=y0+Sgc*sind(teta);
plot([x0 x1],[y0 y1],'r','linewidth',2);
plot(x1,y1,'sk','markerfacecolor','k','linewidth',2.5);
plot(xd,yd,'ob','markerfacecolor','b','linewidth',2.5);
axis equal
axis([-10,a+10,-10,b+10])
