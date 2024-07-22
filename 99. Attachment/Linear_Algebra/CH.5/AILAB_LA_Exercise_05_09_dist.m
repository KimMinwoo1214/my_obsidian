% Clear workspace, command window, and close all figures
clc; clear; close all;

% Create a 2x2 matrix with random values
matrix = [[2,3]; [2,1]];

% Create a 2x1 vector with random values
vector = [1.5; 1]; % Generate a 2x1 vector with integers between 1 and 10

%%%%%%% TODO %%%%%%%
% Calculate the matrix-vector multiplication
% The form of equation is 'result=matrix*vector'
% You have to consider the dimension of both matrix and vector
% Refer to the lecture slide 37
result = ;
%%%%%%%%%%%%%%%%%%%%

% Create and visualize the original 2x1 vector
figure;
quiver(0, 0, vector(1), vector(2), 'AutoScale', 'off', 'MaxHeadSize', 1, 'LineWidth', 2);
hold on; % Keep the same figure for the next quiver plot
axis equal; % Keep the x and y scales the same
grid on; % Add a grid for better readability
title('Matrix and vector Multiplication');
xlabel('X');
ylabel('Y');
xlim([0, max([vector(1), result(1)])+1]); % Set limits based on the larger vector
ylim([0, max([vector(2), result(2)])+1]);

% Visualize the result of matrix-vector multiplication
quiver(0, 0, result(1), result(2), 'r', 'AutoScale', 'off', 'MaxHeadSize', 1, 'LineWidth', 1);

% Add a legend for clarity
legend('vector \itx', '\itMx', 'Location', 'Best');
hold off; % Release the figure for new plots
