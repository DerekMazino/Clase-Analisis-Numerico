%Esta función grafica cada iteración mostrando la aproximación a la raiz
function[root, x] = my_visual_newton_function_Camilo_Marin(fun, der, iter, p0)
x(1) = p0;
X = -10:0.01:10;%Se indica el invervalo que se graficará, a parte del tamaño de la pendiente para su trazado
for k = 1:iter
    plot(X, zeros(size(X)), 'r:');
    hold on
    plot(X, fun(X));
    hold on
    y = der(x(k))*(X - x(k)) + fun(x(k));
    plot(X, y);
    hold on
    plot(x(k), fun(x(k)), 'b*');
    pause(1);
    close all
    if(der(x(k)) == 0)
        fprint('No es posible la división entre 0');
        break
    end
    x(k+1) = x(k) - (fun(x(k))/der(x(k)));
end
root = x(k+1)
end