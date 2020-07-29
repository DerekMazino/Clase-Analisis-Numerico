clear all
close all
clc
format long
%Implementing 3.2 - a
f = @(x) 60.*x.^45 - 32.*x.^33 + 233.*x.^5 - 47.*x.^2 - 77;%Función a enviar
x = 1/((3)^(0.5))%Indica el punto de diferenciación
tol = 1e-13;%Se indica la tolerancia
[L,n] = my_difflim_Camilo_Marin(f,x,tol);
resp = L(n,2);
fprintf("La derivada en el punto x es: "+num2str(resp))
%Implementing 3.2 - b
g = @(x) tan(cos((sqrt(5)+sin(x))/(1+x.^2)));
x = (1+sqrt(5))/3
tol = 1e-13;
[L,n] = my_difflim_Camilo_Marin(g,x,tol);
resp = L(5,2)
fprintf("La derivada en el punto x es: "+num2str(resp))
