function F = myWhitener(PP)
P=double(PP);

[I,J]=size(P);

SUMJ=sum(P);
SUMTODO=sum(SUMJ);
u=(SUMTODO)/(J*I);

V=(P-u).^2;
SUMJ=sum(V);
SUMTODO=sum(SUMJ);
var=(SUMTODO)/(J*I);

for i=1:I
   for j=1:J
       O(i,j)=((P(i,j)-u))/sqrt(var);
       
%        if O(i,j)<0
%            OO(i,j)=O(i,j)*-1;
%        else
%            OO(i,j)=O(i,j);
%        end
   end 
end

F=O;
end

