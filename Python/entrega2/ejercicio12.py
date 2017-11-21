# -*- coding: utf-8 -*-

#Escribe una función suma_primer_digito(numeros) que devuelva la suma de los primeros dígitos de todos los números de la lista que se pasa como argumento.


numeros=list(range(0,20))

def suma_primer_digito(numeros):
    suma=0
    for i in numeros:
        string=str(i)
        if len(string)>1:
            suma+=int(string[0])
        else:
            suma+=int(string)
    return suma


print("La suma de los primeros digitos de :")
print(numeros)
print("Es la siguiente: ")
print(suma_primer_digito(numeros))
