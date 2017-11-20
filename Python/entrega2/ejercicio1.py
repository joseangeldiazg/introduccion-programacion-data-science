# -*- coding: utf-8 -*-

#Escribe una función sum_nums_lista(numeros) que sume todos los números de una lista. Compara el tiempo entre usar o no range

from time import time

def sum_num_lista(numeros):
    suma=0
    for i in numeros:
        suma+=i
    return suma

def sum_num_lista_range(numeros):
    suma=0
    for i in range(len(numeros)):
        suma+=numeros[i]
    return suma


#Creamos una lista muy grande para comprobar la diferencia

lista=list(range(0,10000000))


print("Resultado de la suma usando la filosofia de python:")
tiempo_inicial = time()
print(sum_num_lista(lista))
tiempo_final = time()
tiempo_ejecucion = tiempo_final - tiempo_inicial
print("Tiempo usando la filosofia de python:")
print(tiempo_ejecucion)


print("Resultado de la suma usando range:")
tiempo_inicial = time()
print(sum_num_lista_range(lista))
tiempo_final = time()
tiempo_ejecucion = tiempo_final - tiempo_inicial
print("Tiempo usando range:")
print(tiempo_ejecucion)


#Queda comprobado como con la filosoia python el funcionamiento y tiempo de ejecucion es mucho menor
