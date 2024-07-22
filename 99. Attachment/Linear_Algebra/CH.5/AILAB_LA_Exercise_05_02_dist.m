% Clear previous figures and vars
clc; clear; close all;

%%%%%%% TODO %%%%%%%
% 4x6 matrix with random values
% Use function 'rand(row,col)' or 'randi(row,col)'
% Refer to the lecture slide 10
matrix = ;
%%%%%%%%%%%%%%%%%%%%

% Create a figure for visualization
figure;

% Display
disp("4x6 Random Matrix")
disp(matrix);

% Visualize the matrix
imagesc(matrix); % Display the matrix as a color image
title('4x6 Random Matrix');
xlabel('Columns');
ylabel('Rows');
colorbar; % Show a color scale
axis equal tight; % Adjust axes to fit tightly around the data
[numRows, numCols] = size(matrix);
for row = 1:numRows
    for col = 1:numCols
        text(col, row, num2str(matrix(row, col), '%0.2f'), ...
            'HorizontalAlignment', 'center', ...
            'VerticalAlignment', 'middle', ...
            'FontSize',20);
    end
end