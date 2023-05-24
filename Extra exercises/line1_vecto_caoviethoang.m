function line1 = line1_vecto_caoviethoang( a )
    n=length(a);
    line1=0;
    for i=1:n
        dem=0;
        for j=i:n
            if a(j)==1
                dem=dem+1;
            else
                break;
            end
        end
        if dem>line1
            line1=dem;
        end
    end
end
