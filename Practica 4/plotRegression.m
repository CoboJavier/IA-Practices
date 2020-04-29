function F = plotRegression(X,y,yhat )
figure;

F=scatter(X(:,1),y(:,1));
%F=plot(X(:,1),yhat(:,1),'-o');
hold on
F=scatter(X(:,1),yhat(:,1),'filled');
F=plot(X(:,1),yhat(:,1),'-o');
end

