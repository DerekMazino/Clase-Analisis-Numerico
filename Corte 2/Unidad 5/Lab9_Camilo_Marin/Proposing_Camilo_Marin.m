clc
close all
clear all
%El crecimiento poblacional de un cultivo de bacterias esta dado por la
%
%tomando M=6
a=0
b=6
M=6
fprintf('El crecimiento poblacional de un cultivo de bacterias esta dado por la\n');
fprintf('ecuacion P(t)=P0*e^0.4055t donde p0 es el valor inicial. Cuanto crecio el cultivo \n');
fprintf('entre t=0 y t=6, tomando p0=3/2 y M=6?.\n');
fun=@(x) (3/2)*exp(x.*0.4055);
res=my_trapezoidal_function_Camilo_Marin(fun,a,b,M); %calcula la integral
fprintf('Usando el método del trapezoide tenemos que\n')
fprintf('El valor aproximado de bacterias es: %3.10f\n',res)


res=my_simpson_function_Camilo_Marin(fun,a,b,M); %calcula la integral
fprintf('Usando el método de Simpson tenemos que\n')
fprintf('El valor aproximado de bacterias es: %3.10f\n',res)