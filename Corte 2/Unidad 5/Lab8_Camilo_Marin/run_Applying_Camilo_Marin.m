clear all
close all
clc
%Para la ecuacónf(x)=cos(x)
%Utilizando la formula 6

fprintf("Calculando la segunda derivada de la función f(x)=cos(x) con h=0.05 y usando la ecuacion 6 \n");
h=0.05;
x0=1;
f=(cos(x0+h)-2*cos(x0)+cos(x0-h))/h^2;
E=(4*(0.5e-9))/(h^2) + ((h^2)*cos(0))/12
f=f+E
fprintf("f''(x)="+num2str(f)+"\n\n");

fprintf("Calculando la segunda derivada de la función f(x)=cos(x) con h=0.01 y usando la ecuacion 6 \n");
h=0.01;
x0=1;
f=(cos(x0+h)-2*cos(x0)+cos(x0-h))/h^2;
E=(4*(0.5e-9))/(h^2) + ((h^2)*cos(0))/12
f=f+E
fprintf("f''(x)="+num2str(f)+"\n\n");

fprintf("Calculando la segunda derivada de la función f(x)=cos(x) con h=0.1 y usando la ecuacion 12 \n");
h=0.1;
x0=1;
f=(-cos(x0+2*h)+16*cos(x0+h)-30*cos(x0)+16*cos(x0-h)-cos(x0-2*h))/(12*(h^2));
% f=(-cos(1.2)+16*cos(1.1)-30*cos(1)+16*cos(0.9)-cos(0.98))/(12*(0.1^2));
E=(16*(0.5e-9))/(3*(h^2)) + ((h^4)*cos(0))/90
f=f+E
fprintf("f''(x)="+num2str(f)+"\n\n");

fprintf("Según los resultados anteriores, y teniendo en cuenta que la solución analitica de f''(x)=-0.5403023059\n");
fprintf("'c', da la respuesta más acertada y por lo tanto es la mejor aproximación\n");