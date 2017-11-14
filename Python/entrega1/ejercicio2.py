# -*- coding: utf-8 -*-

#Escribe una función eliminar_letras(palabra, letra) que devuelva una versión de palabra que no contiene el carácter letra.

def eliminar_letras(palabra, letra):
    lista=list(palabra)
    for i in range(len(palabra)):
        if(lista[i]==letra):
            lista[i]=""
    print("".join(lista))


eliminar_letras("Un strings", "s")
