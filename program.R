# R: Segunda Parte

# 4.4 Estructuras de programación

#*******************************************************************************************
# Crea una función creciente que indique si los elementos de un vector dado son estrictamente
# crecientes. No se permite ordenar el vector.
#*******************************************************************************************


creciente<-function(vec)
{
  for(i in 2: length(vec))
    ifelse(vec[i]<vec[i-1],print("No es estricto creciente"), print("Es estricto creciente"))
}


#*******************************************************************************************
# Crea una función montecarlo que calcule la estimación de la siguiente integral:
#*******************************************************************************************


montecarlo<-function(n)
{
  hits=0
  for(i in 1:n)
  {
    r1<-runif(1,0,1)
    r2<-runif(1,0,1)
    if(r2<r1^2)
      hits=hits+1
  }
   
  return(hits/n)
}

montecarlo(10000)

#*******************************************************************************************
# Crea una lista de 5 vectores numéricos y ordena todos los vectores de la lista.
#*******************************************************************************************

testlist<-list(c(10:1),c(1,5,8,3),c(1,9,10,6))

lapply(testlist, sort.list)


#*******************************************************************************************
# Calcula el valor mínimo de cada columna de una matriz, pero toma los valores impares como numeros 
# negativos y los pares como positivos.
#*******************************************************************************************

testmatrix<-matrix(1:25, ncol=5, nrow=5)


min<-c(0,0,0,0,0)
max<-c(0,0,0,0,0)

for(i in 1:5)
{
  for(j in 1:5)
  {
    if(testmatrix[i,j]%%2 == 0)
    {
      if(max[j]<testmatrix[i,j])
        max[j]<-testmatrix[i,j]
    }
    else
    {
      if(min[j]>-testmatrix[i,j])
        min[j]<-testmatrix[i,j]
    }
  }
}
min
max

#*******************************************************************************************
# Dada una matriz devuelva una lista con los valores mayores a 7 de cada fila.
#*******************************************************************************************


input<-matrix(1:30, ncol=5, nrow = 5, byrow=TRUE)

input[apply(input, 2, '>',7 )]
