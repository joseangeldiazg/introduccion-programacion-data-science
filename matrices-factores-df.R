# Introduccion a R II

# Matrices, factores y dataframes

# 2.1 Matrices


#****************************************************************************************
# Ejecuta los siguientes comandos. 
#****************************************************************************************

matrix(data=5, nr=2, nc=2)

matrix(1:6, 2, 3)

matrix(1:6, 2, 3, byrow=TRUE)

#****************************************************************************************
# Crea un vector z con los 30 primeros números y crea con el una matriz m con 3 filas y 10 columnas.
#****************************************************************************************


z<-c(1:30)

m<-matrix(data=z, nr=3, nc=10, byrow = TRUE)

#****************************************************************************************
#Escribe la tercera columna en un vector
#****************************************************************************************

z<-c[,3]


#****************************************************************************************
# Create in R the matrices
# x =3	21
#   −1  1
#
# y =1	4	 0
#    0	1	-1
#
# Y calcula los efectos de los siguientes comandos
#  (a) x[1,]
#  (b) x[2,]
#  (c) x[,2]
#  (d) y[1,2]
#  (e) y[,2:3] 
#****************************************************************************************

x<-c(3,21,-1,1)
xmatrix<-matrix(data=x,ncol = 2, nrow = 2, byrow = TRUE)

y<-c(1,4,0,0,1,-1)
ymatrix<-matrix(data=y, ncol=3, nrow=2, byrow = TRUE)

xmatrix[1,]
xmatrix[2,]
xmatrix[,2]
ymatrix[1,2]
ymatrix[,2:3]


#****************************************************************************************
# Transforma la matriz m que creaste en el ejercicio anterior en un array multidimensional. 
# (Pista: averigua lo que puedas de la función dim().)
#****************************************************************************************

z<-c(1:30)
m<-matrix(data=z, nr=3, nc=10, byrow = TRUE)

help(dim)
marray = array(m, dim=c(3,10,2))


#****************************************************************************************
# Crea un array de 5 x 5 y rellénalo con valores del 1 al 25. Investiga la función array(). 
# Llama al array x
#****************************************************************************************

x<-array(1:25, dim=c(5,5,1))
x

#****************************************************************************************
# Escribe el array x en un vector y
#****************************************************************************************

y<-x[1:25]


#****************************************************************************************
# Dadas las matrices  m1 y m2 usa rbind() y cbind() para crear matrices nuevas utilizando 
# estas funciones, llamalas M1 y M2. ¿En que se diferencian las matrices creadas?
#****************************************************************************************
  
m1 <- matrix(1, nr = 2, nc = 2)
m2 <- matrix(2, nr = 2, nc = 2)
  
M1 <-cbind(m1, m2)
M2 <-rbind(m1, m2)

M1
M2

#La diferencia está en que cbind une por las columnas y rbind une por filas

#****************************************************************************************
# El operador para el producto de dos matrices es ‘ %* %’. Por ejemplo, considerando las dos 
# matrices creadas en el ejercicio anterior utilízalo.
#****************************************************************************************

M1%*%M2
  
#****************************************************************************************
# Usa la matriz M1 del ejercicio anterior  y aplica la función t(). ¿qué hace esa función?
#****************************************************************************************
  
help(t)
t(M1)

#La funcion T nos ofrece la matriz o el dataframe traspuesto del que le pasemos como argumento


#****************************************************************************************
# Ejecuta los siguientes comandos basados en la función diag() sobre las matrices creadas 
# anteriormente m1 y m2. ¿Qué tipo de acciones puedes ejecutar con ella?
#****************************************************************************************

diag(m1)

diag(rbind(m1, m2) %*% cbind(m1, m2))

diag(m1) <- 10

diag(3)

v <- c(10, 20, 30)

diag(v)

diag(2.1, nr = 3, nc = 5)

# La función diag nos permite obtener la diagonal de una matriz dada o crear una matriz con
# una diagonal especificada


#****************************************************************************************
# Ordena la matriz x <- matrix(1:100, ncol=10):
#
#    a. en orden descendente por su segunda columna y asigna el resultado a una nueva matrix x1. Pista: función order()
#
#    b. en orden descendente por su segunda fila y asigna el resultado a una nueva matrix x2
#  
#    c. Ordena solo la primera columna de x de forma descendente
#
#****************************************************************************************
  

