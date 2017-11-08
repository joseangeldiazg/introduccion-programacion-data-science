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


#****************************************************************************************
# Crea un dataframe df with 40 columns, as follows: df <- as.data.frame(matrix(sample(1:5, 2000, T), ncol=40))
#****************************************************************************************

df <- as.data.frame(matrix(sample(1:5, 2000, T), ncol=40))

#Ordena el dataframe por columnas, de izquierda a derecha en orden creciente

#Ordena el dataframe por columnas, de izquierda a derecha en orden decreciente

#Ordena el dataframe por columnas, de derecha a izquierda en orden creciente

#****************************************************************************************
# Carga el set de datos CO2 y realiza las siguientes acciones:
#  a. Ordena alfabéticamente los datos en function de la variable Plant. Recuerda que Plant 
#     es un factor. Imprime el resultado por pantalla para comprobarlo 
#  b. Ordena los datos en función del incremento de la variable uptake y el orden alfabético 
#      de la planta (en ese orden)
#  c. Ordena de nuevo los datos en function del increment de la variable uptake y el orden 
#      alfabético reverso de la planta (en ese orden)
#****************************************************************************************


CO2
CO2$Plant #is unsorted
co_2ordered <- CO2[order(CO2$Plant),]
co_2ordered
is.unsorted(co_2ordered$Plant)


#****************************************************************************************
#****************************************************************************************
# 3.2 Importando información
#****************************************************************************************
#****************************************************************************************



#****************************************************************************************
# Vamos a trabajar con otro dataframe. Descarga el fichero student.txt de la plataforma PRADO,
# almacena la información en una variable llamada “students”. Ten en cuenta que los datos son
# tab-delimited y tienen un texto para cada columna. Comprueba que R ha leído correctamente el
# fichero imprimiendo el objeto en la pantalla
#****************************************************************************************

students<-read.table("./datasets/student.txt", header = TRUE)
students

#****************************************************************************************
# Imprime solo los nombres de la columnas
#****************************************************************************************

colnames(students)

#****************************************************************************************
#Llama a la columna height solo
#****************************************************************************************

students$height

#****************************************************************************************
# ¿Cuantas observaciones hay en cada grupo?. Utiliza la función table().  Este commando se puede
# utilizar para crear tablas cruzadas (cross-tabulations)
#****************************************************************************************

table(students)

#****************************************************************************************
# Crea nuevas variables a partir de los datos que tenemos. Vamos a crear una variable nueva
# “sym” que contenga M si el genero es masculino y F si el genero es femenino. Busca en la 
# ayuda información sobre la función ifelse(). Crea una segunda variable “colours” cuyo valor
# será “Blue” si el estudiante es de kuopio y “Red” si es de otro sitio.
#****************************************************************************************

sym<-ifelse(students$gender=="male", "M", "F")
colours<-ifelse(students$population=="kuopio", "Blue", "Red")

#****************************************************************************************
#Con los datos anteriores de height y shoesize y las nuevas variables crea un nuevo data.frame 
#que se llame students.new
#****************************************************************************************

students.new<-cbind(students,sym, colours)

#****************************************************************************************
#Comprueba que la clase de student.new es un dataframe
#****************************************************************************************

str(students.new)

#****************************************************************************************
# Crea dos subsets a partir del dataset student. Dividelo dependiendo del sexo. Para ello 
# primero comprueba que estudiantes son hombres (male). Pista: busca información sobre la función which.
#****************************************************************************************


#****************************************************************************************
# Basándote en esa selección dada por which() toma solo esas filas del dataset student para generar
# el subset stundent.male
#****************************************************************************************

students.male = students.new[which(students.new$sym=="M"),]

#****************************************************************************************
#Repite el procedimiento para seleccionar las estudiantes mujeres (females)
#****************************************************************************************

students.female = students.new[which(students.new$sym=="F"),]


#****************************************************************************************
#Utiliza la function write.table() para guarder el contenido de student.new en un archivo.
#****************************************************************************************

