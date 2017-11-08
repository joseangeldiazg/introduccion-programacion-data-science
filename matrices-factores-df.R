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





  