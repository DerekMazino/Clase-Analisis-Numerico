
close all
clear all
clc
%Lagrange 
x = 0:1:4;
%y = [0 0.75 2.25 3 2.25]
%Funcion Original
y = 3*sin ( x .*pi/6).^2 ;

%Newton

fp=my_NewtonPolynomial_Camilo_Marin(x,y);% Se envían como parametros el dominio y la función creados arriba
pretty(fp);%Convierto la expresión a una formula matemática para que matlab pueda procesarla

vi=eval(fp);
disp(vi)
n = length(x)-1;
% Grafica
figure ;
plot (x ,y ,'o') ; hold on
t = 0:0.01:4;
plot (t , my_LagrangePolynomial_Camilo_Marin (x ,y , t ) ,'r') ;
plot (t ,  3*sin ( t .*pi/6).^2 ,'g') ;


% hold on;
t=0:1:4;
ezplot(fp,[x(1) x(n+1)]);
plot(t,vi,'*');
legend ('Puntos ',' Interpolacion Lagrange','Curva original ', 'Interpolacion Newton') ;
