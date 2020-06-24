#Punto a
resp=0
for i in range(6):
    resp=1/(3**i)
print('{:.3F}'.format(resp))
#Punto b
resp1=0
for i in range(6):
    resp1=1/(3**(7-i))
print('{:.3F}'.format(resp1))