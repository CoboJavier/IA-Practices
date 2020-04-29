function [] = plotPerceptron(X,y,w)
% (2017) by Holger Ortega M.-----------------------------------------------
% INPUT: 2-D feature vectors (in X) and their actual classes (in y). Weight
% vector (w) of the perceptron. The class labels must be "-1" and "1".
% OUTPUT: Plot with the vectors in a Cartesian plane, with different
% markers for different classes. Also, the line corresponding to the weight
% vector will appear in the plot
%--------------------------------------------------------------------------
% figure;
% Plot the vectors with 'o' for class "-1" and '+' for class "1"
for i=1:length(X)
    if y(i)==-1
        scatter(X(i,1),X(i,2),'o','k')
    else
        scatter(X(i,1),X(i,2),'+','r')
    end
    hold on
end
% Compute the range of values for the horizontal axis
x_min = min(X(:,1))-1;
x_max = max(X(:,1))+1;
% Draw the line corresponding to w
if w(3)~=0
    y_ini = -(w(2)/w(3))*x_min-(w(1)/w(3));
    y_fin = -(w(2)/w(3))*x_max-(w(1)/w(3));
    line([x_min x_max],[y_ini y_fin],'LineWidth',2)
    xlim([x_min x_max]);
    ylim([min(X(:,2))-1 max(X(:,2))+1]);
else % draw the line if it is vertical
    a = -w(1)/w(2);
    line([a a],[min(X(:,2))-1 max(X(:,2))+1],'LineWidth',2)
    xlim([x_min x_max]);
    ylim([min(X(:,2))-1 max(X(:,2))+1]);
end
