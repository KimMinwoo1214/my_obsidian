clear; close all; clc;

v = [-2, 3];
l1_norm = norm(v, 1);

figure;
grid on;

hold on;
quiver(0, 0, v(1), v(2), 'b', 'LineWidth', 2, 'AutoScale', 'off');
plot([0, v(1)], [0, 0], '--k', 'LineWidth', 1);
plot([v(1), v(1)], [0, v(2)], '--k', 'LineWidth', 1);
hold off;

axis equal;
xlim([-3, 3]);
ylim([-1, 4]);

title('Visualization of Vector L1 Norm');
xlabel('X-axis');
ylabel('Y-label');
legend('Vector v');
