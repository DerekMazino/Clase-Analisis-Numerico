function[root] = my_newton_function_Camilo_Marin_modify(fun, der, iter, p0, error)
x(1) = p0;
for k = 1:iter
    if(der(x(k)) == 0)
        disp('No es posible la división entre 0');
        break
    end
    x(k+1) = x(k) - (fun(x(k))/der(x(k)));
    disp('La iteración es: '+string(k));
    disp ('El valor de xk es: '+string(x(k)))
    disp('La función evaluada en f(xk) es: '+string(fun(x(k))))
    disp("La derivada de la función evaluada en f'(xk) es: "+string(der(x(k))))
    disp("El error absoluto es: "+string(abs(x(k+1)-x(k))))
    if(abs(x(k+1)-x(k)) < error)
        disp('El error ingresado se ha alcanzado con un valor de: '+string(abs(x(k+1)-x(k))));
        break
    end
end
root = x(k+1);%Retorno de la raiz
end
