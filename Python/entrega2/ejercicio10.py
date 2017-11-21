# -*- coding: utf-8 -*-

#Escribe una función parejas(lista) que calcule las parejas distintas de valores que aparecen en una lista.



lista=["UNO", "DOS", "TRES", "CUATRO", "CINCO", "SEIS", "SIETE", "OCHO", "NUEVE"]


def parejas(lista):
    parejas=[]
    for i in range(len(lista)-1):
        for j in range(len(lista)-1):
            if lista[i]!=lista[j+1]:
                parejas.append(lista[i]+" "+lista[j+1])

    return parejas


print(parejas(lista))    
