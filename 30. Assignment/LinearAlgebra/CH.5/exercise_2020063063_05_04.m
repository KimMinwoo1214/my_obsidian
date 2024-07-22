matrix1 = [1,2,3;2,3,1;2,2,4];
isSymmetric = 1;

for i = 1:3
    for j = 1:3
        if matrix1(i,j) ~= matrix1(j,i)
            isSymmetric = 0;
        end
    end
end

disp(isSymmetric)
        