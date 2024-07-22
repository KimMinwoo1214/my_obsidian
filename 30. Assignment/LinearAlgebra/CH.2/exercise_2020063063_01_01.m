clear; close all; clc;
%% Figure1
v1 = [1; 2];
v2 = [2; -1];

sum_v = v1 + v2;

figure;
hold on;

quiver( 0, 0, v1(1), v1(2), 'Color', 'r', 'LineWidth', 1, 'AutoScale', 'off');

quiver(v1(1), v1(2), v2(1), v2(2), 'Color', 'b', 'LineWidth', 1, 'AutoScale', 'off');

quiver( 0, 0, sum_v(1), sum_v(2), 'Color', 'g', 'LineWidth', 1, 'AutoScale', 'off');

text(v1(1)/2, v1(2)/2, ['v'], 'HorizontalAlignment', 'center');

text(v2(1), (v1(2) - v2(2))/2, ['w'], 'HorizontalAlignment', 'center');

text(sum_v(1)/2, sum_v(2)/2, ['v+w'], 'HorizontalAlignment', 'center');

axis equal;
xlim([-1, 4]);
ylim([-1.5, 3]);

xlabel('X axis');
ylabel('Y axis');

legend('v', 'w', 'v + w');

title('Visualization of v + w Vector');

grid on;
hold off;

%% Figure2

v1 = [1; 2];
v2 = [2; -1];

minus_v = v1 - v2;

figure;
hold on;

quiver( 0, 0, v1(1), v1(2), 'Color', 'r', 'LineWidth', 1, 'AutoScale', 'off');

quiver(0, 0, v2(1), v2(2), 'Color', 'b', 'LineWidth', 1, 'AutoScale', 'off');

quiver( v2(1), v2(2), minus_v(1), minus_v(2), 'Color', 'g', 'LineWidth', 1, 'AutoScale', 'off');

text(v1(1)/2, v1(2)/2, ['v'], 'HorizontalAlignment', 'center');

text(v2(1)/2, v2(2)/2, ['w'], 'HorizontalAlignment', 'center');

text(minus_v(1)/2 + v2(1), minus_v(2)/2 + v2(2), ['v-w'], 'HorizontalAlignment', 'center');

axis equal;
xlim([-2, 4]);
ylim([-2, 2.5]);

xlabel('X axis');
ylabel('Y axis');

legend('v', 'w', 'v - w');

title('Visualization of v - w Vector');

grid on;
hold off;