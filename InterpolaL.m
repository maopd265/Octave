%Este programa aplica o método de interpolação
%de Lagrange
close
clear
clc

%Dados de entrada
x=[0 1 4 6]';
y=[1 2.3 2.2 3.7]';

%Cálculo do valor interpolado
u=[5];

%Interpolação de Lagrange
v=ILagrange(x,y,u)

%Gráfico
plot(x,y,'bo','markersize',12)
hold on
dom=x(1):0.1:x(end);
img=ILagrange(x,y,dom);
plot(dom,img,'k-','linewidth',2)
plot(u,v,'r*','markersize',12)
grid



