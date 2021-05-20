function X = MVander(x,m)
%Esta função constroi a matriz de Vandermonde

n=length(x);
X=zeros(n,m+1);
for i=1:n
   X(i,m+1)=1;
   for j=m:-1:1
      X(i,j)=x(i)*X(i,j+1); 
   end    
end

end

