clear all
close all
clc
funcion = @(x) tan(x)^2-x
[a, b] = my_finding_interval_Camilo_Marin(funcion);
fprintf("Valor de a: "+string(a)+"\n");
fprintf("Valor de b: "+string(b));
