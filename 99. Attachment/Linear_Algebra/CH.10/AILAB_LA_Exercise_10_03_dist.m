% Clear workspace, command window, and close all figures
clc; clear; close all;

% Include the symbolic toolbox
syms s a11 a12 a13 a14 a21 a22 a23 a24 a31 a32 a33 a34;

% Define a 3x4 symobolic matrix A
A = [a11 a12 a13 a14; a21 a22 a23 a24; a31 a32 a33 a34];

%%%%%%% TODO %%%%%%%
% Refer to the lecture slide 19
% Defeine the permutation matrix E
% Use symbolic variable s
E = [1 0 0; 0 1 s; 0 0 1];
%%%%%%%%%%%%%%%%%%%%

% Calculate the product of E and A
product = E * A;

% Display the matrix A, E, and their product
disp('Matrix A:');
disp(A);
disp('Matrix E');
disp(E);
disp('Product of E and A');
disp(product);