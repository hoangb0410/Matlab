function [a,phy]=Euler(RXYZ)
phy=acos((RXYZ(1,1)+RXYZ(2,2)+RXYZ(3,3)-1)/2);
a1 = [RXYZ(3,2) - RXYZ(2,3); RXYZ(1,3) - RXYZ(3,1); RXYZ(2,1) - RXYZ(1,2)];
a = a1 / norm(a1);
end