%Este programa calcula os erros de aproxima��o num�rica
%de uma fun��o definida por expans�o em s�rie de Taylor
clear
close
clc

%Defini��o do valor de x
x=pi/3;
%Defini��o do n�mero de termos
n=3;
%C�lculo do valor exato
E=cos(x)
%C�lculo da aproxima��o
soma=0;
for k=0:n-1
    soma=soma+(-1)^k*x^(2*k)/factorial(2*k);
end
A=soma
%C�lculos dos erros num�ricos
ET=abs(E-A)
ER=abs((E-A)/E)
EP=ER*100





