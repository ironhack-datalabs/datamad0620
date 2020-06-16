#Este archivo lo creo para comprobar las ejecuciones de bash


# Imprime en consola Hello World.
echo 'Hello World'

#Crea un directorio nuevo llamado new_dir.
mkdir new_dir

#Eliminalo
rmdir new_dir

#Copia sd.txt de lorem a lorem-copy.
cp lorem/sed.txt lorem-copy/

#copiar dos archivos con ;
cp lorem/at.txt lorem-copy/ ; cp lorem/lorem.txt lorem-copy/

#mostrar el contenido de sed.txt
cat lorem-copy/sed.txt

#Muestra el contenido de los archivos at.txt y lorem.txt dentro de la carpeta lorem.
cat lorem-copy/lorem.txt lorem-copy/at.txt

#Visualiza las primeras 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
cat lorem-copy/sed.txt | head -n3

#Visualiza las ultimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
cat lorem-copy/sed.txt | tail -n3

#Añade Homo homini lupus. al final de archivo sed.txt dentro de la carpeta lorem-copy.
echo " Homo homini lupus." >> lorem-copy/sed.txt

#Visualiza las últimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy. Deberías ver ahora Homo homini lupus..
cat lorem-copy/sed.txt | tail -n3

#Sustituye todas las apariciones de et por ET del archivo at.txt dentro de la carpeta lorem-copy. Deberás usar sed.
sed -i 's/et/ET/g' lorem-copy/at.txt 
#ojo, puedes poner en g el numero de veces que quieres que lo haga. (s/et/ET/80g)
#-i que es permanente

#Encuentra al usuario activo en el sistema.
who -a

#Encuentra dónde estás en tu sistema de ficheros.
pwd

#Lista los archivos que terminan por .txt en la carpeta lorem.
ls lorem/*txt

#Cuenta el número de líneas que tiene el archivo sed.txt dentro de la carpeta lorem.
wc -l lorem/sed.txt 
##wc  -l(lineas), -w(words) o -m(caracteres) 

#Cuenta el número de archivos que empiezan por lorem que están en este directorio y en directorios internos.
find -name 'lorem*.*' | wc -l
#Puta movida. No se como pero funciona. Devuelve el numero. 

#Encuentra todas las apariciones de et en at.txt dentro de la carpeta lorem.
grep 'et' lorem/at.txt 
#no las cuenta, solo las senala en rojo
## ojo es el wc -l el que las cuenta, lo probamos abajo


#Cuenta el número de apariciones del string et en at.txt dentro de la carpeta lorem.
grep -o 'et' lorem/at.txt | wc -l 

##MUCHO OJO CON GREP QUE MOLA MIL https://www.geeksforgeeks.org/grep-command-in-unixlinux/



#Cuenta el número de apariciones del string et en todos los archivos del directorio lorem-copy.
grep -o 'et' lorem-copy *.* | wc -l
#grep es mi nuevo mejor amigo.




###Ejecuto bash bashempiezaamolar.sh en terminal y hace todo lo aqui indicado


#BONUS

#nombre
name=carlos

#Crear directorio
mkdir name

#Eliminar.
rmdir name
#esto de hacer cosas para luego borrarlas no me gusta un pelo



#Por cada archivo dentro de la carpeta lorem imprime el número de carácteres que tienen sus nombres. 
#Intenta primero mostrar los archivos mediante un bucle for

    #Imprime los ficheros

    #Imprime las longitudes de los nombres de los ficheros

    #Imprime outputs con la siguiente estructura: lorem has 5 characters lenght


#Muestra los procesos de forma jerárquica que se están ejecutando en tu ordenador:
    #Usando el comando top o htop
    top
    #
    ps -ef
# A ver, que en internet pone q esos son los comandos, pero que no tengo ni idea de lo que realmente hacen.

#Muestra información sobre tu procesador por pantalla
lscpu
#Pues como si me dices eso es cubismo retroclasico incorporeo.



#Crea 3 alias y haz que estén disponibles 


#Comprime las carpetas lorem y lorem-copy en un archivo llamado lorem-compressed.tar.gz


#Descomprime el archivo lorem-compressed.tar.gz en la carpeta lorem-uncompressed
