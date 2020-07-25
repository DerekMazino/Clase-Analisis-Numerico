x = [-8 -2 0 4 6];
y = [6.8 5, 2.2 0.5 -1.3];
[a, b] = my_lsline_Camilo_Marin(x,y);
a
b
disp("y="+num2str(a)+"x+"+num2str(b));
funcion = @(x) x.*a+b;
fy=funcion(x)
m=length(fy)
%Error Cuadratico
E2=((sum(abs(fy-y).^2))/m)^(1/2)
%Grafica
figure ;
plot (x ,y ,'*') ; hold on
% hold on;
t=-8:0.01:6;
plot (t ,  t.*a+b ,'r') ;
legend ('Puntos ',' y=Ax+b') ;




