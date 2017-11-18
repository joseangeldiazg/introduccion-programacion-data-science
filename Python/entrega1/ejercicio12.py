# -*- coding: utf-8 -*-

#Un anagrama de una palabra pal1 es una palabra formada con las mismas letras que pal1 pero en orden distinto. Escribe una función anagrama(palabra1, palabra2) que determine si es una anagrama. Ejemplo: marta – trama

def anagrama(palabra1, palabra2):
    if len(palabra1)!=len(palabra2):
        return "No es anagrama"
    else:
        for i in range(len(palabra1)):
            if palabra1[i] not in palabra2 or palabra1.count(palabra1[i])!=palabra2.count(palabra1[i]):
                return "No es anagrama"
    return "Es anagrama"



print(anagrama("holah","aaloh"))
print(anagrama("hola","aloh"))
