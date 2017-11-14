# -*- coding: utf-8 -*-

#Escribe una función buscar(palabra, sub) que devuelva la posición en la que se puede encontrar sub dentro de palabra o -1 en caso de que no esté.

def buscar(palabra, sub):
    for i in range(len(palabra)-len(sub)):
        if palabra[i]==sub[0]:
            j=1
            while j<len(sub) and palabra[i+j]==sub[j]:
                j+=1

            if j==len(sub):
                return i
    return -1

print(buscar("hola adios", "di"))
