%Este programa aplica o método de Newton-Raphson
%para solução de equações não-lineares
clear
close
clc

%Dados de entrada
f=@(x)x^3-x-1;
df=@(x)3*x^2-1;
x=1;
tol=1e-4;
kmax=20;
%Estimativa inicial
k=1;
F=f(x);
D=df(x);
ER=inf;

fprintf(' k         xk            ER          |f(xk)|\n')
fprintf('%2d  %15.12f  %15.12e %15.12e\n',k,x,ER,abs(f(x)))

%Processo iterativo
%while ER>tol
while abs(f(x))>tol
%while k<kmax   
   k=k+1;
   aux=x;
   x=x-F/D;
   F=f(x);
   D=df(x);   
   ER=abs((x-aux)/x);
   fprintf('%2d  %15.12f  %15.12e %15.12e\n',k,x,ER,abs(f(x)))
end







