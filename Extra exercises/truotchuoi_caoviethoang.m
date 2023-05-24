function outstr=truotchuoi_caoviethoang(instr,n)
    if n>26
        n=rem(n,26);
    end
    chuoi='abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz';
    i=0;
    for i=1:length(instr)
        for j=1:26
            if chuoi(j)==instr(i)
                instr(i)=chuoi(j+n);
                break;
            end
        end
    end
    outstr=instr;
    