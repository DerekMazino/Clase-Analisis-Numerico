clc
close all
clear all
% a=0;
% b=2;
% y0=0.5;
% N=10;
% fun = @(t,y) y-(t.^2)+1;
fprintf("Solucion 3.2 por Metodo de RK4");
fprintf("Item1-1\n");
a=0;
b=0.4;
N=2;
y0=1/10;
fun= @(t,y) exp(-2.*t)-2.*y
w = my_function_RK4_Camilo_Marin(a, b, y0, fun, N);
w
fprintf("Item1-2\n");
a=0;
b=0.4;
N=4;
y0=1/10;
fun= @(t,y) exp(-2.*t)-2.*y
w = my_function_RK4_Camilo_Marin(a, b, y0, fun, N);
w
