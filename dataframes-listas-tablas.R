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


beavers<-rbind(x,y)
subb <- subset(beavers, beavers[,"activ"]==1)
nrow(subb)

#****************************************************************************************
# Vamos a trabajar con un ejemplo que viene por defecto en la instalación de R USArrests. 
# Este data frame contiene la información para cada estado Americano de las tasas de criminales
# (por 100.000 habitantes). Los datos de las columnas se refieren a Asesinatos, violaciones y
# porcentaje de la población que vive en áreas urbanas. Los datos son de 1973. Contesta a las
# siguientes preguntas sobre los datos
#****************************************************************************************

USArrests

#****************************************************************************************
# -Las dimensiones del dataframe 
# -La longitud del dataframe (filas o columnas) 
# -Numero  de columnas 
#****************************************************************************************

dim.data.frame(USArrests) # 50 * 4
nrow(USArrests) # 50
ncol(USArrests) # 4


#****************************************************************************************
# ¿Cómo calcularías el número de filas?
#****************************************************************************************

nrow(USArrests)  

#****************************************************************************************
# Obtén el nombre de las filas y las columnas para este data frame
#****************************************************************************************

row.names(USArrests)
colnames(USArrests)

#****************************************************************************************
# Échale un vistazo a los datos, por ejemplo a las seis primeras filas
#****************************************************************************************

head(USArrests, 6)

#****************************************************************************************
# Ordena de forma decreciente las filas de nuestro data frame según el porcentaje de población
# en el área urbana. Para ello investiga la función order () y sus parámetros.
#****************************************************************************************

USArrests[order(USArrests$UrbanPop, decreasing = TRUE),]

#****************************************************************************************
# ¿Podrías añadir un segundo criterio de orden?, ¿cómo?
#****************************************************************************************

USArrests[order(c(USArrests$UrbanPop,USArrests$Assault), decreasing = TRUE),]  

#****************************************************************************************
# Muestra por pantalla la columna con los datos de asesinato
#****************************************************************************************

USArrests$Murder

#****************************************************************************************
# Muestra las tasas de asesinato para el segundo, tercer y cuarto estado 
#****************************************************************************************

USArrests$Murder[2:4]

#****************************************************************************************
# Muestra las primeras cinco filas de todas las columnas
#****************************************************************************************

USArrests[1:5,]


#****************************************************************************************
# Muestra todas las filas para las dos primeras columnas
#****************************************************************************************

USArrests[,1:2]

#****************************************************************************************
# Muestra todas las filas de las columnas 1 y 3
#****************************************************************************************

USArrests[,1:2]

#****************************************************************************************
# Muestra solo las primeras cinco filas de las columnas 1 y 2
#****************************************************************************************


USArrests[1:5,1:2]

#****************************************************************************************
# Extrae las filas para el índice Murder
#****************************************************************************************

USArrests$Murder

#****************************************************************************************
# ¿Que estado tiene la menor tasa de asesinatos? ¿qué línea contiene esa información?, 
# obtén esa informaciónn
#****************************************************************************************

minorMurder = USArrests[order(USArrests$Murder, decreasing = TRUE),]
minorMurder[nrow(minorMurder),]

#****************************************************************************************
# ¿Que estados tienen una tasa inferior al 4%?, obtén esa información
#****************************************************************************************

minorMurder[minorMurder$Murder<4,]

#****************************************************************************************
# ¿Que estados estan en el cuartil superior (75) en lo que a poblacion en zonas urbanas se refiere? 
#****************************************************************************************

rownames(USArrests[USArrests[,"UrbanPop"]>quantile(USArrests[,"UrbanPop"],.75),])



