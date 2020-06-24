clear all
close all
clc

fun = @(x) (5+0.245/x.^2)*(x-0.0266)-28.721%Ecuación de Van der Vals
p0 = 35;
p1 = 30;
iter = 10;

root = my_secant_function_Camilo_Marin(fun, p0, p1, 10)