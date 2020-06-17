clc;clear;close all;

%% 2
load('matricesPr9.mat.');

%% 4
w=[-2;5];
yhat=adalineOutput(X(1:4),w);

%% 6
gamma=0.2;
goal_error=2;

X6=[-1,-1;-1,2;0,0;1,0;1,-1;3,0];
y6=[1;3;2;2;2;3];
w_ini=[0;0;0];

%W_values=adalineLearning(X6,y6,w_ini,gamma,goal_error);

%% 7
dataC=xlsread('Concrete_Data.xls');

X_concrete=dataC(:,1:8);
Y_concrete=dataC(:,9);

%% 10
gamma=0.000001;
goal_error=82000;

for I=1:9
    w_inio(I,1)=0.005;
end

%W_values=adalineLearning(X_concrete,Y_concrete,w_inio,gamma,goal_error);

%% 11
gammaa=0.01;
goal_errorr=21;
w_ini=[0.1;0.1];

W_values11=adalineLearning(X,y,w_ini,gammaa,goal_errorr);

%% 12

scatter(X,y);
x_plot=linspace(-2,2, 100);
w75=W_values11(75,:);





