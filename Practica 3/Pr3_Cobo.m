clear;clc;close all;
%% 2
load('matricesPr3.mat');

%%4
plotClasses(X,y)


%% 5
plotClasses(X2,y2)

%% 6
confusionmat(y_animals,yhat_animals)

%% 8
computeMCE(y_animals, yhat_animals)

%% 10

cM=confusionmat(y3,yhat3);

%% 11
computeCPM(cM,2)




%% EXTRA

y3t=y3';
y3ht=yhat3';
[m,n]=size(y3t);
con=0;

for i=1:n
if isequal(y3t(1,i),y3ht(1,i),-1)
    con=con+1;
end

end




