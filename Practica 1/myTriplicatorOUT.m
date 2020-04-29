function X = myTriplicator(M, A)
if isequal(size(A), size(M))
[m, n]=size(A);
for i=1:m
    for j=1:n
        if isequal(M(i,j), 1)
            X(i,j)=3.*A(i,j);
        elseif isequal(M(i,j), 0)
            X(i,j)=1.*A(i,j);
        end
    end
    
end


else
fprintf('Matrices de distinto tamaño ERROR');
end

end

