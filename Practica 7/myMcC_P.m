function F = myMcC_P(X,W,Theta)
XT=X';
[m,n]=size(XT);


for i=1:n
q=sum(XT(:,i).*W(:,1));
%s=s+q;
ys(i,1)=q;
end

teta=Theta;

[m2,n2]=size(ys);

for i2=1:m2
if ys(i2,1)>teta
    ysombrero(i2,1)=1;
elseif ys(i2,1)<=teta
    ysombrero(i2,1)=0;
end
end

F=ysombrero;

end

