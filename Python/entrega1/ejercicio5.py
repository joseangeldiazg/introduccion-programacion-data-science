# -*- coding: utf-8 -*-

#Escribe una función vocales(palabra) que devuelva las vocales que aparecen en la palabra.

def vocales(palabra):
    letrasvocales=[]
    for i in range(len(palabra)):
        if palabra[i] in "aeiouAEIOU":
            letrasvocales.append(palabra[i])
    vocalset = set(letrasvocales)
    return vocalset

print(vocales("esto es una frase con muchas vocales"))
