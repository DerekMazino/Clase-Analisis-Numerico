clear all
close all
clc
fun = @(x) x.^3+13*x.^2-297.5*x+0.00000375*exp(x);
der = @(x) 3*x.^2 +13+2*x-297.5+0.00000375*exp(x);
iter = 10;
p0 = 5;
error = 1e-8;
[root]= my_newton_function_Camilo_Marin_modify(fun,der,iter,p0,error)