% Clear workspace, command window, and close all figures
clc; clear; close all;

% Create a 3x3 square matrix with random values
squareMatrix = randi(10, 3, 3); % Generate a 3x3 matrix with integers between 1 and 10

% Define a scalar value
scalar = 5;

% Create a 3x3 identity matrix
identityMatrix = eye(3);

%%%%%%% TODO %%%%%%%
% Add the scalar multiplied by the identity matrix to the original matrix
% The form of equation is 'result = matrix + scalar*identity_matrix'
% Refer to the lecture slide 24
modifiedMatrix = ;
%%%%%%%%%%%%%%%%%%%%

% Create and visualize the original square matrix in a new figure
figure;
imagesc(squareMatrix); % Display the matrix as a color image
title('Original 3x3 Matrix');
xlabel('Columns');
ylabel('Rows');
colorbar; % Show a color scale
axis equal tight; % Adjust axes to fit tightly around the data
% Add text annotations for each element in the original matrix
[numRows, numCols] = size(squareMatrix);
for row = 1:numRows
    for col = 1:numCols
        text(col, row, num2str(squareMatrix(row, col), '%d'), ...
            'HorizontalAlignment', 'center', ...
            'VerticalAlignment', 'middle', ...
            'FontSize',20);
    end
end

% Create and visualize the modified matrix in a new figure
figure;
imagesc(modifiedMatrix); % Display the modified matrix as a color image
title('Modified Matrix (Scalar Added)');
xlabel('Columns');
ylabel('Rows');
colorbar; % Show a color scale
axis equal tight; % Adjust axes to fit tightly around the data
% Add text annotations for each element in the modified matrix
for row = 1:numRows
    for col = 1:numCols
        text(col, row, num2str(modifiedMatrix(row, col), '%d'), ...
            'HorizontalAlignment', 'center', ...
            'VerticalAlignment', 'middle', ...
            'FontSize',20);
    end
end
