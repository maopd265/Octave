function v = ISPline3(x,y,u)
%Esta função calcula valores interpolados
%pelo emprego de uma splina cúbica

%Determinação coeficientes
C=CoefSpline3(x,y)
%Interpolação
n=length(x);
r=length(u);
v=zeros(1,r);
for i=1:r
    %Determina intervalo
    k=1;
    while (u(i)>x(k+1)) & (k<n-1)
        k=k+1;
    end
    %Determina ordenada
    t=u(i)-x(k);
    v(i)=((C(k,1)*t+C(k,2))*t+C(k,3))*t+C(k,4);
end

%Gráfico
plot(x,y,'bo','markersize',12)
hold on
for k=1:n-1
    dom=x(k):0.01:x(k+1);
    t=dom-x(k);
    img=((C(k,1).*t+C(k,2)).*t+C(k,3)).*t+C(k,4);
    plot(dom,img,'k-','linewidth',2)
end
plot(u,v,'r*','markersize',12)
grid


end

