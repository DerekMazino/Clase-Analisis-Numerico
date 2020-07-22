clear all
close all
clc

disp("Para la primera tabla");
x = [0.5 0.8 1.1 1.8 4];
y = [7.1 4.4 3.2 1.9 0.9];
m = -2;
[A,E] = my_powerfit_fredy_mendoza(x,y,m);
E


disp("Para la segunda");
x_2 = [0.7 0.9 1.1 1.6 3];
y_2 = [8.1 4.9 3.3 1.6 0.5];
m_2 = -2
[A_2,E_2] = my_powerfit_fredy_mendoza(x_2,y_2,m_2);
E_2

disp("Como vemos, el del menor error corresponde a la segunda tabla, por lo tanto se tiene: ");
plot(x_2, y_2, '*');
hold on
X = 0.7:0.01:3;
Y = A_2.*(X.^-2);
title("Gráfica 2");
plot(X,Y);

