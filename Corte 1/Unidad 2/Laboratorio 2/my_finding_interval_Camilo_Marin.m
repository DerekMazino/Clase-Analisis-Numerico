function [a,b] = my_finding_interval_Camilo_Marin(funcion)
primero=0;
segundo=0;
while(primero*segundo>=0)%Mientras que f(a)f(b)>=0 el ciclo se repetirá
    %Regresa numero entre -10 y 10
    a = randi([-10 10],1,1);
    b = randi([-10,10],1,1);
    %Se calcula el valor que toma la función en los valores de a y b
    primero = funcion(a);
    segundo = funcion(b);
end
if(a>b)%Si a es mayor que b se cambia el valor entre ellos
    temp = a;
    a = b;
    b = temp;
end
end
