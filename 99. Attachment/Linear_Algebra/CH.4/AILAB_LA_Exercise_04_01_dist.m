% Clear previous data and figure
clc; clear; close all;
%%%%%%% TODO %%%%%%%
% Generate 150 vectors each with 2 random elements.
% Use function 'rand(number, dimension)'.
data = rand(150, 2); 
%%%%%%%%%%%%%%%%%%%%

% Declare the variable k
k = 3;

%%%%%%% TODO %%%%%%%
% Extract k initial centroids from data
% 'ridx' is index of centroid.
% Use function 'randperm(size(input, dimension of input), num of centroid)'
ridx = randperm(size(data, 1), k);        % Randomly select k unique indices
%%%%%%%%%%%%%%%%%%%%
centroids = data(ridx, :); % Select the rows (vectors) at these indices to be centroids


% Visualization
figure; % Create a new figure window
hold on; % Hold on to draw multiple graphic objects on the same axes

% Plot the data points
scatter(data(:,1), data(:,2), 'o'); % Use 'o' marker to plot data points

% Plot the centroids
scatter(centroids(:,1), centroids(:,2), 100, 'x', 'LineWidth', 2); 

title('Initial random Centroids');
xlabel('X');
ylabel('Y');
legend('Data Points', 'Centroids', 'Location', 'best');
grid on; % Turn on the grid
hold off; % Finish drawing
