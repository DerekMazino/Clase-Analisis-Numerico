close all
clear all
clc
fun = @(x) 45*x.^2-x.^3-8613
iter = 11;
raiz = my_bisection_function_Camilo_Marin(fun,iter)
fprintf("Raiz=: "+string(raiz))