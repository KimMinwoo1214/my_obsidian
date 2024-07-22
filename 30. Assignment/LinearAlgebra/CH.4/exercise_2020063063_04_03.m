clc; clear; close all;

matrix1_row_size = input("Enter row size: ");
matrix1_col_size = input("Enter col size: ");

matrix2_row_size = input("Enter row size: ");
matrix2_col_size = input("Enter col size: ");

squareMatrix1 = randi(10, matrix1_row_size, matrix1_col_size);
squareMatrix2 = randi(10, matrix2_row_size, matrix2_col_size);

disp(squareMatrix1);
disp(squareMatrix2);

if matrix1_row_size == matrix2_col_size
    multiplication_vector = zeros(matrix1_row_size, matrix2_col_size);
    for i = 1:matrix1_row_size
        for j = 1:matrix2_col_size
            multiplication_vector(i, j) = dot(squareMatrix1(i,:), squareMatrix2(:,j));
        end
    end
    disp(multiplication_vector);
else error('dot product is not available');
end