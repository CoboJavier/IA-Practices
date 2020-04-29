function F = plotClasses_McC_PPuntoaPunto(X,y,yhat)
[m,n]=size(X);

    colors = {'black', 'red'};
    for i = 1:length(y)    
        color_y = colors{y(i)+1};
        color_yhat = colors{yhat(i)+1};
        scatter(X(i,1), X(i,2), 40, color_y, 'c');
        hold on;
        scatter(X(i,1), X(i,2), 40, color_yhat, '*');
        hold on;
    end  


end

