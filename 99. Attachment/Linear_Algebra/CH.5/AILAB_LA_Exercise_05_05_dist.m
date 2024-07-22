% Clear workspace, command window, and close all figures
clc; clear; close all;

%%%%%%% TODO %%%%%%%
% Create a 5x5 identity matrix
% Use function 'eye(row,col)'
% Refer to the lecture slide 17 
identityMatrix = ;
%%%%%%%%%%%%%%%%%%%%

% Create and visualize the identity matrix
figure;
imagesc(identityMatrix); % Display the matrix as a color image
title('Identity Matrix');
xlabel('Columns');
ylabel('Rows');
colorbar; % Show a color scale
axis equal tight; % Adjust axes to fit tightly around the data
% Add text annotations for each element in the identity matrix
[numRows, numCols] = size(identityMatrix);
for row = 1:numRows
    for col = 1:numCols
        text(col, row, num2str(identityMatrix(row, col), '%d'), ...
            'HorizontalAlignment', 'center', ...
            'VerticalAlignment', 'middle', ...
            'FontSize',20);
    end
end
