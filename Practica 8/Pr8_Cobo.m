clc;clear;close all;
%% 2
load('matricesPr8');
%% 3
W=[-30;2;3];
plotPerceptron(X,y,W)
%% 5
yhat=perceptronOutput(X,W)
%% 7
X7=[-1,-1;1,-1;-1,1;1,1];
y7=[-1;-1;-1;1];
w_ini7=[0.5;1;1];

perceptronLearning(X7,y7,w_ini7);

%% 8

perceptronLearning(X,y,w_ini7);

