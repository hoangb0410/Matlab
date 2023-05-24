clc, clear
global stt
load dulieu
format compact
n = size(data,1); kq = [];
for stt = n:-1:1
%   fprintf('\n\nCASE %d\n',stt);
    a = data(stt,1); b = data(stt,2);
    x0 = data(stt,3); y0 = data(stt,4);
    v0 = data(stt,5); teta = data(stt,6); w = data(stt,7);
    %% GOI FUNCTIONS GIAI BAI - CALL YOUR FUNCTIONS HERE 
    % input: a,b,x0,y0,v0,teta,w
    % output: quangduong  
     quangduong=quydaobia_caoviethoang(a,b,x0,y0,v0,teta,w)
    %% KET THUC VIEC GOI FUNTIONS GIAI BAI, HIEN THI KET QUA
    kq = [quangduong,kq];
end
kq = [[1:n];kq];
fprintf('\nCASE \tQUANG DUONG\n\n')
fprintf('%2.0f \t\t%8.3f \n',kq)