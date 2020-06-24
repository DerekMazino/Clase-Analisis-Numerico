
def binarioEntero(entero):
    if entero < 2:
        return entero
    else:
        return (entero%2)+(10*binarioEntero(entero//2))
def binarioDecinal(parteDecimaml,limite):
    binarioDec=""
    for i in range(limite):
        binarioDec=binarioDec+str(int(parteDecimaml*2))
        parteDecimaml=parteDecimaml*2
        if parteDecimaml >= 1:
            parteDecimaml-=1
    return binarioDec
cadenaInicial = input('Digite un número: ')
cadenaInicial = cadenaInicial.split('.')
binarioInteger=str(binarioEntero(int(cadenaInicial[0])))
parteDecimaml="0."+cadenaInicial[1]
parteDecimaml=float(parteDecimaml)
limite=23-len(binarioInteger)
parteDecimaml=binarioDecinal(parteDecimaml,limite)
cadenaCompleta=binarioInteger+"."+parteDecimaml
print("PASO 1: PASAR A BINARIO: ")
print(cadenaCompleta)
print("PASO 2: OBTENER VALOR DE POTENCIA NOTACIÓN CIENTIFICA: ")
print(len(binarioInteger)-1)
print("PASO 3: CALCULAR EXP: ")
expo=127+len(binarioInteger)-1
expo=binarioEntero(expo)
print(expo)
print("PASO 4: OBTENER MANTISSA:")
cadenaCompleta=cadenaCompleta.split(".")
cadenaCompleta[0]=cadenaCompleta[0][1:]
matinssa=cadenaCompleta[0]+cadenaCompleta[1]
print(matinssa)
print("PASO 5: OBTENER SIGNO:")
sign=0
if int(cadenaInicial[0]) < 0:
    sign=1
print("MOSTRANDO CONVERSIÓN FINAL")
print("S    E            M    ")
print(str(sign)+"|"+str(expo)+"|"+matinssa)

