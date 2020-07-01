function F = lab2bin(Y)
[m,n]=size(Y);
U=unique(Y);
[m2,n2]=size(U);

for i=1:m
    for j=1:m2
        if isequal(Y(i,1), j)
           Y(i,j)=1;
        end
    end
end

[m,n]=size(Y);

for i=1:m
    for j=1:n
        if ~isequal(Y(i,j),1)
            Y(i,j)=0;
        end
    end
end

% for i=1:m
%     if isequal(Y(i,1), 1)
%         Y(i,1)=1;
%         Y(i,2)=0;
%         Y(i,3)=0;
%     elseif isequal(Y(i,1), 2)
%         Y(i,2)=1;
%         Y(i,1)=0;
%         Y(i,3)=0;
%     elseif isequal(Y(i,1), 3)
%         Y(i,3)=1;
%         Y(i,2)=0;
%         Y(i,1)=0;
%     end
% 
% end

F=Y;



end

