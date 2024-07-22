clc; clear; close all;

originalMatrix = randi([-10, 10], 4, 4);

%Create a 4x4 grid matrix where elements are (-1)^(i+j)
[i, j] = meshgrid(1:4, 1:4);
gridMatrix = (-1).^(i + j);

minorMatrix = zeros(4);

for i = 1:4
    for j = 1:4
        tempMatrix = originalMatrix([1:i-1, i+1:end], [1:j-1, j+1:end]);
        minorMatrix(i, j) = det(tempMatrix);
    end
end

cofactorsMatrix = zeros(4);

for i = 1:4
    for j = 1:4
        tempMatrix = originalMatrix([1:i-1, i+1:end], [1:j-1, j+1:end]);
        cofactorsMatrix(i, j) = (-1)^(i+j) * det(tempMatrix);
    end
end

determinant = det(originalMatrix);

if determinant == 0
    error('The original matrix is singular and does not have an invers.');
end

adjugateMatrix = transpose(cofactorsMatrix);
inverseMatrix = inv(originalMatrix);

%Compute the product of the original matrix and its inverse
identityMatrix = originalMatrix * inverseMatrix;

visualizeMatrix(originalMatrix, 'Original Matrix');
visualizeMatrix(gridMatrix, 'GridMatrix (-1)^(i+j)');
visualizeMatrix(minorMatrix, 'Minor Matrix');
visualizeMatrix(cofactorsMatrix, 'Cofactors Matrix');
visualizeMatrix(adjugateMatrix, 'Adjugate Matrix');
visualizeMatrix(inverseMatrix, 'Inverse Matrix');
visualizeMatrix(identityMatrix, 'Product of Original and Inverse Matrix');

function visualizeMatrix(matrix, titleStr)
    figure;
    imagesc(matrix);
    colorbar;
    title(titleStr);
    colormap jet;
    axis square;
    for i = 1:size(matrix, 1)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
        for j = 1:size(matrix, 2)
            text(j, i, num2str(matrix(i, j), '%.2f'), ...
                'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle', ...
                'Color', 'white', 'FontSize', 10);
        end
    end
end

a = rand(3);
disp(a);
a(2,:) = [];
disp(a);