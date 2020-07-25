x = [57.91 108.70 149.60 227.92 778.57 1433.33 2872.46 4495.06] %Distancias
y = [87.97 224.70 365.26 686.98 4332.59 10759.22 30685.40 60189.00] %Dias

x=(x.*1e9).^3 %Se pasan a metros
y=(y.*86400).^2 %Se pasan a segundos

xn=log10(x)
yn=log10(y)

[a, b] = my_lsline_Camilo_Marin(xn,yn);
g1=log10((4*pi^2)/((6.674*1e-11)*(1.989*1e30)))
a
b
disp("y="+num2str(a)+"x+"+num2str(b));
c=10^b
c
g2=(4*pi^2)/(c*1.989*1e30)

funcion = @(x) x.*a+b;
fy=funcion(xn)
m=length(fy)
%Error Cuadratico
E2=((sum(abs(fy-yn).^2))/m)^(1/2)
%Error Relativo
errorR=abs((6.674*1e-11-g2)/6.674*1e-11)
%Grafica
figure ;
plot (xn ,yn ,'o') ; hold on
% hold on;
t=32.2883:0.01:37.9582;
plot (t ,  t.*a+b ,'r') ;
legend ('Puntos ',' y=Ax+b') ;