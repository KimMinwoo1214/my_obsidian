% Clear workspace, command window, and close all figures
clc; clear; close all;

% Create a random matrix and make it symmetric
A = randi([-3, 3], 3, 3);
A = A * A';  % Symmetric matrix

%%%%%%% TODO %%%%%%%
% Refer to the lecture slide 41
% Perform eigen decomposition
[V, D] = eig(A);
%%%%%%%%%%%%%%%%%%%%

% Display the eigenvalues and eigenvectors
disp('Eigenvalues:');
disp(diag(D));
disp('Eigenvectors:');
disp(V);

%%%%%%% TODO %%%%%%%
% Calculate and display all pairwise dot products between eigenvectors
% Use 'dot()' function between eigenvectors
dot12 = dot(V(:, 1), V(:, 2));
dot13 = dot(V(:, 1), V(:, 3));
dot23 = dot(V(:, 2), V(:, 3));
disp('Dot product of first and second eigenvectors:')
disp(dot12);
disp('Dot product of first and third eigenvectors:')
disp(dot13);
disp('Dot product of second and third eigenvectors:')
disp(dot23);
%%%%%%%%%%%%%%%%%%%%