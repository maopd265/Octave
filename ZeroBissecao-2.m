%Este programa aplica o método da Bissecção
%para solução de equações não-lineares
clear
close
clc

%Dados de entrada
f=@(x)x^3-131*x+1;
a=-12;b=-11;
tol=7e-3;
kmax=30;
%Estimativa inicial
k=1;
x=(a+b)/2;
fx=f(x);
fa=f(a);
fb=f(b);
ER=inf;

fprintf(' k         xk            ER          |f(xk)|\n')
fprintf('%2d  %15.12f  %15.12e %15.12e\n',k,x,ER,abs(f(x)))

%Processo iterativo
while ER>tol
%while abs(f(x))>tol
%while k<kmax   
   if fa*fx<=0
       b=x;
       fb=fx;
   else
       a=x;
       fa=fx;
   end
   k=k+1;
   aux=x;
   x=(a+b)/2;
   fx=f(x);
   ER=abs((x-aux)/x);
   fprintf('%2d  %15.12f  %15.12e %15.12e\n',k,x,ER,abs(f(x)))
end







