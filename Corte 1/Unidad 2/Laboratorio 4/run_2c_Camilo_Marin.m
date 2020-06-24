clear all
close all
clc

c = 10;
vy = 160*sin(5/18 * pi);
fun = @(t) (c*vy + 32*c.^2)*(1- exp(-(t/c))) - 32*c*t;
root = my_secant_function_Camilo_Marin(fun, 5,10,10)
root1= my_visual_secant_function_Camilo_Marin(fun,5,10,10)