% Scalars - length: 4
scalars = [1, 2, -3, 0.5];

% Vectors - dimension: 3, length: 3
vectors = {[4, 5, 1]; [-4, 0, -4]; [1, 3, 2]};

linCombo2 = zeros(1, length(vectors{1}));

for i = 1:length(scalars)
    linCombo2 = linCombo2 + scalars(i) * vectors{i};
end

% Display linCombo2
disp(linCombo2);

%스칼라는 4개지만
%벡터는 3개만 존재하기 때문에
%오류가 발생한다.