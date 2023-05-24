syms x
S1=x^2*(x-6)+4*(3*x-2)
S2=(x+2)^2-8*x
%% Toi gian S1S2
a=simplify(S1*S2)
%% Toi gian S1/S2
b=simplify(S1/S2)
%% Toi gian S1+S2
c=simplify(S1+S2)
%% Dung lenh subs de tinh ket qua cau c voi x=[1,2,3,4,5]
R=subs(c,x,[1,2,3,4,5])
