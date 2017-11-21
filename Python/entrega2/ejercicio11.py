# -*- coding: utf-8 -*-

#Escribe una función cadena_mas_larga(cadenas) a la que se pasa una lista de palabras y que devuelva la palabra más larga.


def cadena_mas_larga(cadenas):
    tam=0
    for i in cadenas:
        if len(i)>tam:
            tam=len(i)
            cadena=i
    return cadena


cadenas=["unalarga", "unamaslargaaun", "lamaslargadetodas"]
cadenas2=["lamaslargadetodas", "unalarga", "unamaslargaaun"]

print(cadena_mas_larga(cadenas))
print(cadena_mas_larga(cadenas2))
