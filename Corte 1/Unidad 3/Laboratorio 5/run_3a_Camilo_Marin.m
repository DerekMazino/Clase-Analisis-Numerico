clc
clear all
close all
A =[1 1 0 4;2 -1 5 0;5 2 1 2; -3 0 2 6];
[X,Y] = my_lu_Camilo_Marin(A);

disp ("L y U - Mi codigo:") 
X
Y

disp ("Según de Matlab es: ")
[L,U] = lu(A)

disp ("Al hacer L*U se obtiene lo siguiente: ")
disp ("Mi codigo: ")
X*Y
disp ("Versión Matlab: ")
L*U
disp ("Lo cual indica que ambas factorizaciones están bien, sin embargo, ")
disp ("la permutación de las filas es diferente en los métodos")