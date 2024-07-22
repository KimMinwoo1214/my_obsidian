% Clear workspace, command window, and close all figures
clear; close all; clc;

A = [2 1; 1 2]; % Hessian matrix form of convex
b = [0 0]';
c = 0;

figure('position', [230,100,1153,387]);
[X,Y] = meshgrid(-10:0.8:10);
fcn = @(x,y) (1/2 * A(1,1)*x.^2 + 1/2 * (A(1,2)+A(2,1))*x.*y + 1/2*A(2,2)*y.^2-b(1)*x - b(2)*y +c);

% Plot 3D
subplot(1,2,1);
surf(X, Y, fcn(X,Y))
xlim([-10,10])
ylim([-10,10])
zlim([-300,300])
xlabel('x')
ylabel('y')
zlabel('z')

subplot(1,2,2);
contour(X,Y,fcn(X,Y),50); hold on;

%%%%%%% TODO %%%%%%%
% Refer to the lecture slide 27
% Get eigenvector & eigenvalue
[V,D] = ;
%%%%%%%%%%%%%%%%%%%%
quiver(0, 0, V(1,1)*D(1,1), V(2,1)*D(1,1), 'AutoScale', 'off', 'Color', 'r', 'LineWidth', 1, 'MaxHeadSize', 10);
quiver(0, 0, V(1,2)*D(2,2), V(2,2)*D(2,2), 'AutoScale', 'off', 'Color', 'r', 'LineWidth', 1, 'MaxHeadSize', 2);

str = ['Matrix {A} =', '$$ \left[ {\matrix{ ', num2str(A(1,1)),' & ', num2str(A(1,2)), ... 
' \cr ', num2str(A(2,1)),' & ', num2str(A(2,2)),' } } \right] $$' ];
t = text(0.6, 0.2, str, 'unit' , 'normalized', 'Interpreter', 'latex', ...
'BackgroundColor', 'w', 'Fontsize', 12);

xlabel('x');
ylabel('y');
