clear all
close all
clc
funcion = @(x) x.^5-x+3 %Funci�n propuesta
iter = 11;
[vectora, vectorb] = my_visual_bisection_function_Camilo_Marin(funcion, iter); %Se devuelven los puntos a y b de cada iteraci�n, para ver su comporamiento
x = -10:0.01:10; %Intervalo
y = x.^5-x+3;
plot(x,y,':');
hold on
plot(vectora, 0, 'r:+');
plot(vectorb,0,'b:+');

%En conclusi�n, se puede notar que a medida que avanzan las iteraciones,
%los punto 'a' y 'b' se acercan m�s, teniendo proximidad cada vez m�s al punto 'c',
%tal que f(c) = 0.