clear; close all; clc;

v = [-2, 3];
l2_norm = norm(v, 1);

quiver(0, 0, v(1), v(2), 'b', 'LineWidth', 3, 'AutoScale', 'off');
hold on;
grid on;

plot([0, v(1)], [0, v(2)], 'r', 'LineWidth', 2);
hold off;

xlim([-3, 3]);
ylim([-1, 4]);

xlabel('X-axis');
ylabel('Y-label');

title('Visualization of Vector L2 Norm');
legend('Vector v', 'Magnitude');