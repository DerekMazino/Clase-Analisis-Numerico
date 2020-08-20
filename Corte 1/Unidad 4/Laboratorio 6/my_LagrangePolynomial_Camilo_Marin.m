%Esta función, devuelve las constantes que acompañan al polinomio,
%Siendo la primera la que acompaña a x^n, la segunda a x^n-1...

function [M]=my_lagrange_Camilo_Marin(x,y)
n=length(x); %Tamaño del vector para llevar control de iteraciones
L=zeros(n,n);%Aquí se guardarán los polinomios
for i=1:n
    vec=1;
    for j=1:n
        if i~=j;
            vec=conv(vec,poly(x(j)))/(x(i)-x(j));
        end
    end
    L(i,:)=vec;
    disp(L)
end
M=y*L
end