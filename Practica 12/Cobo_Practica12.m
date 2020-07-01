clear; close all; clc;

%% 4

dataC=xlsread('irisData.xlsx');


%% 5
X=dataC(:,(1:4));

%% 6
Y=dataC(:,5);
%% 8
Ybin=lab2bin(Y);

%% 14
Xnew=[1,5.1,3.5,1.4,0.2;2,6.2,3.1,5.3,1.9;3,5.1,3.1,1.3,0.2;4,6.8,3.3,4.1,1.1;5,5.9,2.9,4.6,1.3];

%predictions = netIris(Xnew');

%label: 1 for setosa, 2 for versicolor and 3 for virginica.

%1,3,1,2,2







