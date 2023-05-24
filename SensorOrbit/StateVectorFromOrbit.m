function S=StateVectorFromOrbit(a,e,i,om,w,M,muy)
   syms x real
   v1q=vpasolve(x-e*sin(x)==M,x);
   theta=2*atan(sqrt((1+e)/(1-e))*tan(v1q/2));
   OXYZ=[cos(om) -sin(om) 0;sin(om) cos(om) 0;0 0 1]*[1 0 0;0 cos(i) -sin(i);0 sin(i) cos(i)]*[cos(w) -sin(w) 0;sin(w) cos(w) 0;0 0 1];
   p=a*(1-e^2);    
   r=p./(1+e*cos(theta));
   rx=r*cos(theta);
   ry=r*sin(theta);
   r3d=OXYZ*[rx;ry;0];
   h=sqrt(r*(1 + e * cos(theta))*muy);
   v=muy/h;   
   rp=a*(1-e)
   ra=a*(1+e)
   vp1=sqrt(2*(muy/ra-muy./(2*a)))
   vp2=sqrt(2*(muy/ra-muy./(0.5*rp+2*a)))
   Oxyzv2=vp2.*[0;1;0]
   V=OXYZ*Oxyzv2
   v_w = v .* [-sin(theta) e + cos(theta) 0];
   vas=[v_w(1,1);v_w(1,2);v_w(1,3)];
   V3d=OXYZ*vas
   if (M==pi)
       diff=abs(M-pi);
       S=[r3d(1);r3d(2);r3d(3);V(1);V(2);V(3)];
   else
       S=[r3d(1);r3d(2);r3d(3);V3d(1);V3d(2);V3d(3)];
   end
   
end