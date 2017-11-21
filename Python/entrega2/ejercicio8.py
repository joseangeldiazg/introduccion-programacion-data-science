# -*- coding: utf-8 -*-

#Escribe una función eliminar(l1, l2) que dadas dos listas devuelva una lista en la que estén todos los elementos de l1 que no están en l2.

def eliminar(l1, l2):
    salida=[]
    while l1:
        if l1[0] in l2:
            l1.pop(0)
        else:
            salida.append(l1.pop(0))
    return salida


l1=[1,2,3,5,6,7]
l2=[10,2,3,7,9]

print(eliminar(l1,l2))
