%El sistema de ecuaciones queda de la siguiente forma:

clear all
close all
clc

A = [1 1 1 1; 1 2 -0.3 0; 0.1 0.3 0.84 0.4; 0 1 -2 -0.35];
B = [700;0;480;-985];

%Pasamos la matriz al metodo lu

[L,U, P] = my_lu_Camilo_Marin(A)
Y = L\(P*B)
disp ("La respuesta es: ")
X=U\Y

disp ("Según de Matlab es: ")
[L,U] = lu(A)
