% Clear workspace, command window, and close all figures
clc; clear; close all;

% Include the symbolic toolbox
syms s;

%%%%%%% TODO %%%%%%%
% Refer to the lecture slide 12
% Define a 3x3 diagonal matrix E with diagonal entries 1, s, 1
% Use 'diag()' function
E = diag([1 1 s]);
%%%%%%%%%%%%%%%%%%%%

% Calculate the inverse of matrix E
E_inv = inv(E);

% Calculate the product of E and its inverse
product = E * E_inv;

% Display the matrix E, its inverse, and their product
disp('Matrix E:');
disp(E);
disp('Inverse of Matrix E:');
disp(E_inv);
disp('Product of E and E_inv (should be the identity matrix):');
disp(product);