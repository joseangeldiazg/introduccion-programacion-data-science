# -*- coding: utf-8 -*-

#Escribe una función palindromo(frase) que determine si frase es un palíndromo. Es decir, que se lea igual de izquierda a derecha que de derecha a izquierda (sin considerar espacios).


def palindromo(frase):
    sinespacios=frase.replace(' ','')
    print(sinespacios)
    if len(sinespacios)%2 == 0:
        tam=len(sinespacios)/2
    else:
        tam=(len(sinespacios)-1)/2
        print(tam)
    for i in range(tam):
        if sinespacios[i]!=sinespacios[-(i+1)]:
            return False
    return True


print(palindromo("ella te da detalle"))

print(palindromo("atar a la rata"))
