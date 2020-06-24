function x = my_fixed_point(fun,a,b,po,Iter)    
    for i=1:Iter
        fprintf('p'+string(i)+'= 1/p'+string(i-1)+' = '+string(fun(po)))
        po=fun(po)
    end
    fprintf('Punto fijo en: '+string(po))
end