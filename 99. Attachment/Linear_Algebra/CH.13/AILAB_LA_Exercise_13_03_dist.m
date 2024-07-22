% Clear workspace, command window, and close all figures
clc; clear; close all;

% Define the matrix
A = [1 4 7; 2 5 8; 3 6 9];

%%%%%%% TODO %%%%%%%
% Refer to the lecture slide 48
% Calculate the matrix rank
% Use 'rank()' function
rankA = rank(A);

% Eigen decomposition
[V, D] = eig(A);
%%%%%%%%%%%%%%%%%%%%

% Display the results
disp('Rank =')
disp(rankA);
disp('Eigenvalues:');
disp(diag(D));
disp('Eigenvectors:');
disp(V);

% Optionally round eigenvalues and eigenvectors for display
disp('Rounded Eigenvalues:');
disp(round(diag(D).',2)); % Round and transpose for horizontal display
disp('Rounded Eigenvectors:');
disp(round(V, 2));
 