x <- matrix(1:100, ncol=10)

x1<-x[order(x[,2], decreasing=TRUE),]
x2<-x[order(x[2,], decreasing=TRUE),]
x[,1] <-  sort(x[,1],decreasing = TRUE)
x1 <- x



#****************************************************************************************
# Accede al dataset “women”. 
#
# -Primero confirma que los datos están ordenados de forma creciente según la altura (height) 
#  y el peso (weight) sin mirar los datos.
#
# -Crea una nueva variable “bmi”. Este valor responde a la siguiente fórmula: 
#  BMI = ( Weight in Pounds / (Height in inches) x (Height in inches) ) x 703
#
# -Ordena el dataframe por el valor de bmi y por orden alfabético de la variable name
#****************************************************************************************


str(women)

is.unsorted(women$height)
is.unsorted(women$weight)

women$bmi<-(women$weight/women$height^2)*703

order(women$bmi)



#****************************************************************************************
# Crea los siguientes vectores:
#  Box office Star Wars: In Millions (!)  First element: US, Second element:Non-US
# new_hope = c(460.998007, 314.4)
# empire_strikes = c(290.475067, 247.9)
# return_jedi = c(309.306177, 165.8)
#****************************************************************************************

new_hope = c(460.998007, 314.4)
empire_strikes = c(290.475067, 247.9)
return_jedi = c(309.306177, 165.8)

#****************************************************************************************
# Construye la matriz star_wars_matrix con  esos vectores
#****************************************************************************************

star_wars_matrix<-rbind(new_hope,empire_strikes,return_jedi )



#****************************************************************************************
# Añádele nombres a las columnas y filas de la matriz según las descripciones dadas anteriormente de los datos
#****************************************************************************************

colnames(star_wars_matrix)<-c("US","Non-US")

#****************************************************************************************
#Calcula las ganacias  mundiales de cada película y  guardalas en un vector que se llame worldwide_vector.
#****************************************************************************************

worldwide_vector<-rowSums(star_wars_matrix)

#****************************************************************************************
# Añade éste ultimo vector como una columna nueva a la matriz star_wars_matrix y asigna el resultado a all_wars_matrix. Usa para ello la función cbind().
#****************************************************************************************


all_wars_matrix<-cbind(star_wars_matrix,worldwide_vector)

#****************************************************************************************
# Calcula las ganancias totals en USA y fuera de USA para las tres películas. Puedes usar para ello la función colSums() 
#****************************************************************************************

colSums(all_wars_matrix[,1:2])

#****************************************************************************************
# Calcula la media de ganancias para todas las películas fuera de los estados unidos. Asigna esa media la variable non_us_all.
#****************************************************************************************

non_us_all<-mean(all_wars_matrix[,2])

#****************************************************************************************
# Haz lo mismo pero solo para las dos primeras películas . Asigna el resultado a la variable non_us_some.
#****************************************************************************************

non_us_some<-mean(all_wars_matrix[1:2,2])


#****************************************************************************************
# Calcula cuantos visitantes hubo para cada película en cada área geográfica. Ya tienes las ganancias
# totales en star_wars_matrix. Asume que el precio de las entradas es de cinco euros/dólares 
# (Nota: el numero total de visitantes para cada pelicula dividido por el precio del ticket 
#  te da el numero de visitantes)
#****************************************************************************************

star_wars_matrix/5

#****************************************************************************************
# Calcula la media de visitantes en territorio USA y en territorio noUS
#****************************************************************************************

mean(star_wars_matrix[,1]/5)
mean(star_wars_matrix[,2]/5)






#****************************************************************************************
#****************************************************************************************
# 2.2 Subsetting matrices y arrays 
#****************************************************************************************
#****************************************************************************************



#****************************************************************************************
# Crea un array i <- array(c(1:10),dim=c(5,2)). ¿Que información te dan los siguientes comandos?
#****************************************************************************************

i <- array(c(1:10),dim=c(5,2))
  
  
dim(i)

#Nos dice el número de filas y columnas

nrow(i) 

#Nos dice el número de filas

ncol(i) 

#Nos dice el número de columnas


#****************************************************************************************
# Crea un array de dimensiones 5 filas y dos columnas y rellénalo con valores del 1-5 y del 5 al 1
#****************************************************************************************

