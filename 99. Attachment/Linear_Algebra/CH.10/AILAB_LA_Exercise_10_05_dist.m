% Clear workspace, command window, and close all figures
clc; clear; close all;

% Matrix A and B
A = [2 2 4; 1 0 3; 2 1 2];

%%%%%%% TODO %%%%%%%
% Refer to the lecture slide 39
% LU Decomposition
% Use the 'lu()' function
[L, U] = lu(A);
%%%%%%%%%%%%%%%%%%%%

% Display the results
disp("L")
disp(L);
disp("U")
disp(U);