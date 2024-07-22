clear; close all; clc;

v = [1; 2];
w = [4; -6];
sum_v_w = v + w;

figure;
hold on;
grid on;

quiver(0, 0, v(1), v(2), 'r', 'LineWidth', 2, 'AutoScale', 'off');
quiver(0, 0, w(1), w(2), 'b', 'LineWidth', 2, 'AutoScale', 'off');
quiver(0, 0, sum_v_w(1), sum_v_w(2), 'g', 'LineWidth', 2, 'AutoScale', 'off');
hold off;

axis equal;
xlabel('x');
ylabel('y');
title('Vector Addition');

legend('v', 'w', 'v+w');
