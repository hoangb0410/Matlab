clc
x=1;
while rem(x,11)~=0 | sqrt(x)<=132 
    x=x+2;
end
disp(x);