clear; close all; clc;

% Scalars
l1 = 1;
l2 = 2;
l3 = -3;

% Vectors
v1 = [4, 5, 1];
v2 = [-4, 0, -4];
v3 = [1, 3, 2];

% Scalars and vectors organized into arrays
scalars = [1, 2, -3];
vectors = {v1; v2; v3};

% Initialize the linear combination
linCombo2 = zeros(1, length(vectors{1}));

% Implement linear weighted combination using a loop
for i = 1:length(scalars)
    linCombo2 = linCombo2 + scalars(i) * vectors{i};
end

% Confirm it's the same answer as above
disp(linCombo2);