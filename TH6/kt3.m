clc,clear
v=10:10:60;
T=[40:-10:-40];
Twc=[];
for i=1:length(v)
    for j=1:length(T)
        Twc(i,j)=35.74+0.6215.*T(j)-35.75.*v(i)^0.16+0.4275.*T(j).*v(i)^0.16;
    end
end
kq=[v',Twc];
fprintf('\t\t\t\t\t\t\tTemperature\n');
fprintf('\t');
fprintf('\t%d\t',T);
fprintf('\n');
fprintf('Speed\n(mi/h)\n');
fprintf(' %.0f\t\t%.0f\t\t%.0f\t\t%.0f\t\t%.0f\t\t%.0f\t\t%.0f\t\t%.0f\t\t%.0f\t\t%.0f\n',kq');
% Luu vao tep
f=fopen('Result.txt','w');
fprintf(f,'\t\t\t\t\t\tTemperature\n');
fprintf(f,'\t');
fprintf(f,'\t%d\t',T);
fprintf(f,'\n');
fprintf(f,'Speed\n(mi/h)\n');
fprintf(f,' %.0f\t\t%.0f\t\t%.0f\t\t%.0f\t\t%.0f\t\t%.0f\t\t%.0f\t\t%.0f\t\t%.0f\t\t%.0f\n',kq');
fclose(f);