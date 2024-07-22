clear; close all; clc;
rowVec = [1, 2, 3, 4, 5];

n = length(rowVec);

colVec = zeros(n, 1);

for i = 1:n
    colVec(i) = rowVec(i);
end

disp(colVec);