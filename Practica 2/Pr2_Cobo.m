clc;clear;close all;
%% 2
load ('matricesPr2.mat');

%% 3
q=Xnum';
q1=q(:,1);
q2=q(:,2);
q3=q(:,3);
q4=q(:,4);

qr1=reshape(q1, 5,4);%3
qr2=reshape(q2, 5,4);%1
qr3=reshape(q3, 5,4);%4
qr4=reshape(q4, 5,4);%2
%im1=imshow(qr4);

y=[3;1;4;2];
%% 4
im11=im1(:);
im22=im2(:);
im33=im3(:);

im1=im11';
im2=im22';
im3=im33';

Xletters=[im1;im2;im3];


%% 5
sum(Xletters')

%% 6
figure;
m=X1(:,1);
n=X1(:,2);
scatter(m,n);

figure;
m2=X2(:,1);
n2=X2(:,2);
z2=X2(:,3);
scatter3(m2,n2,z2);
%% 7
carData = xlsread('cars.xlsx');

%% 8
w1=carData(:,1);
w2=carData(:,2);
w3=carData(:,3);
Xcars=[w1,w2,w3];

%% 9
ycars=carData(:,4);

%%10
figure;

subplot(1,2,2); 
scatter(Xcars(:,1),Xcars(:,2));
xlabel('Distance');
ylabel ('Age');

subplot(1,2,1);  
scatter3(Xcars(:,1),Xcars(:,2),Xcars(:,3));
xlabel('Distance');
ylabel('Age');
zlabel('Engine');
%% 11

figure;
scatter(Xcars(:,1),ycars);
xlabel('Traveled distance');
ylabel('Price');



