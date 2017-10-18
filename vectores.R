# Introducción a R

# 1.1 R Interactivo


#****************************************************************************************
# Crea una secuencia de números impares
#****************************************************************************************
seq(1, 10, by=2)


#****************************************************************************************
# Crea números del 1 al 30
#****************************************************************************************
1:30


#****************************************************************************************
#Busca en la ayuda que hace la función seq(). 
#Describe que hace. Utilízala para crear números 
#del 1 al 30 con un incremento de 0.5. 
#¿Qué otros parámetros te ofrece la función seq()? Utilízalos en un ejemplo.
#****************************************************************************************

help(seq)

#La ayuda también puede abrirse con 

?"seq"

#La funcion seq() crea secuencias de números desde un inicio a un final, y en unos incrementos
#determinados por su argumento by. 

seq(1,30, by=0.5)

#Parámetros adicionales como length.out, donde especificamos cuantos "cortes" 
#daremos a nuestra secuencia, por ejemplo, de 1 a 30 en 3 "pasos" o "cortes". 

seq(1,30, length.out=30)


#Otro parametro es along.with, usado para obtener el tamaño que obtendremos tras alguna generacion 
#pero que se encuentra en desuso ya que la funcion seq_along facilita enormemente las cosas. 


seq(along.with=1)



#****************************************************************************************
# Crea una secuencia de números indicando el principio y la longitud de la secuencia de números
#****************************************************************************************

seq(4,length.out=30)



#****************************************************************************************
#Crea letras minúsculas, mayúsculas, nombre de los meses del año y nombre de los meses del año abreviado
#****************************************************************************************

letters
LETTERS
month.name
month.abb


#****************************************************************************************
# Investiga la función rep(). Repite un vector del 1 al 8 cinco veces.
#****************************************************************************************

help(rep)

rep(1:8, times=5)


#****************************************************************************************
# Haz lo mismo con las primeras ocho letras del abecedario en mayúsculas
#****************************************************************************************

rep(LETTERS[1:8], times=5)



#****************************************************************************************
#****************************************************************************************
# 1.2 Vectores
#****************************************************************************************
#****************************************************************************************



#****************************************************************************************
#Crea los siguientes vectores:
#- un vector del 1 al 20
#- un vector del 20 al 1
#- Utilizando el comando c() crea un vector que tenga el siguiente patrón 1,2,3,4,5…20,19,18,17….1
#****************************************************************************************


vector<-1:20

vector2<-20:1

vector3<-c(1:20,19:1)

#****************************************************************************************
#Genera un vector x que contenga números del 1 al 9. Utilizando el operador ‘:’ .  y 
#utilizando otras opciones.  PISTA: seq()
#****************************************************************************************

x<-1:9

x<-seq(1,9)

x<-c(1:9)

#****************************************************************************************
#Genera un vector x que contenga 9 números comprendidos entre 1 y 5
#****************************************************************************************

x<-seq(1,5,length.out = 9)

#****************************************************************************************
#Busca que hace la función sequence(). ¿Cual es la diferencia con la función seq()
#****************************************************************************************

help(sequence)