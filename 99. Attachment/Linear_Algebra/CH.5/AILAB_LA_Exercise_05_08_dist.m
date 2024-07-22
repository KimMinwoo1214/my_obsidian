% Clear workspace, command window, and close all figures
clc; clear; close all;

% Create two 3x3 square matrices with random values
squareMatrix1 = randi(10, 3, 3); % Generate a 3x3 matrix with integers between 1 and 10
squareMatrix2 = randi(10, 3, 3); % Generate another 3x3 matrix with integers between 1 and 10

%%%%%%% TODO %%%%%%%
% Calculate the Hadamard product of the two matrices
% Use hadamard multiplication function '.*'
% Refer to the lecture slide 26
hadamardProduct = ;
%%%%%%%%%%%%%%%%%%%%

% Create and visualize the first square matrix
figure;
imagesc(squareMatrix1); % Display the matrix as a color image
title('First 3x3 Matrix');
xlabel('Columns');
ylabel('Rows');
colorbar; % Show a color scale
axis equal tight; % Adjust axes to fit tightly around the data
% Add text annotations for each element in the first matrix
[numRows, numCols] = size(squareMatrix1);
for row = 1:numRows
    for col = 1:numCols
        text(col, row, num2str(squareMatrix1(row, col), '%d'), ...
            'HorizontalAlignment', 'center', ...
            'VerticalAlignment', 'middle', ...
            'FontSize',20);
    end
end

% Create and visualize the second square matrix
figure;
imagesc(squareMatrix2); % Display the matrix as a color image
title('Second 3x3 Matrix');
xlabel('Columns');
ylabel('Rows');
colorbar; % Show a color scale
axis equal tight; % Adjust axes to fit tightly around the data
% Add text annotations for each element in the second matrix
for row = 1:numRows
    for col = 1:numCols
        text(col, row, num2str(squareMatrix2(row, col), '%d'), ...
            'HorizontalAlignment', 'center', ...
            'VerticalAlignment', 'middle', ...
            'FontSize',20);
    end
end

% Create and visualize the Hadamard product of the matrices
figure;
imagesc(hadamardProduct); % Display the Hadamard product matrix as a color image
title('Hadamard Product of the Two Matrices');
xlabel('Columns');
ylabel('Rows');
colorbar; % Show a color scale
axis equal tight; % Adjust axes to fit tightly around the data
% Add text annotations for each element in the Hadamard product matrix
for row = 1:numRows
    for col = 1:numCols
        text(col, row, num2str(hadamardProduct(row, col), '%d'), ...
            'HorizontalAlignment', 'center', ...
            'VerticalAlignment', 'middle', ...
            'FontSize',20);
    end
end
