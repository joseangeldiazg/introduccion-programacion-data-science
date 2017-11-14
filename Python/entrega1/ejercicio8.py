# -*- coding: utf-8 -*-

#Escribe una función eco_palabra(palabra) que devuelva una cadena formada por palabra repetida tantas veces como sea su longitud. Por ejemplo 'hola' -> 'holaholaholahola'

def eco_palabra(palabra):
    rep=len(palabra)
    salida=""
    for i in range(rep):
        salida+=palabra
    return salida

print(eco_palabra("una"))
