# R: Segunda Parte

# 4.2 Imput Output

#*******************************************************************************************
# Pide al usuario que introduzca un string s y un número n y que muestre en pantalla n veces
# seguidas el string s (sin espacios entre palabra y palabra).
#*******************************************************************************************

print("Introduce un Número")
numero<-scan("")
print("Introduce un String")
x <- readline("")  
paste(c(rep(x,numero)),sep= "",collapse="")

#*******************************************************************************************
# Crea tres ficheros llamados dos.txt, tres.txt y cinco.txt que contenga la tabla del 2, la 
# del 3 y la del 5 respectivamente (los primeros 10 valores de cada tabla, un número en cada 
# línea decada fichero).
#*******************************************************************************************

help(matrix)
numeros<-0:10

write.table(matrix(numeros*2, nrow=11, ncol=1), "./datasets/dos.txt", row.names=FALSE, col.names=FALSE)
write.table(matrix(numeros*5, nrow=11, ncol=1), "./datasets/tres.txt", row.names=FALSE, col.names=FALSE)
write.table(matrix(numeros*3, nrow=11, ncol=1), "./datasets/cinco.txt", row.names=FALSE, col.names=FALSE)

#*******************************************************************************************
# Carga los tres ficheros creados en el punto anterior y construye una matriz que, en cada 
# columna, tengo el contenido de cada fichero.
#*******************************************************************************************

dos<-scan("./datasets/dos.txt")
tres<-scan("./datasets/tres.txt")
cinco<-scan("./datasets/cinco.txt")

A<-cbind(dos,tres,cinco)

#*******************************************************************************************
# Escribe las cinco primera filas de matriz del ejercicio anterior en un fichero nuevo llamado prime.txt
# y las cinco últimas en otro fichero llamado fin.txt. Ambos ficheros deben tener los datos separados 
# por comas.
#*******************************************************************************************

write.table(A[1:5,], "./datasets/prime.txt", row.names=FALSE, col.names=FALSE, sep = ",")
write.table(A[6:10,], "./datasets/fin.txt", row.names=FALSE, col.names=FALSE, sep = ",")

#*******************************************************************************************
# Dados dos números introducidos por el usuario f y c, crea un cuadrado de f filas y c columnas con 
# el caracter "x". Un ejemplo con f=4 y c=3 sería:
#*******************************************************************************************
  

print("Introduce un número para las filas")
f<-scan("")
print("Introduce un número para las columnas ")
c <- readline("")  
matrix("x", nrow = as.numeric(f), ncol = as.numeric(c))


