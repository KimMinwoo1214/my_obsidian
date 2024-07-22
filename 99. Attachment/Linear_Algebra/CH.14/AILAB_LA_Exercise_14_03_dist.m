% Clear workspace, command window, and close all figures
clc; clear; close all;

% Define A matrix
A = [1,3:4,2]/4;

%%%%%%% TODO %%%%%%%
% Refer to the lecture slide 28
% Calculate the SVD using 'svd()' function

%%%%%%%%%%%%%%%%%%%%


% Use inage
img = double(rgb2gray(imread('lena_std.tif')));

%%%%%%% TODO %%%%%%%
% Refer to the lecture slide 28
% Calculate the SVD using 'svd()' function use variable 'img'

%%%%%%%%%%%%%%%%%%%%
[U, S, V] = svd(img);
layer1 = U(:, 1)*S(1, 1)*V(:, 1)';
layer2 = U(:, 1)*S(1, 2)*V(:, 2)';
figure;

for i = 1:size(S,1)
   imagesc(U(:, 1:i)*S(1:i, 1:i)*V(:, 1:i)');
   colormap('gray')
   name = ['layers added upto ', num2str(i)];
   title(name);
   if i<30
      pause(0.5)
   elseif 3<=i<100
      pause(0.1)
   else
      pause(0.01)
   end
end