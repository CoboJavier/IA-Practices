function X = extractEquals(A, B)
if isequal(size(A), size(B))
   [m,n]=size(A);
    
    for i=1:m
       for j=1:n
          if isequal(A(i,j),B(i,j))
            X(i,j)=A(i,j);
          end
          
          if ~isequal(A(i,j),B(i,j))
            X(i,j)=0;
          end
   
       end   
   end
   
else
   fprintf ('Error: Tamaños distintos'); 
end

end

