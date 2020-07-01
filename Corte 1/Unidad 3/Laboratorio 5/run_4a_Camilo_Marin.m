%El sistema de ecuación queda de la siguiente forma:
% x = y+z -> x-y-z=0
% y =2z -> y-2z = 0
% 10x + 15y + 40z = 300
clear all
close all
clc

A = [1 -1 -1; 0 1 -2; 10 15 40];
B = [0;0;300];

%Pasamos la matriz al metodo lu

[L,U] = my_lu_Camilo_Marin(A)

%Resolvemos LY= B

Y = linsolve(L,B);

% Resolvemos UX=Y

disp = ("El resultado es");
X = linsolve(U,Y)