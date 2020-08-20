function [w] = my_function_euler_Camilo_Marin(a, b, y0, fun, N)
h=(b-a)/N;
t=a;
w=y0;
fprintf(num2str(t)+"-->"+"-->fun="+num2str(fun(t,w))+"-->"+num2str(w)+"\n");
for i =1:N
    w=w+h*fun(t,w);
    t=a+i*h;
    fprintf(num2str(t)+"-->"+"-->fun="+num2str(fun(t,w))+"-->"+num2str(w)+"\n");
end
w
end