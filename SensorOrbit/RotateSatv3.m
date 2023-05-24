clc;
format compact;

phi = 0                % Goc xoay theo truc X (Yaw)
theta = 0          % Goc xoay theo truc Y (Pitch)
xi = pi/1            % Goc xoay theo truc Z (Roll)

%out = sim('DCMotor',10);
S=gridbox([ones(12,3)]);  % function

quiver3(-50,-50,-50,100,0,0,1,'color','red')
hold on
axis equal
quiver3(-50,-50,-50,0,100,0,1,'color','green')
quiver3(-50,-50,-50,0,0,100,1,'color','blue')
plot3(-50, -50, -50, 'marker', 'o', 'markersize', 5,'MarkerFaceColor','b', 'color', 'c')

axis equal
axis ([-75 75 -75 75 -75 75])
view(3)
xlabel("x-axis")
ylabel("y-axis")
zlabel("z-axis")


Rx = [1 0 0; 0 cos(phi) -sin(phi); 0 sin(phi) cos(phi)];
Ry = [cos(theta) 0 sin(theta); 0 1 0; -sin(theta) 0 cos(theta)];
Rz = [cos(xi) -sin(xi) 0; sin(xi) cos(xi) 0; 0 0 1];
Rot=Rz*Ry*Rx;       % Vecto quay.

Ox = quiver3(0,0,0,1,0,0,50,'color','red');
Oy = quiver3(0,0,0,0,1,0,50,'color','green');
Oz = quiver3(0,0,0,0,0,1,50,'color','blue');
plot3(0, 0, 0, 'marker', 'o', 'markersize', 5,'MarkerFaceColor','b', 'color', 'c')
    %% Ve
M=Euler1(Rot);
% Oxyz = quiver3(0,0,0,M(1),M(2),M(3),50,'color','k');
% pause(3)

N=250;
for k = 1:1:N
    Phi=out.phi.Data(5*k);
    Theta=out.theta.Data(5*k);
    Xi=pi+out.xi.Data(5*k);

Rx = [1 0 0; 0 cos(Phi) -sin(Phi); 0 sin(Phi) cos(Phi)];
Ry = [cos(Theta) 0 sin(Theta); 0 1 0; -sin(Theta) 0 cos(Theta)];
Rz = [cos(Xi) -sin(Xi) 0; sin(Xi) cos(Xi) 0; 0 0 1];
Rot=Rz*Rx*Ry;   

    for i = 1:1:12
    B = Rot*[A(i,1); A(i,2); A(i,3)];
        for j = 1:1:3
            C(i,j)=B(j);
        end
    end
S=gridbox(C);

    Ox2=Rot*[1;0;0];
    Oy2=Rot*[0;1;0];
    Oz2=Rot*[0;0;1];
%     Oxyz2=Rot*[sqrt(3)/3;sqrt(3)/3;sqrt(3)/3];
    for i = 1:1:18
        q(i).XData = S(i,1);
        q(i).YData = S(i,2);
        q(i).ZData = S(i,3);
        q(i).UData = S(i,4);
        q(i).VData = S(i,5);
        q(i).WData = S(i,6);
    end
    Ox.UData = Ox2(1);
    Ox.VData = Ox2(2);
    Ox.WData = Ox2(3);
    Oy.UData = Oy2(1);
    Oy.VData = Oy2(2);
    Oy.WData = Oy2(3);
    Oz.UData = Oz2(1);
    Oz.VData = Oz2(2);
    Oz.WData = Oz2(3);    
%     Oxyz.UData = Oxyz2(1);
%     Oxyz.VData = Oxyz2(2);
%     Oxyz.WData = Oxyz2(3);
% 

    drawnow;
%     pause(0.015)

end
hold off


%%


function S=gridbox(A)
S=[  A(1,1) A(1,2) A(1,3) A(2,1)-A(1,1) A(2,2)-A(1,2) A(2,3)-A(1,3)         % Duoi
     A(2,1) A(2,2) A(2,3) A(3,1)-A(2,1) A(3,2)-A(2,2) A(3,3)-A(2,3)
     A(3,1) A(3,2) A(3,3) A(4,1)-A(3,1) A(4,2)-A(3,2) A(4,3)-A(3,3)
     A(4,1) A(4,2) A(4,3) A(1,1)-A(4,1) A(1,2)-A(4,2) A(1,3)-A(4,3)
     A(5,1) A(5,2) A(5,3) A(6,1)-A(5,1) A(6,2)-A(5,2) A(6,3)-A(5,3)         % Tren
     A(6,1) A(6,2) A(6,3) A(7,1)-A(6,1) A(7,2)-A(6,2) A(7,3)-A(6,3) 
     A(7,1) A(7,2) A(7,3) A(8,1)-A(7,1) A(8,2)-A(7,2) A(8,3)-A(7,3)
     A(8,1) A(8,2) A(8,3) A(5,1)-A(8,1) A(5,2)-A(8,2) A(5,3)-A(8,3)
     A(5,1) A(5,2) A(5,3) A(1,1)-A(5,1) A(1,2)-A(5,2) A(1,3)-A(5,3)         % Doc
     A(6,1) A(6,2) A(6,3) A(2,1)-A(6,1) A(2,2)-A(6,2) A(2,3)-A(6,3)
     A(7,1) A(7,2) A(7,3) A(3,1)-A(7,1) A(3,2)-A(7,2) A(3,3)-A(7,3)
     A(8,1) A(8,2) A(8,3) A(4,1)-A(8,1) A(4,2)-A(8,2) A(4,3)-A(8,3)
     A(5,1) A(5,2) A(5,3) A(9,1)-A(5,1) A(9,2)-A(5,2) A(9,3)-A(9,3)         % Canh
     A(6,1) A(6,2) A(6,3) A(10,1)-A(6,1) A(10,2)-A(6,2) A(10,3)-A(6,3)      
     A(7,1) A(7,2) A(7,3) A(11,1)-A(7,1) A(11,2)-A(7,2) A(11,3)-A(7,3)
     A(8,1) A(8,2) A(8,3) A(12,1)-A(8,1) A(12,2)-A(8,2) A(12,3)-A(8,3)
     A(9,1) A(9,2) A(9,3) A(10,1)-A(9,1) A(10,2)-A(9,2) A(10,3)-A(9,3)
     A(11,1) A(11,2) A(11,3) A(12,1)-A(11,1) A(12,2)-A(11,2) A(12,3)-A(11,3)
   ];

end
