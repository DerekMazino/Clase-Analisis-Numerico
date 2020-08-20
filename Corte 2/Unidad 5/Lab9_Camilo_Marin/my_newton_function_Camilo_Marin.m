function[root] = my_newton_function_Camilo_Marin(fun, der, iter, p0, error)
x(1) = p0;
for k = 1:iter
    if(der(x(k)) == 0)
        fprint('No es posible la divisi�n entre 0');
        break%En caso de que al evaluar un punto en la derivada, de 0, se controla el error y se rompe el bucle
    end
    x(k+1) = x(k) - (fun(x(k))/der(x(k)));%Se aplica la formula
    if(abs(x(k+1)-x(k)) < error)%Determina si ya se encontr� el punto fijo en base al error estipulado
        disp('El error ingresado se ha alcanzado');
        break%Si se encuentra, se rompe el bucle
    end
end
root = x(k+1);%Retorno de la raiz
% i=1;
% while(i<=error)
%     p=p0-fun(p0)/der(p0);
%     errorRelativo=abs(p-p0)
%     if errorRelativo<error
%         root=p;
%     end
%     p0=p
%     i=i+1
% end
end