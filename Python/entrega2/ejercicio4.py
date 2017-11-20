# -*- coding: utf-8 -*-

#Escribe una función combinar_listas(l1, l2) que devuelva una lista que esté formada por todos los elementos de l1 y a
#continuación todos los de l2. Por ejemplo combinar_listas([1, 2, 8] , [5, 10]) devolvería [1, 2, 8, 5, 10]


def combinar_listas(l1, l2):
    lista_final=list()
    for i in l1:
        lista_final.append(i)
    for i in l2:
        lista_final.append(i)
    return lista_final

lista1=list(range(0,30))
lista2=list(range(40,45))

print(combinar_listas(lista1, lista2))
