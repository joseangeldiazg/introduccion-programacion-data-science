# -*- coding: utf-8 -*-

#Escribe una función mezclar(la, lb) que dadas dos listas ordenadas devuelva una lista conteniendo los elementos de ambas listas
#ordenados de forma ascendente.

def mezclar(la, lb):
    lista_final=[]
    for i in la:
        lista_final.append(i)
    for i in lb:
        lista_final.append(i)

    salida=sorted(lista_final)
    return salida

lista1=[1,3,4,7]
lista2=[2,5,6,8,9]

print(mezclar(lista1, lista2))
