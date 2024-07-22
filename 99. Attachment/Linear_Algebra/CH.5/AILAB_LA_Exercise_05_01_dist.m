% Clear previous figures and vars
clc; clear; close all;

% Create a 6x10 matrix with random values
originalMatrix = rand(6, 10);

%%%%%%% TODO %%%%%%%
% Extract submatrix from rows 2 to 4 and columns 1 to 5
% You can extrcat by 'submatrix=matrix(row_start:row_end, col_start:col_end)'
% Refer to the lecture slide 10
subMatrix = originalMatrix(2:4, 1:5);
%%%%%%%%%%%%%%%%%%%%

% Display
disp("Original Matrix");
disp(originalMatrix);
disp("Sub-Matrix");
disp(subMatrix);

% Visualize the original matrix
figure; % Create a new figure for the small matrix
imagesc(originalMatrix); % Display the small matrix as a color image
title('Original Matrix');
xlabel('Columns');
ylabel('Rows');
colorbar; % Show a color scale
axis equal tight; % Adjust axes to fit tightly around the data

% Visualize the sub-matrix
figure; % Create a new figure for the big matrix
imagesc(subMatrix); % Display the big matrix as a color image
title('sub-Matrix');
xlabel('Columns');
ylabel('Rows');
colorbar; % Show a color scale
axis equal tight; % Adjust axes to fit tightly around the data