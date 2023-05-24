clear all;
syms theta r;
Me=5.972*10^24;  %%Khoi luong trai dat
g=6.6743*10^-11; 

muy=Me*g;
Alpha=OrbitFromStateVector([-4*10^7;-1.85*10^7;-3*10^6],[-75;-1.52*10^3;-823],muy)
r3d=OrbitPolarFunction(Alpha,theta);
S=StateVectorFromOrbit(Alpha(1),Alpha(2),Alpha(3),Alpha(4),Alpha(5),0,muy)
figure
quiver3(0,0,0,1,0,0,10^7,'color','r')
hold on;
axis equal;
quiver3(0,0,0,0,1,0,10^7,'color','b')
quiver3(0,0,0,0,0,1,10^7,'color','b')
plot3(0,0,0,'marker','o','markersize',12,'MarkerFaceColor','b','color','b')

o=fplot3(r3d(1),r3d(2),r3d(3),[0 2*pi],"Color","Magenta")

qr=quiver3(0,0,0,S(1),S(2),S(3),1,'color','r')
qv=quiver3(S(1),S(2),S(3),S(4),S(5),S(6),10^3,'color','b')
p=plot3(S(1),S(2),S(3),'marker','o','markersize',6,'MarkerFaceColor','r','color','b')
drawnow;
N=500;
for i=1:1:N
    S=StateVectorFromOrbit(Alpha(1)*0.999,Alpha(2),Alpha(3),Alpha(4),Alpha(5),i*6*pi/N,muy)
    
    r=[S(1);S(2);S(3)];
    v=[S(4);S(5);S(6)];    
    rt= OrbitPolarFunction(Alpha,theta);

    o.XFunction= rt(1);
    o.YFunction= rt(2);
    o.ZFunction= rt(3);

    rx(i)=r(1);
    ry(i)=r(2);
    rz(i)=r(3);

    p.XData=r(1);
    p.YData=r(2);
    p.ZData=r(3);

    qr.UData = double(r(1));
    qr.VData = double(r(2));
    qr.WData = double(r(3));

    qv.XData=qr.UData;
    qv.YData=qr.VData;
    qv.ZData=qr.WData;
    qv.UData=double(S(4));
    qv.VData=double(S(5));
    qv.WData=double(S(6));

    plot3(rx(1:i),ry(1:i),rz(1:i),"color","k");
    drawnow();
    pause(0.2);
    
    Alpha=OrbitFromStateVector(r,v,muy);
end
function r3d=OrbitPolarFunction(Alpha,theta)   
   a=Alpha(1);
   e=Alpha(2);
   i=Alpha(3);
   om=Alpha(4);
   w=Alpha(5);
   M=Alpha(6);
   OXYZ=[cos(om) -sin(om) 0;sin(om) cos(om) 0;0 0 1]*[1 0 0;0 cos(i) -sin(i);0 sin(i) cos(i)]*[cos(w) -sin(w) 0;sin(w) cos(w) 0;0 0 1];
   p=a*(1-e^2);    
   r=p./(1+e*cos(theta));
   rx=r*cos(theta);
   ry=r*sin(theta);
   r3d=OXYZ*[rx;ry;0];
end

function Alpha=OrbitFromStateVector(r,v,muy)
    h = cross(r,v);
    n = cross(repmat([0;0;1],[1,size(r,2)]),h);
    absn = norm(n);
    absr = norm(r);
    absh = norm(h);
    absv = norm(v);
    e_vec = cross(v, h) / muy - r / absr;
    e = norm(e_vec);
    zeta = muy./absr-(absv.^2)./2;
    a=muy./(2.*zeta);
    i = acos(h(3,:)./absh);
    if n(2)>=0
       om=acos((n(1))/absn);
    else
       om=2*pi-acos((n(1))/absn);
    end
   
    if e_vec(3)>=0
       w=acos(dot(n, e_vec) / (absn * e));
    else
        w= 2 * pi - acos(dot(n, e_vec) / (absn * e));
    end   
    if  dot(r,v) >= 0
        M = acos(dot(e_vec,r)./(e.*absr));
    else dot(r,v) < 0
        M= 2*pi -acos(dot(e_vec,r)./(e.*absr)); 
    end
    Alpha=[a;e;i;om;w;M];
end
function S=StateVectorFromOrbit(a,e,i,om,w,M,muy)
   syms x real
   v=vpasolve(x-e*sin(x)==M,x);
   theta=2*atan(sqrt((1+e)/(1-e))*tan(v/2));
   OXYZ=[cos(om) -sin(om) 0;sin(om) cos(om) 0;0 0 1]*[1 0 0;0 cos(i) -sin(i);0 sin(i) cos(i)]*[cos(w) -sin(w) 0;sin(w) cos(w) 0;0 0 1];
   p=a*(1-e^2);    
   r=p./(1+e*cos(theta));
   rx=r*cos(theta);
   ry=r*sin(theta);
   r3d=OXYZ*[rx;ry;0];
   h=sqrt(r*(1 + e * cos(theta))*muy);
   v=muy/h;
   v_w = v .* [-sin(theta) e + cos(theta) 0];
   vas=[v_w(1,1);v_w(1,2);v_w(1,3)];
   V3d=OXYZ*vas;
   S=[r3d(1);r3d(2);r3d(3);V3d(1);V3d(2);V3d(3)];
end
   
    
    
