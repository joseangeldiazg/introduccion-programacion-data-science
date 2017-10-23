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


dos<-read.table("./datasets/dos.txt", header=FALSE)
tres<-read.table("./datasets/tres.txt", header=FALSE)
cinco<-read.table("./datasets/cinco.txt", header=FALSE)