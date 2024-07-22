% Clear workspace, command window, and close all figures
clc; clear; close all;

% 2x2 matrix : A
A = [1 2; 3 4];

% Calculate the trace of the matrix
trA = trace(A) / 2;

% Calculate the determinant of the matrix
detA = det(A);

%%%%%%% TODO %%%%%%%
% Refer to the lecture slide 17
% Calculate the eigenvalues using the direct way
lambda1 = trA + sqrt(trA^2 - detA);
lambda2 = trA - sqrt(trA^2 - detA);
%%%%%%%%%%%%%%%%%%%%

% Display the eigenvalues
disp('Eigenvalues of the matrix:');
disp([lambda1 lambda2]);