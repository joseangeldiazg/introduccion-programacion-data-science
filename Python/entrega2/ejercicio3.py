# -*- coding: utf-8 -*-

#Escribe una función numeros_pares(numeros) que devuelva los números pares que hay en una lista.

def numeros_pares(numeros):
    pares=set([])
    for i in numeros:
        if i%2==0:
            pares.add(i)
    return pares

lista=list(range(0,100))

print("Los numeros pares son:")
print(numeros_pares(lista))
