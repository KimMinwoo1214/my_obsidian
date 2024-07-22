% Clear workspace, command window, and close all figures
clc; clear; close all;

% Define the theta range from 0 to 2*pi with 100 intervals
theta = linspace(0, 2*pi, 100);

% Create an elliptical wobby circle
wobbyCircleX = sin(theta);
wobbyCircleY = cos(theta);

% Prepare the figure
figure;
hPlot = plot(wobbyCircleX, wobbyCircleY, 'ko', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
axis equal;
xlim([-2 2]);
ylim([-2 2]);
grid on;
title('Rotating Elliptical wobby circle');

% Create a slider for controlling the rotation angle
hSlider = uicontrol('Style', 'slider', 'Min', -1, 'Max', 1, 'Value', 0, ...
    'Units', 'normalized', 'Position', [0.15 0.05 0.7 0.05], ...
    'Callback', @(src, event) rotateCircle(src, hPlot, wobbyCircleX, wobbyCircleY));

% Function to rotate the circle
function rotateCircle(src, hPlot, wobbyCircleX, wobbyCircleY)
    % Get the value of the slider
    x = get(src, 'Value');
    
    % Update the title with the current angle
    title(sprintf('Rotating wobby circle - Angle: %.2f', x));
    
    % Define the rotation matrix
    R = [2 1-x*x; 0 2];
    
    %%%%%%% TODO %%%%%%%
    % Create the rotated wobby circle
    % Use '*' function (ex)tranform_matrix * src_mat
    % the src_mat is consist of wobbyCircleX and wobbyCircleY
    % Refer to the lecture slide 22
    rotatedPoints = R * [wobbyCircleX; wobbyCircleY];
    %%%%%%%%%%%%%%%%%%%%
    
    % Update plot data
    set(hPlot, 'XData', rotatedPoints(1,:), 'YData', rotatedPoints(2,:));
end
