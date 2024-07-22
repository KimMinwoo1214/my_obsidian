clear; close all; clc;

vector1 = [1, 2, 3];
vector2 = [4, 5, 6];
hadamard_product = vector1 .* vector2;

subplot(3, 1, 1);
bar(vector1, 'r');
xlabel('index');
ylabel('vector1 element');
title('vector1');

subplot(3, 1, 2);
bar(vector2, 'b');
xlabel('index');
ylabel('vector2 element');
title('vector2');

subplot(3, 1, 3);
bar(hadamard_product, 'g');
xlabel('index');
ylabel('Hadamard Product');
title('Hadamard Product');

sgtitle('Visualization of Hadamard Product');
