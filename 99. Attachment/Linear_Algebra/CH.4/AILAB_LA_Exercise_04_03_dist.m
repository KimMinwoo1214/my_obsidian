%% You have to run "AILAB_LA_Exercise_04_02_dist.m" before !

%%%%%%% TODO %%%%%%%
% Recalculate centroids
newCentroids = zeros(size(centroids));
for ci = 1:k
    % Calculate the mean of all points assigned to centroid ci.
    % Use function 'mean(data, row dimension of data)'.
    % If this is not clear, please see the lecture slide 17.
    newCentroids(ci, :) = mean(data(assignment == ci, :), 1);
end
%%%%%%%%%%%%%%%%%%%%
% Create a new figure for updated visualization
figure;

% Plot each data point, colored by the index of its closest centroid
gscatter(data(:,1), data(:,2), assignment, 'rgb', 'osd');
hold on;

% Plot old centroids with transparent (faded) x marks
plot(centroids(:,1), centroids(:,2), 'x', 'MarkerSize', 12, 'LineWidth', 2, 'Color', [0.5 0.5 0.5 0.5]);

% Plot new centroids
plot(newCentroids(:,1), newCentroids(:,2), 'kx', 'MarkerSize', 12, 'LineWidth', 2);

% Add title and labels
title('Updated Centroids');
xlabel('X');
ylabel('Y');
legend([arrayfun(@(x) ['Cluster ' num2str(x)], unique(assignment), 'UniformOutput', false); 'Old Centroids'; 'New Centroids']);
hold off;
