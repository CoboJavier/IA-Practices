clear; close all; clc;
%% 2
load('matricesPr10');

%% 4
X=[1,0,1;-2,3,1;5,-5,4];
nnOutput(X,W1,W2)'

%% 5
[m,n]=size(X_dig);

for i=1:m
Xdig=X_dig(i,:)';
RE=reshape(Xdig,[20,20]);
%figure;
%imshow(RE);
end

y=[1;6;4;7;7;9;8;3;6;1;10;7;4;;4;9;6;6;8;8;5;1;2;8;10;4];

%% 6
yhat=nnOutput(X_dig,W1_dig,W2_dig)';

%% 7
disp('Matriz de confusion');
C = confusionmat(y,yhat)

%% 8

    %a)
        %9
    %b)
        %5
    %c)
        %8