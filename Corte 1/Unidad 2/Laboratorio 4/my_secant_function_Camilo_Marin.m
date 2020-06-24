function[root] = my_secant_function_Camilo_Marin(fun, p0, p1, iter)
x(1) = p0;%Primer Valor de x1
x(2) = p1;%Primer Valor de x2
for i = 1 : iter%Iterar hasta llegar al valor de iter
    if(abs(x(i)- x(i+1)) < 0.000001)%En caso de que se alcance el error, se retorna la raiz
        root = x(i+1);
        return;
    end
    x(i+2) = x(i+1) - (fun(x(i+1))*(x(i+1)- x(i)))/(fun(x(i+1))-fun(x(i)));
end
root = x(i+2);%Se retorna el valor de la secante en su ultima iteracion
end