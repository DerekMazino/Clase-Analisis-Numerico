function[root] = my_bisection_function_Camilo_Marin(fun, iter)
a=17.6;
b=18;
fprintf('Primer a: '+string(a)+'\nPrimer b: '+string(b)+'\n')
for k = 1:iter
    c = (a+b)/2;
    fprintf('Valor de f: '+string(fun(c))+'\n')
    if(fun(c)*fun(b)>0)
        b = c;
    else
        a = c;
    end
    root = c;
    fprintf('a: '+string(a)+'\n b: '+string(b)+'\n')
    fprintf('c: '+string(c)+'\n')
end
end