function[root, teorico, practico] =  my_bisection_function_Camilo_Marin_N(fun, delta)
[a,b] = my_finding_interval_Camilo_Marin(fun);
practico = 0;
teorico = 1 + round((log(abs(b-a))-log(delta))/log(2));
for k = 1:teorico
    c = (a+b)/2;
    if(fun(c)*fun(b)>0)
        b = c;
    else
        a = c;
    end
    root = c;
    practico = practico+1;
    if(abs(b-a)<delta)
        return;
    end
end
end
