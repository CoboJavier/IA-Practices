function F = plotClasses_McC_P(X,y,yhat)
[m,n]=size(X);

figure;
hold on
F=gscatter(X(:,1),X(:,2),y(:,1),'kr','o',8); 
F2=gscatter(X(:,1),X(:,2),yhat(:,1),'kr','*',8);

legend('Actual ' , 'Predicted');



%{
figure;
hold on

F=gscatter(X(:,1),X(:,2),y(:,1),'kr','o',8); 
F2=gscatter(X(:,1),X(:,2),yhat(:,1),'kr','*',8);

legend('Actual ' , 'Predicted');

%}
end

