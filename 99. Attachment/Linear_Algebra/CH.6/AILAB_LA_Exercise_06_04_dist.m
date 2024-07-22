% Clear workspace, command window, and close all figures
clc; clear; close all;

% Define a square matrix
matrix = [1, 3; 2, 4];

% Define a 2D column vector
vector1 = [1; 2];

% Check if the matrix is singular (det(matrix) == 0 means it's singular)
if det(matrix) == 0
    disp('The matrix is singular and does not have an inverse.');
else
    %%%%%%% TODO %%%%%%%
    % Calculate the inverse of the matrix
    % Use 'inv(matrix)' function
    % Refer to the lecture slide 67
    inverseMatrix = ;
    %%%%%%%%%%%%%%%%%%%%

    % Multiply the matrix by vector1 to get vector2
    vector2 = matrix * vector1;

    % Multiply vector2 by the inverse matrix to get vector3
    vector3 = inverseMatrix * vector2;

    % Print the matrices
    disp('Original Matrix:');
    disp(matrix);
    disp('Inverse Matrix:');
    disp(inverseMatrix);

    % Create the first figure for visualization of vector1 and vector2
    figure;
    hold on;
    grid on;
    axis equal;

    % Visualize vector1
    quiver(0, 0, vector1(1), vector1(2), 'b', 'LineWidth', 2, 'AutoScale', 'off', 'MaxHeadSize', 0.5);
    
    % Visualize vector2
    quiver(0, 0, vector2(1), vector2(2), 'r--', 'LineWidth', 2, 'AutoScale', 'off', 'MaxHeadSize', 0.5);

    % Labels and title for the first figure
    xlabel('X');
    ylabel('Y');
    title('Matrix and vector multiplication');
    legend({'Vector1', 'Vector2 (Matrix * Vector1)'}, 'Location', 'best');

    % Create the second figure for visualization of vector2 and vector3
    figure;
    hold on;
    grid on;
    axis equal;

    % Visualize vector2 again for comparison
    quiver(0, 0, vector2(1), vector2(2), 'b', 'LineWidth', 2, 'AutoScale', 'off', 'MaxHeadSize', 0.5);

    % Visualize vector3
    quiver(0, 0, vector3(1), vector3(2), 'r--', 'LineWidth', 2, 'AutoScale', 'off', 'MaxHeadSize', 0.5);

    % Labels and title for the second figure
    xlabel('X');
    ylabel('Y');
    title('Inverse matrix and vector multipliction');
    legend({'Vector2 (Matrix * Vector1)', 'Vector3 (Inverse Matrix * Vector2)'}, 'Location', 'best');
end
