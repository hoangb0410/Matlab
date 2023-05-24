function quangduong=quydaobia_caoviethoang(a,b,x0,y0,v0,teta,w)
S=-v0^2/(2*w);
quangduong=S;
xd=x0;yd=y0;
figure
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
plot(xd,yd,'ob','markerfacecolor','b','linewidth',2.5);
plot(x1,y1,'sk','markerfacecolor','k','linewidth',2.5);
axis equal
axis([-10,a+10,-10,b+10])
function [x2,y2,teta2]=diemtieptheo(a,b,x1,y1,teta1)
    goc1=atand((b-y1)/(a-x1));
    goc2=180-atand((b-y1)/x1);
    goc3=180+atand(y1/x1);
    goc4=360-atand(y1/(a-x1));
    if goc1<teta1 & teta1<goc2
        teta2=360-teta1;
        y2=b;
        x2=x1+(b-y1)/tand(teta1);
    end;
    if goc2<teta1 & teta1<goc3
        teta2=180-teta1;
        if teta2<0
            teta2=360+teta2;
        end;
        x2=0;
        y2=y1+x1*tand(180-teta1);
    end;
    if goc3<teta1 & teta1<goc4
        teta2=360-teta1;
        y2=0;
        x2=x1+y1/tand(teta2);
    end;
    if teta1<goc1 | teta1>goc4
        teta2=180-teta1;
        if teta2<0
            teta2=360+teta2;
        end
        x2=a;
        y2=y1+(a-x1)*tand(teta1);
    end
    if teta1==goc1
        teta2=teta1+180;
        y2=b;
        x2=a;
    end
    if teta1==goc2
        teta2=teta1+180;
        y2=b;
        x2=0;
    end
    if teta1==goc3
        teta2=teta1-180;
        y2=0;
        x2=0;
    end
    if teta1==goc4
        teta2=teta1-180;
        y2=0;
        x2=a;
    end
    