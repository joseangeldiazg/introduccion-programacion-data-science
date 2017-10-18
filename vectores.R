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




