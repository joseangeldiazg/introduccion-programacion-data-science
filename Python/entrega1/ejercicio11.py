# -*- coding: utf-8 -*-

#Escribe una función trocear(palabra, num) que devuelva una lista con trozos de tamaño num de palabra.

def trocear(palabra, num):
    trozos=[]
    inicio=0
    final=num

    if len(palabra)/num%2==0:
        partes=len(palabra)/num
    else:
        partes=(len(palabra)/num)+1
        
    for i in range(partes):
        if final==len(palabra) or final>len(palabra):
            trozos.append(palabra[inicio:len(palabra)])
        else:
            trozos.append(palabra[inicio:final])
            inicio+=num
            final+=num
    return trozos


print(trocear("unapalabralarga",2))
print(trocear("unapalabralarga",3))
print(trocear("unapalabralarga",5))
print(trocear("unapalabralarga",6))

print(trocear("unapalabramuylarga",2))
print(trocear("unapalabramuylarga",3))
print(trocear("unapalabramuylarga",5))
print(trocear("unapalabramuylarga",6))
