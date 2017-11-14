# -*- coding: utf-8 -*-

#Escribe una función es_inversa(palabra1, palabra2) que devuelve True si una palabra es la misma que la otra pero con los caracteres en orden inverso. Por ejemplo 'absd' y 'dsba'


def es_inversa(palabra1,palabra2):
    if len(palabra1)!=len(palabra2):
        return False
    else:
        for i in range(len(palabra1)):
            if palabra1[i]!=palabra2[-(i+1)]:
                return False
    return True


print(es_inversa("ahb","bha"))
