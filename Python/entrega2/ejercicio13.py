# -*- coding: utf-8 -*-

#Un vector disperso es aquel que tiene muchos elementos nulos. Para ese tipo de vectores, la representación más adecuada es guardar
# únicamente los elementos no nulos. Escribe una función dispersa(v) a la que se le pase una lista representando un vector disperso
# y que devuelva el número de elementos del vector junto con una lista de pares (pos, elem) con cada una de las posiciones en las
# que hay un elemento no nulo y el elemento. Ejemplo: (1,0,0, 5, 4, 0, 0, 0) sería ([(0,1), (3,5), (4,4)], 8)

v=(1,0,0, 5, 4, 0, 0, 0)

def dispersa(v):
    lista=[]
    for i in range(len(v)):
        if v[i]!=0:
            element=(i,v[i])
            print element
            lista.append(element)
    lista.append(len(v))
    return lista


print("El vector "+str(v)+" almacenado den forma de vdisperso sería:")
print(v)
print(dispersa(v))
