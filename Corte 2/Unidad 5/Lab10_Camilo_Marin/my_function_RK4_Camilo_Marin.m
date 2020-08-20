function [w] = my_function_RK4_Camilo_Marin(a, b, y0, fun, N)
h=(b-a)/N;
t=a;
w=y0;
fprintf(num2str(t)+"-->"+num2str(w)+"\n");
for i =1:N
    k1=h*fun(t, w);
    fprintf("iteración: "+num2str(i)+"| h="+num2str(h)+" fun="+num2str(fun(t, w))+"| k1="+num2str(k1)+"\n");
    k2=h*fun(t+h/2,w+k1/2);
    fprintf("iteración: "+num2str(i)+"| h="+num2str(h)+" fun="+num2str(fun(t+h/2,w+k1/2))+"| k2="+num2str(k2)+"\n");
    k3=h*fun(t+h/2,w+k2/2);
    fprintf("iteración: "+num2str(i)+"| h="+num2str(h)+" fun="+num2str(fun(t+h/2,w+k2/2))+"| k3="+num2str(k3)+"\n");
    k4=h*fun(t+h, w+k3);
    fprintf("iteración: "+num2str(i)+"| h="+num2str(h)+" fun="+num2str(fun(t+h, w+k3))+"| k4="+num2str(k4)+"\n");
    w=w+(k1+2*k2+2*k3+k4)/6;
    t=a+i*h;
    fprintf(num2str(t)+"-->"+num2str(w)+"\n");
end
end