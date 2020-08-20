clc
close all
clear all
% a=0;
% b=2;
% y0=0.5;
% N=10;
% fun = @(t,y) y-(t.^2)+1;
fprintf("Solucion 3.2 por Metodo de Euler");
fprintf("Item2-1\n");
a=0;
b=1;
N=5;
y0=300;
fun= @(t,y) -y
w = my_function_euler_Camilo_Marin(a, b, y0, fun, N);
w