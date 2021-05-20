%Este programa calcula os erros de aproximação numérica
%de uma função definida por expansão em série de Taylor
clear
close
clc

%Definição do valor de x
x=pi/3;
%Definição do número de termos
n=3;
%Cálculo do valor exato
E=cos(x)
%Cálculo da aproximação
soma=0;
for k=0:n-1
    soma=soma+(-1)^k*x^(2*k)/factorial(2*k);
end
A=soma
%Cálculos dos erros numéricos
ET=abs(E-A)
ER=abs((E-A)/E)
EP=ER*100





