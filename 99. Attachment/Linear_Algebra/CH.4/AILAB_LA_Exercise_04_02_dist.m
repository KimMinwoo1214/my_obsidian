%% You have to run "AILAB_LA_Exercise_04_01_dist.m" before !

% Store distance from k centroid in 'dists' matrix.
% Dimension of 'dists' is k.
dists = zeros(size(data, 1), k);

%%%%%%% TODO %%%%%%%
% Calculate the squared distances.
for ci = 1:k
    % Compute the squared Euclidean distance from each point to each centroid
    % and store the results in the 'dists' matrix.
    % Because 'data' and 'centroid' are 2D vector, you have to calculate the
    % element-wise distance.
    % Use function '(data - centroid_ci).^2' to calculate element-wise distance.
    % Use function 'sum(input, dimension of input)' to sum inputs.
    % If this is not clear, please see the lecture slide 14.
    dists(:, ci) = sum((data - centroids(ci, :)).^2, 2);
end
%%%%%%%%%%%%%%%%%%%%
% Find the minimum distance and the corresponding centroid for each data point
[minDists, assignment] = min(dists, [], 2);

% Create a new figure for visualization
figure;

% Plot each data point, colored by the index of its closest centroid
gscatter(data(:,1), data(:,2), assignment, 'rgb', 'osd');
hold on;

% Plot centroids
plot(centroids(:,1), centroids(:,2), 'kx', 'MarkerSize', 12, 'LineWidth', 2);

% Add title and labels
title('Data points and Centroids');
xlabel('X');
ylabel('Y');
legend([arrayfun(@(x) ['Cluster ' num2str(x)], unique(assignment), 'UniformOutput', false); 'Centroids']);
hold off;