clc;clear;close all;
%% 2
load('matricesPr7.mat');
%% 4
X1=[x1';x2';x3';x4'];
w=[2;-1;-3];
myMcC_P(X1,w,3)
myMcC_P2(X1,w,3)

%% 5
X2=[x5';x6'];
myMcC_P(X2,w2,1)

%% 6
w=[2;-1];
myMcC_P(X,w,10)
yh6=myMcC_P(X,w,10);

%% 8
%plotClasses_McC_P(X,y,yh6)
plotClasses_McC_PPuntoaPunto(X,y,yh6)
%% 9

%{
 Q=0;
for i=1:m
R=((y(i,1)-yh6(i,1))^2);
Q=Q+R;
end
(1/m)*Q   
%}


[m,n]=size(yh6);

contar=0;
for i=1:m
if isequal(y(i,1), yh6(i,1))
else
    contar=contar+1;
end
end
(1/m)*contar

%% 10

cM=confusionmat(y,yh6)

%% 11

computeCPM(cM,2)