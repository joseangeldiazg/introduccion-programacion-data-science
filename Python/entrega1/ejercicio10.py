# -*- coding: utf-8 -*-

#Escribe una función orden_alfabetico(palabra) que determine si las letras que forman palabra aparecen en orden alfabético. Por ejemplo: 'abejo'

def orden_alfabetico(palabra):
    for i in range(len(palabra)-1):
        if palabra[i]>palabra[i+1]:
            return "No está en orden alfabético"
    return "Está en orden alfabético"


print(orden_alfabetico("abejo"))
