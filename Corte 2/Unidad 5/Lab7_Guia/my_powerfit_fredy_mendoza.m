% .^

function [A, E] = my_powerfit_fredy_mendoza(x,y,m)
sum1 = (sum((x.^m).*y));
sum2 = (sum(x.^(2*m)));
A = sum1/sum2;
E=0;
    for i=1:length(x)
        E=E+(A*(x(i).^m)-y(i)).^2;
    end
end