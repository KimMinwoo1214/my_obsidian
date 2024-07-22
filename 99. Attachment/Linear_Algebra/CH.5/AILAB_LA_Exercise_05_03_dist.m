% Clear previous figures and vars
clc; clear; close all;

% Create a vector for the diagonal elements
InputMatrix = randi(10, 5);
diagonalElements = [1, 2, 3, 4, 5];

%%%%%%% TODO %%%%%%%
% Create a diagonal matrix using the diag function
% Use function 'diag(vector)' and 'diag(matrix)'
% Refer to the lecture slide 13
diagonalVector = ;
diagonalMatrix = ;
%%%%%%%%%%%%%%%%%%%%

% Display
disp("Input Matrix");
disp(InputMatrix);
disp("Diagonal Vector")
disp(diagonalVector);

% Create a figure for visualization
figure;

% Visualize the diagonal matrix
imagesc(diagonalMatrix); % Display the matrix as a color image
title('Diagonal Matrix');
xlabel('Columns');
ylabel('Rows');
colorbar; % Show a color scale
axis equal tight; % Adjust axes to fit tightly around the data
set(gca, 'XTick', 1:length(diagonalElements), 'YTick', 1:length(diagonalElements)); % Set the tick marks

% Add text annotations for each element
[numRows, numCols] = size(diagonalMatrix);
for row = 1:numRows
    for col = 1:numCols
        text(col, row, num2str(diagonalMatrix(row, col), '%d'), ...
            'HorizontalAlignment', 'center', ...
            'VerticalAlignment', 'middle', ...
            'FontSize',20);
    end
end
