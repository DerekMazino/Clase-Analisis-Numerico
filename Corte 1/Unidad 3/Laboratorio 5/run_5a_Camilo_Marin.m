close all
clear all
clc

% Problema
% Un cliente de un supermercado ha pagado un total de 156 € por 24 l de
% leche, 6 kg de jamón serrano y 12 l de aceite de oliva. Calcular el precio
% de cada artículo, sabiendo que 1 l de aceite cuesta el triple que 1 l de leche
% y que 1 kg de jamón cuesta igual que 4 l de aceite más 4 l de leche.

%Sistema de ecuaciones 3x3

% 24x+6y+12z=156
% -3x+z=0
% 4x - y + 4z= 0

clear all
close all
clc

A= [24 6 12; -3 0 1; -4 1 -1];
B= [156;0;0];

[L,U] = my_lu_Camilo_Marin(A)
Y = linsolve(L,B);

disp ("La respuesta es: ")
X = linsolve(U,Y)
