# -*- coding: utf-8 -*-

#La traspuesta de una matriz se obtiene intercambiado filas y columna. Escribe una función que devuelva la traspuesta de una matriz.

mat=[[1,2,3],[4,5,6],[7,8,9]]

def printmatriz(matriz):
    for i in matriz:
        print i

print("Matriz normal")
printmatriz(mat)

def traspuesta(matriz):
    tras=list(matriz)
    for i in range(len(matriz)):
        for j in range(len(matriz[i])):
            tras[j][i]=matriz[i][j]
    return tras


print("Matriz traspuesta")
tras=traspuesta(mat)

printmatriz(tras)
