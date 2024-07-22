clear; close all; clc;

v = [1, 2];
scalars = 2;

vplusscalar = v + scalars;

disp(vplusscalar);

figure;
grid on;
hold on;

xlim([0, 5]);
ylim([0, 5]);
quiver(0, 0, v(1), v(2), 'b', 'LineWidth', 2, 'AutoScale', 'off');
quiver(0, 0, vplusscalar(1), vplusscalar(2), 'r', 'LineWidth', 2, 'AutoScale', 'off');
hold off;

xlabel('X-axis');
ylabel('Y-axis');
title('Visualization of Vector and Scalar Addition');

legend('Vector v', 'Vector v + Scalar');
