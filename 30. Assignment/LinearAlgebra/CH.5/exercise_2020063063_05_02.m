clc; clear; close all;

function result = dotProduct(matrixA, matrixB)
    % 두 행렬의 크기 확인
    [rowsA, colsA] = size(matrixA);
    [rowsB, colsB] = size(matrixB);
    
    % 내적 조건 확인
    if colsA ~= rowsB
        error('Cant calculate dot product.');
    end
    
    % 결과 행렬 초기화
    result = zeros(rowsA, colsB);
    
    % 내적 계산
    for i = 1:rowsA
        for j = 1:colsB
            sum = 0;
            for k = 1:colsA % 또는 rowsB, 둘은 같은 값이어야 함
                sum = sum + matrixA(i, k) * matrixB(k, j);
            end
            result(i, j) = sum;
        end
    end
end

% 예제 행렬
matrixA = [1, 2; 3, 4];
matrixB = [2, 0; 1, 3];

% 내적 계산
result = dotProduct(matrixA, matrixB);
disp(result);