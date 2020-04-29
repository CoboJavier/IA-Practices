clear;clc;close all;
%% 2
load('matricesPr4.mat');

%% 4

plotRegression(X,Y,Yhat1)

%% 5

plotRegression(X,Y,Yhat2)

%% 7

computeMSE(Y,Yhat1)
computeMSE(Y,Yhat2)
