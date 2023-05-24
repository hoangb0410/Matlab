function dongho_caoviethoang(h,m,s)
    fi=0:0.01:2*pi ;
    x=10*cos(fi);
    y=10*sin(fi);
    fill(x,y,'y');hold on
    plot(x,y,'k','linewidth',2);hold on
    goc=pi/2;
    for gio=1:12
        goc=goc-pi/6;
        text(8.5*cos(goc),8.5*sin(goc),num2str(gio),'fontsize',12)
    end
    plot([-2*sin(s*pi/30) 8.2*sin(s*pi/30)],[-2*cos(s*pi/30) 8.2*cos(s*pi/30)],'linestyle','-','linewidth',1,'color','r');
    m1=m+s/60;
    plot([-2*sin(m1*pi/30) 7*sin(m1*pi/30)],[-2*cos(m1*pi/30) 7*cos(m1*pi/30)],'linestyle','-','linewidth',3,'color','r');
    h1=h+m/60+s/3600;
    p=plot([-2*sin(h1*pi/6) 5*sin(h1*pi/6)],[-2*cos(h1*pi/6) 5*cos(h1*pi/6)],'linestyle','-','linewidth',6,'color','r');
    plot(0,0,'s','markeredgecolor','b','markerfacecolor','b','marker','o','linewidth',4);
    text(0,-13,[num2str(h),':',num2str(m),':',num2str(s)],'horizontalalignment','center','verticalalignment','top','fontsize',13)
    axis equal
    axis([-18 18 -18 18])
end

    