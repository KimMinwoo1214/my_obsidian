clear; close all; clc;

v1 = [1, 2];
reference_points = [0, 0; 2, 3; -1, -1];

figure;
hold on;
grid on;

quiver(reference_points(1, 1), reference_points(1, 2), v1(1), v1(2), 'Color', 'b', 'LineWidth', 2, 'AutoScale', 'off');
quiver(reference_points(2, 1), reference_points(2, 2), v1(1), v1(2), 'r', 'LineWidth', 2, 'AutoScale', 'off');
quiver(reference_points(3, 1), reference_points(3, 2), v1(1), v1(2), 'Color', 'yellow', 'LineWidth', 2, 'AutoScale', 'off');

axis equal;
xlim([-2, 8]);
ylim([-2, 8]);

xlabel('X-axis');
ylabel('Y-axis');

legend('Reference1', 'Reference2', 'Reference3');

hold off;