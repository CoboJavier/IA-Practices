function X = extractEqualsOUT(A, B)

if isequal(size(A), size(B))
    %{
    [m, n]=size(A);
    W=A-B;
    Q=A+W;
    E=ones(m,n);
    R=A+E;
    T=Q-R;
    X=A.*T;
    %}
    C=A-B;
    index=C~=0;
    A=A(:);
    A(index)=0;
    X=reshape(A,size(B));
else
    fprintf('ERROR Matrices no son iguales en tamaño');
    
end



end

