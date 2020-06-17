function F = computeADE(y, yhat)
[m,n]=size(y);

Q=0;
R=0;
format long
for i=1:m
   Q=(y(i,1)-yhat(i,1))^2; 
   R=Q+R;
    
end
F=1/2*R;

end