write.table(students.new, "./datasets/studentsnew.txt", col.names = TRUE)




#****************************************************************************************
#****************************************************************************************
# 3.3 Lists
#****************************************************************************************
#****************************************************************************************


#****************************************************************************************
# Ejemplo de cómo crear una lista. Ejecuta los comandos y describe que es lo que ocurre
#****************************************************************************************

my_list <- list(name="Fred", wife="Mary", nochildren=3, child.ages=c(4,7,9)) 

#Crea una lista con ciertos atributos y valores

attributes(my_list)

#Muestra los atributos, (nombre de las variables) de nuestra lista

names(my_list) 

#Similar a lo anteior pero de otro modo

my_list[2]

#Muestra el contenido del segundo campo de la lista y el nombre del mismo

my_list[[2]]

#Muestra el contenido del segundo campo de la lista

my_list$wife

#Muestra el contenido del  campo etiquetado como wife

my_list[[4]][2] 

#El Campo child.ages en la lista tiene 3 elementos, muestra el segundo.  

length(my_list[[4]]) 

#Número de elementos que hay en el campo 4 de la lista

my_list$wife <- 1:12 

#Asigna a wife valores del 1 al 12

my_list$wife <- NULL

#Asigna a wife valor NULL

my_list <- c(my_list, list(my_title2=month.name[1:12]))

#Crea una lista con los nombres de los meses

unlist(my_list)

#Crea un dataframe con los valores resultantes
data.frame(unlist(my_list))

#Crea una matriz con los valores resultantes
matrix(unlist(my_list))


#****************************************************************************************
#****************************************************************************************
# 3.4 Table ()
#****************************************************************************************
#****************************************************************************************

#La función  table() cuenta el número de elementos repetidos en un vector. Es la función más básica de clustering.

#Cuenta el número de entradas idénticas en la variable  Sepal.Length del dataset iris.

table(iris$Sepal.Length)

#****************************************************************************************
#****************************************************************************************
# 3.5 Como ordenar datos, hacer selecciones con if(), calcular condicionales totales, transponer
# columnas y filas
#****************************************************************************************
#****************************************************************************************


#****************************************************************************************
# Vamos a volver a utilizar el datasets mtcars. 
# Ordena este data set de forma ascendente según su valo de hp. PISTA: with()
#****************************************************************************************

mtcars[order(mtcars$hp),]

#****************************************************************************************
# Hazlo ahora de forma descendente
#****************************************************************************************

mtcars[order(mtcars$hp, decreasing = TRUE),]

#****************************************************************************************
# Calcula la media de la columna mpg. 
#****************************************************************************************

mean(mtcars$mpg)

#****************************************************************************************
# Calcula la media de mpg para aquellos datos cuyo valor de hp sea menor que 150 y por
# separado para aquellos cuyo valor de hp sea mayor o igual a 150
#****************************************************************************************

mean(mtcars)

mean(mtcars[mtcars$hp<150,]$mpg)
mean(mtcars[mtcars$hp>150,]$mpg)


#****************************************************************************************
# Busca los valores únicos de la columna cyl de mtcars. PISTA unique()
#****************************************************************************************

unique(mtcars$cyl)

#****************************************************************************************
# Obten los datos de mpg cyl disp hp para “Toyota Corolla"
#****************************************************************************************

mtcars["Toyota Corolla",c("mpg","cyl","disp","hp")]

#****************************************************************************************
# Crea una nueva variable mpgClass de tipo categórico cuyo valor es “Low“ si el valor de mpg 
# es menor que la media de la columna mpg y “High” si es mayor que la media de mpg. 
# PISTA ifelse(). Combina ese comando con with() para añadir la nueva variable a mtcars
# ¿qué pasa cuando ejecutas este comando? 
#****************************************************************************************

mtcars$mpgClass<-ifelse(mtcars$mpg<(mean(mtcars$mpg)),"Low", "High")
