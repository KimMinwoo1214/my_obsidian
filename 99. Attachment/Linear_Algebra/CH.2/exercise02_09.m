clear; close all; clc;

rowV = [-1 0 0];
colV = [0, -2, 0];
crossproduct = cross(rowV, colV);

disp(crossproduct);

figure;
hold on;
axis equal;
grid on;
view(45, 45);

quiver3(0, 0, 0, rowV(1), rowV(2), rowV(3), 'r', 'LineWidth', 2, 'AutoScale', 'off');
quiver3(0, 0, 0, colV(1), colV(2), colV(3), 'b', 'LineWidth', 2, 'AutoScale', 'off');
quiver3(0, 0, 0, crossproduct(1), crossproduct(2), crossproduct(3), 'g', 'Linewidth', 2, 'AutoScale','off');

title('cross product');
xlabel('X');
ylabel('Y');
zlabel('Z');
legend('row vector', 'column vector', 'cross product');

hold off;
