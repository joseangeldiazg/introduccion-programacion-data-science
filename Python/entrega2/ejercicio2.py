# -*- coding: utf-8 -*-

#Escribe una función contar_numeros_impares(numeros) que cuente la cantidad de número impares que hay en una lista.

def contar_numeros_impares(numeros):
    cuenta=0
    for i in numeros:
        if i%2!=0:
            cuenta+=1
    return cuenta

lista=list(range(0,100))


print("La cantidad de números impares del "+str(lista[0])+" al "+str(lista[len(lista)-1])+" es:")
print(contar_numeros_impares(lista))
