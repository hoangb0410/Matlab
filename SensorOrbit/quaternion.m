function kq=quaternion(p,a,theta)
qa=[0,p]
qb=[cos(theta/2),a*sin(theta/2)]
qpphay=[cos(theta/2),-a*sin(theta/2)]
qpd=qpphay.*qa.*qb
end