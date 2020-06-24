function [x] = visual_verification_2172969(fun,a,b)    
    x = a:0.2:b;
    y = fun(x);
    salida = plot(x,y)
    hold on %pARA
    plot(x,x,':')
    legend('1/x')
    hold off
end