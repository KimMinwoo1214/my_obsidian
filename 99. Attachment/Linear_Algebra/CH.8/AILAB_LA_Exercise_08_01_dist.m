% Clear workspace, command window, and close all figures
clc; clear; close all;

% Generate a random 40x4 matrix with integer elements from -10 to 10
T = randi([-10, 10], 40, 4);

%%%%%%% TODO %%%%%%%
% Refer to the lecture slide 22
% Compute the product of T transpose and T
% Use ''' or 'transpose(matrix)' function
TtT = T' * T;

% Compute the inverse of the product
% Use 'inv(matrix)' function
TtT_inv = inv(TtT);

% Compute the Left inverse matrix
% Use '*' function
L = ;

% Multiply the inverse with the original product to get the identity matrix
LT = ;
TL = ;
%%%%%%%%%%%%%%%%%%%%

% Visualize the matrices
figure;
imagesc(T); % Display the matrix as a color image
colorbar;        % Show a color scale
title('Original Matrix T');
axis([0.5 40 0 40]);     % Make axes square

figure;
imagesc(L); % Display the matrix as a color image
colorbar; % Show a color scale
title('L');
axis([0 40 0.5 40]); % Make axes square

figure;
imagesc(LT); % Display the matrix as a color image
colorbar; % Show a color scale
title('LT');
axis square; % Make axes square

figure;
imagesc(TL); % Display the matrix as a color image
colorbar; % Show a color scale
title('TL');
axis square; % Make axes square