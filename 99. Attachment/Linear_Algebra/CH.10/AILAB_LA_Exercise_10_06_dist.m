% Clear workspace, command window, and close all figures
clc; clear; close all;

% Matrix A
A = [3 1 5 7 2 10;
     9 8 7 1 5 7;
     10 1 2 5 7 3;
     4 8 6 9 3 6];

%%%%%%% TODO %%%%%%%
% Refer to the lecture slide 44
% LU decomposition with permutation matrix P
[L,U,P] = lu(A);

% Verify the equality of A and transpose(P)*L*U
A2 = P' * L * U;
%%%%%%%%%%%%%%%%%%%%

% Visualize the results
figure;
imagesc(A); % Display the matrix as a color image
title('A matrix');
colorbar; % Show a color scale
colormap jet; % Use the jet color map
axis equal tight;  % Adjust axes to fit the data

figure;
imagesc(P');  
title('transpose P Matrix');
colorbar;  
colormap jet;  
axis equal tight;  

figure;
imagesc(L);  
title('L Matrix');
colorbar;  
colormap jet;  
axis equal tight;

figure;
imagesc(U);  
title('U Matrix');
colorbar;  
colormap jet;  
axis equal tight;

figure;
imagesc(A2);  
title('A2 Matrix');
colorbar;  
colormap jet;  
axis equal tight;