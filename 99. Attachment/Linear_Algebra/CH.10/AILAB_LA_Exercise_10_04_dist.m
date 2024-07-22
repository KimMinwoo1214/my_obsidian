% Clear workspace, command window, and close all figures
clc; clear; close all;

% Include the symbolic toolbox
syms s;

%%%%%%% TODO %%%%%%%
% Refer to the lecture slide 24
% Use symolic variable s
% Defeine the matrix E
E = [1 0 0; s 1 0; 0 0 1];

% Define the inverse matrix of E
E_inv = [1 0 0; -s 1 0; 0 0 1];
%%%%%%%%%%%%%%%%%%%%

% Calculate the product of E_inv and E
product = E_inv * E;

% Display the matrix E, its inverse and the product of them
disp('Matrix E:');
disp(E);
disp('Matrix E_inv');
disp(E_inv);
disp('Product of E_inv and E');
disp(product);