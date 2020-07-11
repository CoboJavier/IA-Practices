clear; close all; clc;

%% 3
figure;
for i=1:6
    Im=strcat(num2str(i),'.jpg');
    Ima=imread(Im);
    Ima=rgb2gray(Ima);
    subplot(2,3,i)
    imshow(Ima);    
end

%% 5
figure;
for i=1:6
    Im=strcat(num2str(i),'.jpg');
    RGB = imread(Im);
    I = rgb2gray(RGB);
    
    F = myWhitener(I);
    subplot(2,3,i);
    imshow(F);
    
end

%% 7
figure;
for i=1:6
    Im=strcat(num2str(i),'.jpg');
    RGB = imread(Im);
    I = rgb2gray(RGB);
    HI = myHistogram(I);
    subplot(2,3,i);
    plot(HI(1,:), HI(2,:));
end


%% 9
figure;
for i=1:6
    Im=strcat(num2str(i),'.jpg');
    RGB = imread(Im);
    I = rgb2gray(RGB);
    HI = myCPH(I);
    subplot(2,3,i);
    plot(HI(1,:), HI(2,:));
end

%% 11

figure;
for i=1:6
    Im=strcat(num2str(i),'.jpg');
    RGB = imread(Im);
    I = rgb2gray(RGB);
    
    %F = myEqualizer(I);
    F = histeq(I);
    C(i,:) = {F};
    subplot(2,3,i);
    imshow(F);
    
end

%% 12
figure;
for i=1:6
    
    F = cell2mat(C(i,:));
    HI = myCPH(F);
    subplot(2,3,i);
    plot(HI(1,:), HI(2,:));
end



