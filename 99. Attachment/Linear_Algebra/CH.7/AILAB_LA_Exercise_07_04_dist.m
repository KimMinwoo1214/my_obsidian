% Clear workspace, command window, and close all figures
clc; clear; close all;

% Initialize image size
imgN = 20;
image = randn(imgN, imgN);

% Initialize convolution kernel
kernelN = 20;
[X, Y] = meshgrid(linspace(-3, 3, kernelN+1), linspace(-3, 3, kernelN+1));
kernel = exp(-(X.^2 + Y.^2) / kernelN);
kernel = kernel / sum(kernel(:)); % Normalize kernel

% Prepare for convolution
halfKr = floor(kernelN / 2);
convoutput = zeros(imgN + kernelN, imgN + kernelN);

% Add padding to the image manually (replacing padarray)
imagePad = zeros(size(convoutput));
imagePad(halfKr + 1:end-halfKr, halfKr + 1:end-halfKr) = image;

% Perform convolution for each pixel of the image
for rowi = halfKr + 1 : imgN + halfKr
    for coli = halfKr + 1 : imgN + halfKr
        % Extract a piece of the image
        pieceOfImg = imagePad(rowi - halfKr : rowi + halfKr, coli - halfKr : coli + halfKr);
        
        %%%%%%% TODO %%%%%%%
        % Dot product: element-wise multiplication and sum
        % Use '.*' function to element-wise multiplication
        % Input is pieceOfImg and kernel
        % Output is the sum of element of element-wise multiplicaited matrix
        % Refer to the lecture slide 33
        dotprod = ;
        %%%%%%%%%%%%%%%%%%%%
        
        % Store the result for this pixel
        convoutput(rowi, coli) = dotprod;
    end
end

% Trim the edges
convoutput = convoutput(halfKr + 1:end-halfKr, halfKr + 1:end-halfKr);

% Visualize the original image
figure;
imagesc(image);
axis equal;
colormap gray;
colorbar;
title('Original Image');

% Visualize the convolution output
figure;
imagesc(convoutput);
axis equal;
colormap gray;
colorbar;
title('Convolution Output');
