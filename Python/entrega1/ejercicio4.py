# -*- coding: utf-8 -*-

#Escribe una función num_vocales(palabra) que devuelva el número de vocales que aparece en la palabra.

def num_vocales(palabra):
    contador=0
    for i in range(len(palabra)):
        if palabra[i] in "aeiouAEIOU":
            contador+=1
    return contador


print(num_vocales("esto es una frase con muchas vocales"))
