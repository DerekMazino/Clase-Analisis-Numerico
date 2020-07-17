x = 0:1:4;
%y = [0 0.75 2.25 3 2.25]
y = 3*sin ( x .*pi/6).^2 ;
figure ;
plot (x ,y ,'o') ; hold on
t = 0:0.01:7;
plot (t , LagrangePolynomial_Camilo_Marin (x ,y , t ) ,'r') ;
plot (t ,  3*sin ( t .*pi/6).^2 ,'g') ;
legend ('Puntos ',' Interpolacion ','Curva original ') ;