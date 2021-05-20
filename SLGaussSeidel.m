%Este programa aplica o método iterativo 
%de Gauss-Jacobi para solução de uma SELA
close
clear
clc

%Dados de entrada
A=[-20 0 9;-1 -5 1;2 2 5];
b=[78 -5 8]';
tol=1e-5;
kmax=50;
%Matriz e vetor de iteração
n=size(A,1);
C=zeros(n);
d=zeros(n,1);
for i=1:n
   for j=1:n
       if i~=j
           C(i,j)=-A(i,j)/A(i,i);
       end       
   end
   d(i)=b(i)/A(i,i); 
end
%Processo iterativo
k=1;
x=zeros(n,1);
ER=inf;
delta=sqrt(sum((A*x-b).^2))/sqrt(sum(b.^2)); 
fprintf(' k         x(1)            ER          Delta\n')
fprintf('%2d  %15.12f  %15.12e %15.12e\n',k,x(1),ER,delta)
%while ER>tol
%while k<kmax
while delta>tol
    k=k+1;
    aux=x;
    for i=1:n
       x(i)=C(i,:)*x+d(i); 
    end
    ER=sqrt(sum((aux-x).^2))/sqrt(sum(x.^2));
    delta=sqrt(sum((A*x-b).^2))/sqrt(sum(b.^2)); 
    fprintf('%2d  %15.12f  %15.12e %15.12e\n',k,x(1),ER,delta)
end
x








