function[a,b] = my_lsline_Camilo_Marin(x,y)
X=sum(x);%Sumatoria de x
Y=sum(y);%Sumatoria de y
XX=sum(x.^2);%Sumatoria de x^2
XY=sum(x.*y);%Sumatoria de x*y
m=length(x);
[a, b]= minimosCuadrados(X,Y,XX,XY,m);
end

%Calculando recta de minimos cuadrados

function [a,b] = minimosCuadrados(X,Y,XX,XY,m)
a=(m*XY-X*Y)/(m*XX-X^2);
b=(Y*XX-X*XY)/(m*XX-X^2);
end
