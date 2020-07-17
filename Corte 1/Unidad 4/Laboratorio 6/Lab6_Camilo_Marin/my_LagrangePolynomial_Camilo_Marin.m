function [z]=my_LagrangePolynomial_Camilo_Marin(x, y, d)
    n = length(x);
    z= zeros(size(d));%Se crea una matriz de ceros con las dimensiones que indique d
    for i=1:n
        un= ones(size(d));%Se crea una matriz de unos con las dimensiones que indique d
        for j=1:n
            if j ~= i%Se ivalua que j sea diferente a i, si se cumple, se realzará la siguiente operación
                un= (d - x ( j ) ) ./( x ( i) -x ( j ) ) .* un ;%Se calcula la multiplicatoria de (x-xi)/(xk-xi)
            end
        end
        z=z+un*y(i);%Se calcula la sumatoria de f(xk)Lk(x)
    end
end