clc
clear all
floating_point_function_Camilo_Marin();%Llamo la función
function x = floating_point_function_Camilo_Marin()
    num(1)=input('Digite un número en base 10: ');
    if num(1) > 0
        sign=0
    else
        sign=1
    end
    d=[dec2bin(num(1)) '.'];
    j=1;
    while and(j<32,num(j)~=0)
        j=j+1;
        num(j)=((num(j-1)-floor(num(j-1)))*2);
        d=[d dec2bin(num(j))];
    end
    fprintf('Paso 1: ')
    disp(d(1:end-1))
    fprintf('Paso 2: ')
    nuevoStr=split(d,'.')
    disp(nuevoStr(1))
    valor=strlength(string(nuevoStr(1)))-1
    fprintf('Paso 3: ')
    bias=2^(8-1)-1
    fprintf('Paso 4: ')
    %Calculando la mantissa
    partirCadena=split(d,'.')
    tamano1=strlength(partirCadena(1))
    tamano2=strlength(partirCadena(2))
    cadena1=char(partirCadena(1))
    cadena2=char(partirCadena(2))
    limite=23-tamano1-1
    c=0
    for i=2:tamano1  
        c=c+1
        mantissa(i-1)=cadena1(i)
    end
    for i=1:tamano2 
        c=c+1
        mantissa(c)=cadena2(i)
        
    end
    fprintf('Paso 5: ')
    exp=dec2bin(bias+valor)
    fprintf('Final: \n')
    fprintf('Sign: ')
    disp(sign)
    fprintf('Exponent: ')
    disp(exp)
    fprintf('Mantissa: ')
    disp(mantissa)
end



