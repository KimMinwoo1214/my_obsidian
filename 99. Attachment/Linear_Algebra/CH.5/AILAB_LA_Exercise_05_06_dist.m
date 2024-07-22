% Clear workspace, command window, and close all figures
clc; clear; close all;

%%%%%%% TODO %%%%%%%
% Create a 5x5 zero matrix
% Use function 'zeros(row,col)'
% Refer to the lecture slide 19
zeroMatrix = ;
%%%%%%%%%%%%%%%%%%%%

% Create and visualize the zero matrix
figure;
imagesc(zeroMatrix); % Display the matrix as a color image
title('Zero Matrix');
xlabel('Columns');
ylabel('Rows');
colorbar; % Show a color scale
axis equal tight; % Adjust axes to fit tightly around the data
% Add text annotations for each element in the zero matrix
[numRows, numCols] = size(zeroMatrix);
for row = 1:numRows
    for col = 1:numCols
        text(col, row, num2str(zeroMatrix(row, col), '%d'), ...
            'HorizontalAlignment', 'center', ...
            'VerticalAlignment', 'middle', ...
            'FontSize',20);
    end
end
