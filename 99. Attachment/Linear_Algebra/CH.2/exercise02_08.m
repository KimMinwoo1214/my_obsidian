clear; close all; clc;

v = [0, 1, 2];
u = [13, 21, 34];
w = [3, 5, 8];

res1 = dot(v, u + w);
res2 = dot(v, w) + dot(v, u);

disp(u + w);
disp(res1);
disp(res2);