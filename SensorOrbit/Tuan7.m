xdv=[1;0;0];
ydv=[0;1;0];
zdv=[0;0;1];
subplot(2,2,1)
z=quiver3(0,0,0,0,0,1,1,'color','g');
hold on
y=quiver3(0,0,0,0,1,0,1,'color','b');
x=quiver3(0,0,0,1,0,0,1,'color','r');
x1=Rcd(3,0,0)*xdv;
y1=Rcd(3,0,0)*ydv;
z1=Rcd(3,0,0)*zdv;
subplot(2,2,2)
z=quiver3(0,0,0,z1(1),z1(2),z1(3),1,'color','g');
hold on
y=quiver3(0,0,0,y1(1),y1(2),y1(3),1,'color','b');
x=quiver3(0,0,0,x1(1),x1(2),x1(3),1,'color','r');
%% test
RXYZ=Rcd(3,0,0);
[a,phy]=Euler(RXYZ)
kq=R(phy,a);
%yi=quaternion(3,0,0,phy)
subplot(2,2,3)
z=quiver3(0,0,0,0,0,1,1,'color','g');
hold on
y=quiver3(0,0,0,0,1,0,1,'color','b');
x=quiver3(0,0,0,1,0,0,1,'color','r');
for j=0:0.1:3
    x1=Rcd(j,0,0)*xdv;
    y1=Rcd(j,0,0)*ydv;
    z1=Rcd(j,0,0)*zdv;
    z=quiver3(0,0,0,z1(1),z1(2),z1(3),1,'color','g');
    y=quiver3(0,0,0,y1(1),y1(2),y1(3),1,'color','b');
    x=quiver3(0,0,0,x1(1),x1(2),x1(3),1,'color','r');
    pause(0.2);
    if (j~=3)
        delete(x);
        delete(y);
        delete(z);
    end
end

