clc; clear; close all;

inputMatrix = [1, 2; 3, 4];

function result = handMadeInverseMatrix(matrix1)
    result = zeros(2);

    result = [matrix1(2, 2), -matrix1(1,2); -matrix1(2, 1), matrix1(1, 1)];
    if det(result) == 0
        error("There's no inverse matrix.");
    end

    result = result / det(result);
end

InverseMatrix = handMadeInverseMatrix(inputMatrix);

result = InverseMatrix * inputMatrix;

disp(InverseMatrix);
disp(result);