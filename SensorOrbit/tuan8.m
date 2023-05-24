I=[20 -10 0;-10 30 0;0 0 40]
syms lamda;
f=det(I-eye(3)*lamda)
h=solve(f)