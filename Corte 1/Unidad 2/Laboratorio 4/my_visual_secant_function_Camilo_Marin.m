function [root1] = my_visual_secant_function_Camilo_Marin(fun, p0, p1, iter)
x(1) = p0;%Primer Valor de x1
x(2) = p1;%Primer Valor de x2
X = -10:0.01:10;%Limite del plano cartesiano
for i = 1: iter%Iterar hasta llegar al valor de iter
    if(abs(x(i)- x(i+1)) < 0.000001)%En caso de que se alcance el error, se retorna la raiz
       root1 = x(i+1);
       return;
    end
     x(i+2) = x(i+1) - (fun(x(i+1))*(x(i+1)- x(i)))/(fun(x(i+1))-fun(x(i)));
     %Codigo de graficado, se repetirá en cada iteración, mostrando los
     %cambios en el grafico
     plot(x(i), fun(x(i)), 'r*');%Se envia como parametro la posición y la función en dicha posicion
     hold on
     plot(x(i+1), fun(x(i+1)), 'r*');%Se envia como parametro la posición+1 y la función en dicha posicion+1
     plot(X, fun(X));
     hold on
     plot(X, zeros(size(X)), 'b--');
     m = (fun(x(i+1))-fun(x(i)))/(x(i+1)- x(i));
     g = m*(X - x(i)) + fun(x(i));
     hold on
     plot(X,g);
     pause(1);
     close all;     
end
root1 = x(i+2);
end