x <- array(c(c(1:5),c(5:1)), dim = c(5,2))

#****************************************************************************************
# ¿Qué hace el comando x[i] ¿. Comprueba que tienes en x antes 
#****************************************************************************************
x

#Devuelve el elemento i del array pero lo hace por columnas

x[6]

#****************************************************************************************
# ¿y el comando x[i] <- 0?
#****************************************************************************************
 
#Este comando asigna el valor que pasamos a la derecha de <-, en este caso 0, al elemento i del array


#****************************************************************************************
# Descárgate el fichero array_datos.txt de PRADO (Datos/) e impórtalo en tu work space de R 
# teniendo en cuenta que es un texto tabulado. Después crea un documento con los mismos datos 
# pero en formato csv en vez de tab separated.
#****************************************************************************************



array_datos<-read.table("./datasets/array_datos.txt")

help("write.csv")

write.csv(array_datos, file="array_datos2.csv")




#****************************************************************************************
#****************************************************************************************
# 2.3 Factors 
#****************************************************************************************
#****************************************************************************************


#****************************************************************************************
#Dado x = c(1, 2, 3, 3, 5, 3, 2, 4, NA), ¿cuáles son los levels de factor(x)?
#  1, 2, 3, 4, 5
#  NA
#  1, 2, 3, 4, 5, NA
#****************************************************************************************

x = c(1, 2, 3, 3, 5, 3, 2, 4, NA) 

factor(x)

#Respeuesta A. Los NA no se tiene como posibles valores del factor. 

#****************************************************************************************
# Dado x <- c(11, 22, 47, 47, 11, 47, 11) y la ejecución de la sentencia 
# factor(x, levels=c(11, 22, 47), ordered=TRUE)¿cuál es el cuarto elemento de la salida? 
#  11
#  22
#  47
#****************************************************************************************

x <- c(11, 22, 47, 47, 11, 47, 11)
factor(x, levels=c(11, 22, 47), ordered=TRUE)

#No hay cuarto elemento, ya que solo tenemos tres posibles valores para el factor

#****************************************************************************************
# Para el factor z <- c("p", "a" , "g", "t", "b"), reemplaza el tercer elemento de z por "b".
#   a.factor(z[3]) <- "b" 
#   levels(z[3]) <- "b" 
#   z[3] <- "b"
#****************************************************************************************

z[3] <- "b"

#****************************************************************************************
#Dado z <- factor(c("p", "q", "p", "r", "q")) escribe una expresión de R que cambie el level  "p" a "w" 
#****************************************************************************************

z <- factor(c("p", "q", "p", "r", "q"))
levels(z)[1] <- "w"
z


#****************************************************************************************
# Usa el dataset “iris” 
# Escribe la expresión necesaria para convertir la variable “Sepal.Length”  en un factor
# con cinco niveles (levels) . Pista( mira la función table() y la función cut().
#****************************************************************************************

irisfactor <- factor(table(cut(iris$Sepal.Length, b=5)))




#****************************************************************************************
#  El factor responses se define como:
# 
#  responses <- factor(c("Agree", "Agree", "Strongly Agree", "Disagree", "Agree")), 
#  sin embargo nos damos cuenta que tiene un nuevo nivel, "Strongly Disagree", que no estaba 
#  presente cuando se creó. Añade el nuevo nivel al factor y conviértelo en un factor ordenado 
#  de la siguiente forma:
#  
#  Levels: Strongly Agree < Agree < Disagree < Strongly Disagree
#
#****************************************************************************************
  
levels(responses) = c(levels(responses), "Strongly disagree")
responses = factor(responses, levels(responses)[c(3,1:2,4)], ordered = TRUE)

#****************************************************************************************
# Dado el factor: 
#  x <- factor(c("high", "low", "medium", "high", "high", "low", "medium"))
#  Escribe la expresión en R que permita dar valores numéricos únicos para los distintos 
#  niveles (levels) de x según el siguiente esquema: 
#  
#    level high   => value 1 level low    => value 2 level medium => value 3
#
# Pista: investiga la función unique() y los parámetros de data.frame()
#****************************************************************************************

x <- factor(c("high", "low", "medium", "high", "high", "low", "medium"), levels=c("high","low","medium"),labels=c(1,2,3))
unique(x)


