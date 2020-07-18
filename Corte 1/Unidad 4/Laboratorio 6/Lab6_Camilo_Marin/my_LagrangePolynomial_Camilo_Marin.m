function [z]=my_LagrangePolynomial_Camilo_Marin(x, y, d)
    n = length(x);
    z= zeros(size(d));%Se crea una matriz de ceros con las dimensiones que indique d
    z=sumatoria(n,x,z,d,y);
end
function z=sumatoria(n,x,z,d,y)
    for i=1:n
        m=multiplicatoria(i,d,x,n);
        z=z+m*y(i);%Se calcula la sumatoria de f(xk)Lk(x)
    end
end
function m=multiplicatoria(i,d,x,n)
    m= ones(size(d));%Se crea una matriz de unos con las dimensiones que indique d
    for j=1:n
        if j ~= i%Se ivalua que j sea diferente a i, si se cumple, se realzará la siguiente operación
            m= (d - x ( j ) ) ./( x ( i) -x ( j ) ) .* m ;%Se calcula la multiplicatoria de (x-xi)/(xk-xi)
        end
    end
end