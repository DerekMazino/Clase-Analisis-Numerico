clear all
close all
clc
fun = @(x) (x-8)*(x-3).^2 %Funci�n que se pide.
k = 1;
for i = 2:2:10
    e = exp(-i);
    [root, teor(k), expe(k)] = my_bisection_function_Camilo_Marin_N(fun, e); %Se guardan los valores de las iteraciones te�ricas y practicas en un vector.
    k=k+1;
end
g = [teor; expe]'; %Se juntan los dos vecores para formar una matriz, y se hace la traspuesta para poder graficar.
x = 2:2:10; %Intervalo de errores
bar(x,g);
ylabel('N�mero de iteraciones');
xlabel('Epsilon');
errores = {'1e^{-2}';'1e^{-4}';'1e^{-6}';'1e^{-8}';'1e^{-10}'};
set(gca,'xtick',x,'xticklabel',errores);
legend('Iteraci�n te�rica', 'Iteraci�n practica', 'Location', 'northwest');
fprintf('La ra�z de la funci�n es: ')
root
