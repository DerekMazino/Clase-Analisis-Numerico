function[puntoa, puntob] = my_visual_bisection_function_Camilo_Marin(fun, iter)
[a,b] = my_finding_interval_Camilo_Marin(fun);
i = 1;
for k = 1:iter
    puntoa(i) = a;
    puntob(i) = b;
    i = i+1;
    c = (a+b)/2;
    if(fun(c)*fun(b)>0)
        b = c;
        puntob(i) = b;
    else
        a = c;
        puntoa(i) = a;
    end
    root = c;
end
end