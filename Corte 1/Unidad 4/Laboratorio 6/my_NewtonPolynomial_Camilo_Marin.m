function fp = my_NewtonPolynomial_Camilo_Marin(X,Y)
n = length(X)-1;
DD=zeros(n+1);
DD(:,1)=Y;
for k=2:n+1
    for J=k:n+1
        DD(J,k)=[DD(J,k-1)-DD(J-1,k-1)]/[X(J)-X(J-k+1)];
    end
end
disp('La matriz de diferencias divididas es:');
disp(DD);
disp('El polinomio de newton es');
syms x;
polnew=DD(1,1);
P=1;
for i=1:n
    P=P*(x-X(i));
    polnew=polnew+P*DD(i+1,i+1);
end
polnew=expand(polnew);
pretty(polnew);
disp(polnew)
x=0:1:4;
vi=eval(polnew);
hold on;
ezplot(polnew,[X(1) X(n+1)]);
plot(x,vi,'*');





