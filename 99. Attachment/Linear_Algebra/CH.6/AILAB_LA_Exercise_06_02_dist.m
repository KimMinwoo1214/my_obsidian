% Clear workspace, command window, and close all figures
clc; clear; close all;

% Define two 3D vectors
v1 = [3; 5; 1];
v2 = [0; 2; 2];

%%%%%%% TODO %%%%%%%
% Calculate the normal vector (cross product of the two vectors)
% Remind : get normal vector use 'cross(vector1, vector2)' function
% Get column space by span of two vectors
% Refer to the lecture slide 40
normal = ;
%%%%%%%%%%%%%%%%%%%%

% Choose a point on the plane (for example, using v1)
point = v1;

% Equation of the column space: ax + by + cz = d
% where a, b, c are components of the normal vector, and d is the constant term of the column space equation
a = normal(1);
b = normal(2);
c = normal(3);
d = -dot(normal, point);

% Code for visualization
[x, y] = meshgrid(-10:1:10, -10:1:10); % Create a grid to represent the column space
z = (-d - a*x - b*y) / c; % Calculate z values of the column space

% Draw the column space
figure;
mesh(x, y, z);
hold on;

% Draw the two vectors
quiver3(0, 0, 0, v1(1), v1(2), v1(3), 'r', 'LineWidth', 2, 'AutoScale', 'off', 'MaxHeadSize', 1);
quiver3(0, 0, 0, v2(1), v2(2), v2(3), 'b', 'LineWidth', 2, 'AutoScale', 'off', 'MaxHeadSize', 1);

xlabel('X'); ylabel('Y'); zlabel('Z');
title('Column Space');
legend('Column Space', 'Vector 1', 'Vector 2');
axis equal;
grid on;
