function [suma]=my_simpson_function_Camilo_Marin(f,a,b,n)  
    x=linspace(a,b,n+1);%Se crea un vector con posiciones desde el intervalo a hasta b   
    h=x(2)-x(1);%Se optiene el valor de h
    %Se divide la formula en 3 partes
    suma=f(x(1))+f(x(n+1));%Parte 1: y0-yn
    for i=2:2:n
        suma=suma+4*f(x(i));%Parte 2: 4(y1+y3+....yn−1)
    end
    for i=3:2:n-1
        suma=suma+2*f(x(i));%Parte 3: 2(y2+y4+....yn−2)
    end
    suma=suma*h/3;%Finalmente, se multiplica toda la sumatoria por h/3
    %Obteniendo h/3((y0+yn)+4(y1+y3+....yn−1)+2(y2+y4+....yn−2))
end