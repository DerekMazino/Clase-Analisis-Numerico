clear all
close all
clc
funcion = @(x) 1500*exp(x)+(475*(exp(x)-1))/x-2256
iter = 11;
[vectora, vectorb] = my_visual_bisection_function_Camilo_Marin(funcion, iter); %Se devuelven los puntos a y b de cada iteraci�n, para ver su comporamiento
x = -10:0.01:10; %Intervalo
y = 1500*exp(x)+(475*(exp(x)-1))/x-2256
plot(x,y,':');
hold on
plot(vectora, 0, 'r:+');
plot(vectorb,0,'b:+');
