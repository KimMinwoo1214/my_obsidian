% Clear workspace, command window, and close all figures
clc; clear; close all;

% Define angles 0 to 340 degrees in 20 degree increments
angles = 0:20:340;

% Convert degrees to radians for computation
radians = deg2rad(angles);

% Create points on a circle with radius 1
P = [cos(radians); sin(radians)];

%%%%%%% TODO %%%%%%%
% Refer to the lecture slide 37
% Define a transformation matrix T
% Matrix T must be 2x2 matrix
T = [1 2; 2 4];

% Apply the transformation to create Q
Q = T * P;

% Calculate U, which should be the same as P
% Use 'inv(matrix)' function
U = inv(T) * Q;
%%%%%%%%%%%%%%%%%%%%

% Visualize the points P, Q, and U on the same plot for comparison
figure;
plot(P(1, :), P(2, :), 'bo', 'LineWidth', 2, 'MarkerSize', 10, 'DisplayName', 'Original Points P');
hold on; % Hold on to plot additional points
plot(Q(1, :), Q(2, :), 'rx', 'LineWidth', 2, 'MarkerSize', 10, 'DisplayName', 'Transformed Points Q');
plot(U(1, :), U(2, :), 'g+', 'LineWidth', 2, 'MarkerSize', 10, 'DisplayName', 'Recovered Points U');
legend show; % Show legend to label point sets
axis square; % Equal scaling for both axes
grid on; % Enable grid
title('P, Q, and U');
xlabel('X-axis');
ylabel('Y-axis');
hold off; % Release the plot
