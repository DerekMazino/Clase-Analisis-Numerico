clc
clear all
close all
A =[1 1 0 4;2 -1 5 0;5 2 1 2; -3 0 2 6];
[X,Y] = my_lu_Camilo_Marin(A);

disp ("L y U - Mi codigo:") 
X
Y

disp ("Seg�n de Matlab es: ")
[L,U] = lu(A)

disp ("Al hacer L*U se obtiene lo siguiente: ")
disp ("Mi codigo: ")
X*Y
disp ("Versi�n Matlab: ")
L*U
disp ("Lo cual indica que ambas factorizaciones est�n bien, sin embargo, ")
disp ("la permutaci�n de las filas es diferente en los m�todos")