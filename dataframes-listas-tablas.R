# Introduccion a R III

# Dataframes, listas, tablas, acceso a datos y condicionales

# 3.1 Dataframes

#****************************************************************************************
# Busca los datasets “beaver1” y “beaver2” que contienen información sobre la temperatura
# corporal de dos castores. Añade una columna llamada “ID” al dataset beaver1 que tenga siempre
# el valor 1. De forma similar añade una columna “ID” al dataset beaver2 que tenga siempre el 
# valor 2. A continuación concatena de forma vertical los dos dataframes y busca el subset de 
# datos donde ambos Castores están activos.
#****************************************************************************************


x<-cbind(beaver1,"ID"=1)

y<-cbind(beaver2,"ID"=2)
help(merge)

merge(x,y,by="day", all=TRUE)
