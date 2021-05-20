%Este programa aplica o método de interpolação
%de Vandermonde
close
clear
clc

%Dados de entrada
x=[0 1 4 6]';
y=[1 2.3 2.2 3.7]';
n=length(x);
m=n-1;

%Matriz de Vandermonde
X=MVander(x,m);

%Coeficientes do polinômio
c=SLGauss(X,y)

%Cálculo do valor interpolado
u=5;
v=polyval(c,u)

%Gráfico
plot(x,y,'bo','markersize',12)
hold on
dom=x(1):0.1:x(end);
img=polyval(c,dom);
plot(dom,img,'k-','linewidth',2)
plot(u,v,'r*','markersize',12)
grid



