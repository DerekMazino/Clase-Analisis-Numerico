function[sum]= my_trapezoidal_function_Camilo_Marin(f,a, b, M)
    %el número de puntos es M intervalos más uno
    x=linspace(a,b,M+1);%Se generan M+1 puntos dentro del intervalo a y b
    n=length(x);%Se optiene la cantidad de puntos almacenados    
    sum=(f(x(1))+f(x(n)))/2;%Se evaluan a y b dentro de la función
    for i=2:n-1%Se recorre x en el intervalor sin incluir a y b
        sum=sum+f(x(i));%Se evaluan los muntos dentro de la función y se acumulan en sum
    end
    sum=sum*(x(2)-x(1));
end