clc; clear; close all;

function result = subMatrix(originalMatrix, sri, eri, sci, eci)
    result = originalMatrix(sri:eri, sci:eci);
end
    
originalMatrix = zeros(10, 10);

for i = 1:10
    for j = 1:10
        originalMatrix(i,j) = 10 * (i-1) + j - 1;
    end
end

matrix1 = subMatrix(originalMatrix, 3, 4, 1, 5);

figure;
imagesc(originalMatrix);
title('Original Matrix');
xlabel('Columns');
ylabel('Row');
colorbar;
axis equal tight;

for row = 1:10
    for col = 1:10
        text(col, row, num2str(originalMatrix(row, col),'%d'), ...
            'HorizontalAlignment', 'center', ...
            'VerticalAlignment', 'middle', ...
            'FontSize',20);
    end
end

figure;
imagesc(matrix1);
title('Sub-Matrix');
xlabel('Columns');
ylabel('Row');
colorbar;
axis equal tight;
axis([min(originalMatrix(:)), max(originalMatrix(:))]);

for row = 3:4
    for col = 1:5
        text(col, row-3+1, num2str(matrix1(row-3+1, col),'%d'), ...
            'HorizontalAlignment', 'center', ...
            'VerticalAlignment', 'middle', ...
            'FontSize',20);
    end
end