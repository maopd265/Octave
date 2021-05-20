function x=SLGauss(A,b)
%Esta função aplica o método de Gauss
%para solução de um SELA


%Inicialização
n=size(A,1);
C=[A b];
%Escalonamento
for j=1:n-1
   C=PivotamentoParcial(C,n,j);
   for i=j+1:n
       m=C(i,j)/C(j,j);
       C(i,:)=C(i,:)-m*C(j,:);
   end
end
%Retrossubstituição
x=zeros(n,1);
for i=n:-1:1
   x(i)=(C(i,n+1)-C(i,1:n)*x)/C(i,i); 
end

end









