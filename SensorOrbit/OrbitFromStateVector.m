function alpha=OrbitFromStateVector(r,v,muy)
a=muy/(2*(muy/r-(v^2)/2));
end
%%
function r3D=OrbitPolarFunction(alpha,theta)
a=alpha(1);
e=alpha(2);
i=alpha(3);
Omega=alpha(4);
omega=alpha(5);
M=alpha(6);
t=alpha(7);
muy=alpha(8);
R=[cos(omega) -sin(omega) 0; sin(omega) cos(omega) 0; 0 0 1]* ...
  [1 0 0; 0 cos(i) -sin(i); 0 sin(i) cos(i)]*...
  [cos(Omega) -sin(Omega) 0; sin(Omega) cos(Omega) 0; 0 0 1];
r=(a*(1-e^2))/(1+e*cos(theta));
rx=r*cos(theta);
ry=r*sin(theta);
r3D=R*[rx;ry;0];
end