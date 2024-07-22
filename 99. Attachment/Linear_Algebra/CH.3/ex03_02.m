clear; close all; clc;

v1 = [1; -3; -2];
v2 = [2; 4; -1;];

normal = cross(v1, v2);

point = v1;

a = normal(1);
b = normal(2);
c = normal(3);
d = -dot(normal, point);

[x ,y] = meshgrid(-10:1:10, -10:1:10);
z = (-d -a*x - b*y) / c;
disp([x, y])
figure;
mesh(x, y, z);
hold on;

quiver3(0, 0, 0, v1(1), v1(2), v1(3), 'r', 'LineWidth', 2, 'AutoScale', 'off', 'MaxHeadSize', 2);
quiver3(0, 0, 0, v2(1), v2(2), v2(3), 'b', 'LineWidth', 2, 'AutoScale', 'off', 'MaxHeadSize', 2);

xlabel('X');
ylabel('Y');
zlabel('Z');

title('Plane Spanned by Two Vectors');
legend('Plane', 'Vector 1', 'Vector 2');
axis equal;
grid on;