function k=cocachdeu(a)
x=diff(a);
k=1;
for i=1:length(x)-1
    if abs(x(i))~=abs(x(i+1))
        k=0;
    end
end