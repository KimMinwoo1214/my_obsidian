clear; close all; clc;

colVec = [1; 2];
rowVec = [1, 2];
asList = [1, 2];

figure;
hold on;

quiver(0, 0, asList(1), asList(2), 'Color', 'r', 'LineWidth', 3, 'AutoScale', 'off');
quiver(0, 0, rowVec(1), rowVec(2), 'Color', 'g', 'LineWidth', 2, 'AutoScale', 'off');
quiver(0, 0, colVec(1), colVec(2), 'Color', 'b','LineWidth', 1, 'AutoScale', 'off');

axis equal;
grid on;

title('Vectors');
legend('asList', 'rowVec', 'colVec');
