clc;clear;close all;
%% 2
load ('matricesPr1.mat');
%% 3
%A(:,1)=1:100;

A=1;
contar=1;
for i=1:100
    A(i,1)=contar;
    contar=contar+1;
end


for j=1:100
    A(j,[19:21])=8;
end

A(85,12)=-100;

%% 4
BC=[B;C];
DT=D';
E=horzcat(DT,BC);
%% 5
F=A*E;

%% 6 CON FOR
fprintf('Ejercicio 6 \n');
fprintf('Elemento de F 54,374');
F(54,374)

%% 7
%M = zeros(2,2);

N11 = [1,2,3;4,5,6];
N22 = [1,8,9;7,5,4];

%myTriplicator(M, N)



%% 8

X_8=myTriplicator(M, F);
X_8O=myTriplicatorOUT(M, F);

%% 9 CON FOR
fprintf('Ejercicio 9 CON FOR\n');
sum(sum(X_8))

%% 9 SIN FOR
fprintf('Ejercicio 9 SIN FOR\n');
sum(sum(X_8O))
%% 10
%extractEquals(N2, N)

%% 11
%X_22=extractEquals(N11, N22);

X_11=extractEquals(F, G);
X_11O=extractEqualsOUT(F, G);


%% 12 CON FOR
%sum(sum(X_22))
fprintf('Ejercicio 12 CON FOR\n');
sum(sum(X_11))


%% 12 SIN FOR
%sum(sum(X_22))
fprintf('Ejercicio 12 SIN FOR\n');
sum(sum(X_11O))


%% 13
fprintf('Ejercicio 13\n');
nnz(X_11)







