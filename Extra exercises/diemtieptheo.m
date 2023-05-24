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
    