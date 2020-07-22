clear all
close all
clc

disp("Para la primera tabla");
x = [0.5 0.8 1.1 1.8 4];
y = [7.1 4.4 3.2 1.9 0.9];
m = -1;
[A,E] = my_powerfit_fredy_mendoza(x,y,m);
E

disp("Para la segunda");
x_2 = [0.7 0.9 1.1 1.6 3];
y_2 = [8.1 4.9 3.3 1.6 0.5];
m_2 = -1;
[A_2,E_2] = my_powerfit_fredy_mendoza(x_2,y_2,m_2);
E_2

disp("Como vemos, la del menor error es la tabla 1, por lo tanto se tiene: ");
plot(x,y, '*');
hold on

X = 0.5:0.01:4;
Y = A.*(X.^-1);
plot(X,Y);
title('Gráfica 1');
suma = sum(A.*x.^m - y);
E;