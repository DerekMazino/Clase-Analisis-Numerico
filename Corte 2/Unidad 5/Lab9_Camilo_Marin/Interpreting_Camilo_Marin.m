clc
close all
clear all
%La probabilidad de que una maquina falle es dada por
%f(t)=(1/(2pi)^1/2)e^((-t^2)/2). La distribucion acumulada a determinar esta definidad por
a=3
b=4
M=5

fun=@(x) exp((-x.^2)/2);
res=my_trapezoidal_function_Camilo_Marin(fun,a,b,M); %calcula la integral
distribucionAcumulada=0.5+(1/(2*pi)^0.5)*res;%Distribucion acumulada
fprintf('Usando el método del trapezoide tenemos que\n')
fprintf('El valor aproximado de la integral: %3.10f\n',res)
fprintf('El valor de la distribucion acumulada es: %3.10f\n',distribucionAcumulada)


res=my_simpson_function_Camilo_Marin(fun,a,b,M); %calcula la integral
distribucionAcumulada=0.5+(1/(2*pi)^0.5)*res;%Distribucion acumulada
fprintf('Usando el método de Simpson tenemos que\n')
fprintf('El valor aproximado de la integral: %3.10f\n',res)
fprintf('El valor de la distribucion acumulada es: %3.10f\n',distribucionAcumulada)