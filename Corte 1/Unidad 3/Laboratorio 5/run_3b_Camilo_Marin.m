%El sistema de ecuaciones queda de la siguiente forma:

clear all
close all
clc

A = [1 2 -3 4; 4 8 12 -8; 2 3 2 1; -3 -1 1 -4];
B = [3;60;1;5];

%Pasamos la matriz al metodo lu

[L,U, P] = my_lu_Camilo_Marin(A)
Y = L\(P*B)
disp ("La respuesta es: ")
X=U\Y
