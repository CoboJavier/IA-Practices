function F = plotClasses(X, y)

figure;
F=gscatter(X(:,1),X(:,2),y(:,1),'rkgb','o*');

%{
C=[X(:,1),X(:,2),y(:,1)];
[m3, n3]=size(C);
n33=n3-1;
yc=unique(C(:,3));

for i=1:m3
    for j=1:n33
    
        if isequal(C(i,3),yc(1,1))
        A(i,j)=C(i,j);      
        elseif isequal(C(i,3),yc(2,1))
        B(i,j)=C(i,j);   
        elseif isequal(C(i,3),yc(3,1))
        D(i,j)=C(i,j);
        end
        
    end
end
%F=plot(A(:,1),A(:,2),'o',B(:,1),B(:,2),'+',D(:,1),D(:,2),'x'); 
%}

end

