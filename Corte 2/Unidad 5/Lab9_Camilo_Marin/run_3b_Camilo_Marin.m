a=1
b=2
M=4

fun=@(x) x.*log(x);  %definición del integrando 
res=my_simpson_function_Camilo_Marin(fun,a,b,M); %calcula la integral
fprintf('El valor aproximado de la integral: %3.5f\n',res)

der = @(x) log(x)+1;
iter = 10;
p0 = 5;
error = 1e-8;
[root]= my_newton_function_Camilo_Marin(fun,der,iter,p0,error)