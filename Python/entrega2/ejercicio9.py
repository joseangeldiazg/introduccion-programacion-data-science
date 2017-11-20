# -*- coding: utf-8 -*-

#Escribe una función suma_acumulada(numeros) a la que se le pase una lista de números y devuelva una lista en la que el elemento i-ésimo
#se obtiene como la suma de los elementos de la lista entre las posiciones 0 e i. Por ejemplo, para [1, 2. 3] sería [1, 3, 6]

def suma_acumulada(numeros):
    salida=[]
    suma=0
    for i in range(len(numeros)):
        suma+=numeros[i]
        salida.append(suma)
    return salida

lista=[1,2,3]
print(suma_acumulada(lista))

lista2=[1,2,3,4,5,6,7,8,9]
print(suma_acumulada(lista2))
