clc,clear
fprintf('\t\t\t\t\t\t Temperature (F)\n');
T=[40:-10:-40];
v=[10:10:60]';
Twc=[];
for i=1:length(v)
    for j=1:length(T)
        Twc(i,j)=round(35.74+0.6215.*T(j)-35.75.*v(i).^0.16+0.4275.*T(j).*v(i).^0.16)                                                       ;
    end
end
kq=[v,Twc];
fprintf('    ');
fprintf('\t%4d',T);
fprintf('\n');
fprintf('Speed \n(mi/h) \n')
fprintf('%4d \t%4d \t%4d \t%4d \t%4d \t%4d \t%4d \t%4d \t%4d\t%4d \n',kq')



