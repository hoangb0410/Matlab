A = randi ( [0,10], randi ( [3,7] ), randi ( [3,7] ) );
D=sort(A')'
F=sortrows(A')'
G=flipud(sortrows(A))
H=[A(1:2:end,end)]
K=length(find(A>=4&A<=8))
S=sum(A(find(A>=4&A<=8)))