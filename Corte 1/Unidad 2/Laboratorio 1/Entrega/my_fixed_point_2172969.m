fun=@(x) (x.^2-8*x+25)/3
a = 1;
b = 7;
po = 3.25;
Iter = 100;
my_fixed_point(fun,a,b,po,Iter);
%P = visual_verification_2172969(fun,a,b);
% function x = my_fixed_point(fun,a,b,po,Iter)    
%     for i=1:Iter
%         fprintf('p'+string(i)+'= 1/p'+string(i-1)+' = '+string(fun(po)))
%         po=fun(po)
%     end
%     fprintf('Punto fijo en: '+string(po))
% end