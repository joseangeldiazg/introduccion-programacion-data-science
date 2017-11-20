# -*- coding: utf-8 -*-

#Escribe una función que saque de forma aleatoria todas las cartas de una baraja hasta que quede vacía. Para ello debe usar unalista que tenga inicialmente todas las cartas.
import random

baraja=["REY PICAS", "REY CORAZONES", "REY DIAMANTES", "REY TREBOLES","AS PICAS", "AS CORAZONES", "AS DIAMANTES", "AS TREBOLES",
        "REINA PICAS", "REINA CORAZONES", "REINA DIAMANTES", "REINA TREBOLES"]

def sacar_carta(baraja):
    random.shuffle(baraja)
    while baraja:
        carta=baraja.pop()
        print(carta)
        
sacar_carta(baraja)
