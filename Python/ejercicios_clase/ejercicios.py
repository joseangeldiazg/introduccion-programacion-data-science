# -*- coding: utf-8 -*-

#Crear una función que dado un string y una letra elimine las ocurrencias de esta letra del string
def eliminar_caracter(cadena, caracter):
    lista=list(cadena)
    for i in range(len(cadena)):
        if(lista[i]==caracter):
            lista[i]=""
    print("".join(lista))


eliminar_caracter("Un strings", "s")


#Crear una función que dada una cadena y una subcadena nos indique donde comienza esa subcadena


def buscar(cadena, subcadena):
    for i in range(len(cadena)-len(subcadena)):
        if cadena[i]==subcadena[0]:
            j=1
            while j<len(subcadena) and cadena[i+j]==subcadena[j]:
                j+=1

            if j==len(subcadena):
                return i
    return -1


print(buscar("hola adios", "di"))


#Crear una función que nos diga el número de vocales

def vocalesBasico(cadena):
    contador=0
    for i in range(len(cadena)):
        if(cadena[i]=="a" or cadena[i] == "e" or cadena[i]=="i" or cadena[i] == "o" or cadena[i] == "u"):
            contador+=1
    return contador


#Se puede mejorar y utilizar expresiones regulares

def vocalesRegex(cadena):
    contador=0
    for i in range(len(cadena)):
        if cadena[i] in "aeiouAEIOU":
            contador+=1
    return contador


print(vocalesBasico("esto es una frase con muchas vocales"))

print(vocalesRegex("esto es una frase con muchas vocales"))
