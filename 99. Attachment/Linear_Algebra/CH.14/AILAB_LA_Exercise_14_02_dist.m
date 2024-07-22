% Clear workspace, command window, and close all figures
clc; clear; close all;

% Define A matrix and vectors
vector1 = [-1,2,1]'; 
vector2 = [1,1,1]';
A = [vector1/norm(vector1) vector2/norm(vector2)]*[vector1/norm(vector1) vector2/norm(vector2)]';

% Anination with dots
[X,Y,Z] = ndgrid(-1:0.3:1);
n_steps = 100;
step_mtx = eye(3);
newXYZ = A*[X(:), Y(:), Z(:)]';
xyz_min = min(min(min([newXYZ(:), newXYZ(:), newXYZ(:)]')))*1.5;
xyz_max = max(max(max([newXYZ(:), newXYZ(:), newXYZ(:)]')))*1.5;
LIMS = [xyz_min, xyz_max];

dot_colors = jet(length(X(:)));
figure(2)
scatter3(X(:), Y(:), Z(:),30, dot_colors,'filled');
xlim(LIMS); ylim(LIMS); zlim(LIMS);

grid on;
hold on;
line([xyz_min, xyz_max], [0,0], [0,0], 'linewidth', 3)
line([0,0], [xyz_min, xyz_max], [0,0], 'linewidth', 3)
line([0,0], [0,0], [xyz_min, xyz_max], 'linewidth', 3)
xlabel('x'); ylabel('y'); zlabel('z')
hold on;
% pause;
for i_steps = 1:n_steps
   step_mtx = (A-eye(3))/n_steps*i_steps;

   new_xyz = (eye(3)+step_mtx)*[X(:), Y(:), Z(:)]';
   scatter3(new_xyz(1, :), new_xyz(2, :), new_xyz(3, :), 30, dot_colors, 'filled');
   grid on; 
   hold on;
   line([xyz_min, xyz_max], [0,0], [0,0], 'linewidth', 3)
   line([0,0], [xyz_min, xyz_max], [0,0], 'linewidth', 3)
   line([0,0], [0,0], [xyz_min, xyz_max], 'linewidth', 3)
   hold off;
   xlim(LIMS); ylim(LIMS); zlim(LIMS);
   xlabel('x'); ylabel('y'); zlabel('z');
   pause(0.01);
end

% SVD
%%%%%%% TODO %%%%%%%
% Refer to the lecture slide 18
% Calculate the SVD using 'svd()' function
[U,S,V] = ;
%%%%%%%%%%%%%%%%%%%%
hold on;
for i = 1:3
   mArrow3([0,0,0], [U(1, i)*S(i, i), U(2, i)*S(i, i), U(3, i)*S(i,i)], 'color', 'b');
   hold on;
end

for i = 1:3
   mArrow3([0,0,0], [V(1, i), V(2, i), V(3, i)], 'color', 'g');
end