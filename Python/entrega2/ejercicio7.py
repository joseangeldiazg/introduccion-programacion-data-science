# -*- coding: utf-8 -*-

#Escribe una función contar_letras(palabra) que tome una palabra como argumento y devuelva una lista de pares en la que aparece cada letra
# junto con el número de veces que aparece esa letra en la palabra. Por ejemplo, contar_letras('patata') devuelve [('a', 3), ('p', 1), ('t', 2)].

def contar_letras(palabra):
    letraspalabra={}
    for i in palabra:
        if letraspalabra.has_key(i):
            letraspalabra[i]+=1
        else:
            letraspalabra[i]=1

    return letraspalabra

print(contar_letras("Unapalabramuylargaperomuylarga"))
