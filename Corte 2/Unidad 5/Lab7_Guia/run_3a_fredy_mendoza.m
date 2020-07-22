close all
clear all
clc

x = [-6 -2 0 2 6];
y = [-5.3 -3.5 -1.7 0.2 4];
f= [-6 -2.84 -1.26 0.32 3.48];
[a,b, E] = my_least_square_fredy_mendoza(x,y,f);
hold on

plot(x,y, '*');
hold on
X = -6:0.01:6;
Y = a.*X + b;
plot(X,Y);
title('Gráfica 3');
E