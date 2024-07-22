clear; close all; clc;

OriginalVector = [1; 2];
scalars = -1/2;

scaled_vector = OriginalVector * scalars;

disp(OriginalVector);
disp(scaled_vector);

figure;
grid on;
hold on;

xlim([-3, 3]);
ylim([-3, 3]);
quiver(0, 0, OriginalVector(1), OriginalVector(2), 'b', 'LineWidth', 2, 'AutoScale', 'off', 'MaxHeadSize', 3);
quiver(0, 0, scaled_vector(1), scaled_vector(2), 'r', 'LineWidth', 2, 'AutoScale', 'off', 'MaxHeadSize', 3);
hold off

axis equal;
title('Visualization of Scalar-Vector Multiplication');
xlabel('X-axis');
ylabel('Y-axis');
legend('OriginalVector', 'Scaled Vector');