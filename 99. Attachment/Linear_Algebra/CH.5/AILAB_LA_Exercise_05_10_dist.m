% Clear workspace, command window, and close all figures
clc; clear; close all;

% Create a 3x2 matrix with random values
matrix = randi(10, 3, 2); % Generate a 3x2 matrix with integers between 1 and 10

%%%%%%% TODO %%%%%%%
% Transpose the matrix
% Use function ' ' ' (ex) matrix'
% or 'transpose(matrix)'
% Refer to the lecture slide 48
transposedMatrix = matrix;
transposedMatrix2 = transpose(matrix);
%%%%%%%%%%%%%%%%%%%%

% Create and visualize the original matrix as vectors
disp("Original Matrix");
disp(matrix);
disp("Transposed Matrix using (')");
disp(transposedMatrix);
disp("Transposed Matrix using (transpose(A))");
disp(transposedMatrix2);
