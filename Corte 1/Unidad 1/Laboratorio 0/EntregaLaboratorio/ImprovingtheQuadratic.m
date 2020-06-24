function x = Improving_the_Quadratic_Camilo_Marin
    a = input('Ingresa el valor de a: ');
    b = input('Ingrese el valor de b: ');
    c = input('Ingrese el vlaor de c: ');
    discriminante=(b*b)-(4*a*c);
    if discriminante<0
        v1=-b/(2*a)
        vi=sqrt(abs((b*b)-(4*a*c)))/(2*a)
        fprintf("x1 = "+v1+"+"+vi+"i");
        fprintf("x2 = "+v1+"-"+vi+"i");
    else
        x1=-(2*c)/(b+sqrt(b*b-4*a*c))
        x2=-(2*c)/(b-sqrt(b*b-4*a*c))
        fprintf("x1 = "+x1);
        fprintf("x2 = "+x2);
    end
    
end