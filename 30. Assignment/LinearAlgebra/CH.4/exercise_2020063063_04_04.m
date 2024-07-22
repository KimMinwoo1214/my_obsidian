nPerClust = 50;

% Blur around centroid (std units)
blur = 1;

% XY centroid locations
A = [ 1, 1 ];
B = [ -3, 1 ];
C = [ 3, 3 ];

% Generate data
a = [ A(1)+randn(nPerClust,1)*blur , A(2)+randn(nPerClust,1)*blur ];
b = [ B(1)+randn(nPerClust,1)*blur , B(2)+randn(nPerClust,1)*blur ];
c = [ C(1)+randn(nPerClust,1)*blur , C(2)+randn(nPerClust,1)*blur ];

% Concatenate into a matrix
data = [a; b; c];

% Plot data
figure;
plot(data(:,1), data(:,2), 'ko', 'MarkerFaceColor', 'w');
title('Raw (preclustered) data');
xticks([]);
yticks([]);

% Number of clusters
k = 3;

% Randomly select cluster centers from the data
ridx = randperm(size(data, 1), k);
centroids = data(ridx, :);

% Setup the figure
figure;
lineColors = [0, 0, 0; .4, .4, .4; .8, .8, .8]; % Different shades of gray for each

% Plot data with initial random cluster centroids
subplot(2, 2, 1);
plot(data(:, 1), data(:, 2), 'ko', 'MarkerFaceColor', 'w'); hold on;
plot(centroids(:, 1), centroids(:, 2), 'ko'); hold off;
title('Iteration 0');
set(gca, 'XTick', [], 'YTick', []);

for iteri = 1:3
    % Step 1: Compute distances from each point to each centroid
    distances = zeros(size(data, 1), k);
    for i = 1:k
        distances(:, i) = sqrt(sum((data - centroids(i, :)).^2, 2));
    end

    % Step 2: Assign to group based on minimum distance
    [~, groupidx] = min(distances, [], 2);

    % Step 3: Recompute centroids
    for i = 1:k
        centroids(i, :) = mean(data(groupidx == i, :), 1);
    end

    % Plotting
    subplot(2, 2, iteri+1);
    hold on;
    for i = 1:length(data)
        plot([data(i, 1), centroids(groupidx(i), 1)], [data(i, 2), centroids(groupidx(i), 2)], 'Color', lineColors(groupidx(i), :));
    end

    plot(centroids(:, 1), centroids(:, 2), 'ko');
    hold off;
    title(sprintf('Iteration %d', iteri));
    set(gca, 'XTick', [], 'YTick', []);
end

% Save the figure
saveas(gcf, 'Figure_03_03.png');