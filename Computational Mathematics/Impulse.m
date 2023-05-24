syms t;   % t is a variable 
impulseResponce=exp(-t); 
input=sin(t); 
k=laplace(impulseResponse)*laplace(input);   % product of laplace transforms
output=ilaplace(k);   % inverse laplace transform 