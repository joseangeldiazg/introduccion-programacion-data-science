# -*- coding: utf-8 -*-

#Escribe una función comunes(palabra1, palabra2) que devuelva una cadena formada por los caracteres comunes a las dos palabras.

def comunes(palabra1, palabra2):
    letrascomunes=[]
    for i in range(len(palabra1)):
        for j in range(len(palabra2)):
            if palabra1[i] == palabra2[j]:
                letrascomunes.append(palabra1[i])
    vocalset = set(letrascomunes)
    return vocalset

print(comunes("palabras","la"))
