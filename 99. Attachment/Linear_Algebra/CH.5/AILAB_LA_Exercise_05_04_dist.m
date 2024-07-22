% Clear workspace, command window, and close all figures
clc; clear; close all;

% Create a random matrix using randi
randomMatrix = randi(10, 5, 5); % Generate a 5x5 matrix with integers between 1 and 10

%%%%%%% TODO %%%%%%%
% Create upper triangular matrix from the random matrix
% Use function 'triu(matrix)' to create upper triangular matrix
% or 'tril(matrix)' to create lower triangular matrix
% Refer to the lecture slide 15
upperTriangularMatrix = triu(randomMatrix);
%%%%%%%%%%%%%%%%%%%%

% You can create lower triangular matrix use function 'tril(matrix)'

% Create and visualize the upper triangular matrix
figure;
imagesc(upperTriangularMatrix); % Display the matrix as a color image
title('Upper Triangular Matrix');
xlabel('Columns');
ylabel('Rows');
colorbar; % Show a color scale
axis equal tight; % Adjust axes to fit tightly around the data
% Add text annotations for each element in the upper triangular matrix
[numRows, numCols] = size(upperTriangularMatrix);
for row = 1:numRows
    for col = 1:numCols
        text(col, row, num2str(upperTriangularMatrix(row, col), '%d'), ...
            'HorizontalAlignment', 'center', ...
            'VerticalAlignment', 'middle', ...
            'FontSize',20);
    end
end