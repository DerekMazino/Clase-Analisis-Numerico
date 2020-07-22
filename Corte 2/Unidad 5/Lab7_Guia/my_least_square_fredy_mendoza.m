function[a,b, E] = my_least_square_fredy_mendoza(x,y,f)
M1 = [sum(x.^2) sum(x); sum(x) length(x)]
V1 = [sum(x.*y); sum(y)];
C = linsolve(M1,V1);
a = C(1);
b = C(2);
E=0;
    for i=1:length(x)
        E=E+abs(f(i)-y(i)).^2;
    end
E=(E/length(x)).^(1/2);
end