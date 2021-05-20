%Este programa aplica o método de interpolação
%da Spline Cúbica e interpola valores
close
clear
clc

%Dados de entrada
x=[0 1 4 6]';
y=[1 2.3 2.2 3.7]';

%Cálculo do valor interpolado
u=[5];

%Interpolação por Spline Cúbica
v=ISPline3(x,y,u)





