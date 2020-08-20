function [w] = my_function_heuns_Camilo_Marin(a, b, y0, fun, N)
h=(b-a)/N;
t=a;
w=y0;
% fprintf(num2str(t)+"-->"+"-->fun="+num2str(fun(t,w))+"-->"+num2str(w)+"\n");
for i =1:N
    k1=h*fun(t, w);
    fprintf("k"+num2str(i)+"="+num2str(k1)+" | fun--->"+num2str(fun(t,w))+"-->"+num2str(fun(t+(2*h)/3,w+(2*k1)/3))+"\n")
    w=w+(1/4)*(k1+3*h*fun(t+(2*h)/3,w+(2*k1)/3))
    t=a+i*h;
    fprintf(num2str(t)+"-->"+num2str(w)+"\n");
end

end