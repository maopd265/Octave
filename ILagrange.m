function v = ILagrange(x,y,u)
%Esta função calcula valores interpolados
%pelo método de interpolação de Lagrange

%Inicialização
n=length(x);
m=length(u);
v=zeros(1,m);
%Interpolação
for k=1:m
   s=0;
   for i=1:n
       p=y(i);
       for j=1:n
           if j~=i
              p=p*(u(k)-x(j))/(x(i)-x(j)); 
           end           
       end
       s=s+p;
   end
   v(k)=s; 
end








end

