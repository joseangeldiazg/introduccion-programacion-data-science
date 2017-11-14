# -*- coding: utf-8 -*-

#Escribe una función contar_letras(palabra, letra) que devuelva el número de veces que aparece una letra en una palabra.

def contar_letras(palabra, letra):
    contador=0
    for i in range(len(palabra)):
        if(palabra[i]==letra):
            contador+=1
    return contador

print(contar_letras("Murcielagooos","o"))
