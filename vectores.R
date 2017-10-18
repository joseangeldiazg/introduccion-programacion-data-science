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

#La función sequence genera y concatena vectores de enteros, es decir por cada elemento de un 
#vector que le pasemos como argumento, generara y concatenrá elementos desde el 1 hasta el valor
#de la posicion x del vector. Por ejemplo la siguiente funcion generará valores del 1 al 5 y lo
#concatena con valores del 1 al 8 y del 1 al 9 en un solo vector. 

sequence(c(5,8,9))

#sequence es menos útil a mi juicio que seq, ya que este último nos permite generar secuencias
#que aumentan por unidades lógicas, sequence puede concatenar los resultados y seq no. 




#****************************************************************************************
# Crea un vector numérico utilizando la función c()
# Accede al segundo elemento del vector
#****************************************************************************************

x<-c(1:20)

x[2]

#****************************************************************************************
#Crea un vector numérico “z” que contenga del 1 al 10. Cambia el modo del vector a carácter. 
#****************************************************************************************

z<-c(1:10)
z<-as.character(z)
typeof(z[1])

#****************************************************************************************
# Ahora cambia el vector z a numérico de nuevo 
#****************************************************************************************

z<-as.integer(z)
typeof(z[3])


#****************************************************************************************
# Busca en la ayuda que hace la función scan(). Utilízala para leer un fichero cualquiera
# y asigna la lectura a un vector “z”. 
#****************************************************************************************

help(scan)

#Hemos creado el fichero data.txt que contiene 1 2 3 4

z<-scan("data.txt")

z[2]

#****************************************************************************************
#Crea un vector x con 100 elementos, selecciona de ese vector una muestra al azar de tamaño 5.
#Busca que hace la función sample().
#****************************************************************************************

x<-c(1:100)

help(sample)

sample(x,5)


#****************************************************************************************
#Genera un vector de tipo con 100 números entre el 1 y el 4 de forma random. Para ello mira
#en la ayuda la función runif(). Obliga a que el vector resultante se ade tipo integer. Ordena
#el vector por tamaño usando la función sort(). ¿Qué devuelve la función sort?. SI quisieras
#invertir el orden de los elementos del vector que función utilizarías. Utiliza la función 
#order() sobre x. ¿Cuál es la diferencia con la función sort()?
#****************************************************************************************

help(runif)

vector<-sort(as.integer(runif(100,1,4)))

order(vector, decreasing = TRUE)

vector2<-c(vector[order(vector, decreasing = TRUE)])


#La diferencia con la funcion sort es que order nos devuelve las posiciones donde se debería
#de permutar para obtener el orden deseado.

#****************************************************************************************
#****************************************************************************************

# 1.5 Filtrado de Vectores, subset(), which(), ifelse()

#****************************************************************************************
#****************************************************************************************




#R permite extraer elementos de un vector que satisfacen determinadas condiciones. 
#Es una de las operaciones mas comunes. Dado el vector z obtén los valores donde 
#el cuadrado de z sea mayor que 8 sin utilizar ninguna función, con filtrado normal

z<-c(5,2,-3,8)

z[z^2>8]


