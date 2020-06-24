clear all
close all
clc

fun = @(x)x.^3 + 2*x -10;%Polinomio
p0 = 5;
p1 = 7;
iter = 10;
root1= my_visual_secant_function_Camilo_Marin(fun, -5,0,iter)