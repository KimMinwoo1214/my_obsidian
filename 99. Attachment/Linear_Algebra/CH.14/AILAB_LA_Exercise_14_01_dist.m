% Clear workspace, command window, and close all figures
clc; clear; close all;

% REQUIREMENT
% You need 'Numerical Computing with MATLAB toolbox' to use 'eigshow()'

A =[1 3;4 2]/4;
n_steps = 100; 
step_mtx = eye(2); 
[x, y] = ndgrid(-1:0.15:1);
xy_min = min(min(A*[x(:), y(:)]'))*1.5;
xy_max = max(max(A*[x(:), y(:)]'))*1.5;

dot_colors = jet(length(x(:)));

xlim([xy_min, xy_max]); 
ylim([xy_min, xy_max]); 
pause;
for i_steps = 1:n_steps
   %%%%%%% TODO %%%%%%%
   % Refer to the lecture slide 10
   % Calculate the step matrix and new xy data
   step_mtx = (A - eye(2)) / n_steps * i_steps;
   new_xy = (eye(2) + step_mtx) * [x(:), y(:)];
   %%%%%%%%%%%%%%%%%%%%
  scatter(new_xy(1,:), new_xy(2,:),30,dot_colors,'filled') 
   grid on; 
   xlim([xy_min, xy_max]); ylim([xy_min, xy_max]);
   pause(0.01);
end 

% Animation with circle
t=linspace(0,2*pi,100);
x=cos(t); 
y=sin(t);
plot(x,y);
[temp] = A*[x;y];
plot(temp(1,:),temp(2,:)) 
XLIM=[xy_min, xy_max];
YLIM=[xy_min, xy_max];

% Animation
figure;
plot(x,y);
grid on;
xlim(XLIM);
ylim(YLIM);
pause;

for i_steps = 1:n_steps
   %%%%%%% TODO %%%%%%%
   % Refer to the lecture slide 10
   % Calculate the step matrix and new xy data
   step_mtx = ;
   new_xy = ;
   %%%%%%%%%%%%%%%%%%%%
   plot(new_xy(1,:), new_xy(2,:));
   grid on;
   xlim(XLIM);
   ylim(YLIM);
   pause(0.01);
end

% Eigshow
figure;
eigshow(A)