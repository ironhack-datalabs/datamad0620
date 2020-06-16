#!/usr/bin/python3



#Almacena en una variable name tu nombre.
name='Nicola'
#Imprime esa variable.
echo $name
#Crea un directorio nuevo que se llame como el contenido de la variable name.
mkdir Nicola
#Elimina ese directorio.
rm -r Nicola
# Por cada archivo dentro de la carpeta lorem imprime el número de 
#carácteres que tienen sus nombres. Intenta primero mostrar los archivos 
#mediante un bucle for
# https://bioinf.comav.upv.es/courses/unix/scripts_bash.html#bucles-for
#estructura bucle
'''for VARIABLE in lorem;
do
	cat lorem/*
	COMANDO 2
	...
	COMANDO N
done'''
for f in lorem/*; do echo $f; done
#Muestra los procesos de forma jerárquica que se están ejecutando en tu ordenador:
#Usando el comando top o htop
top
# Usando el comando ps con argumentos
ps
# Muestra información sobre tu procesador por pantalla
cat /proc/cpuinfo

#Crea 3 alias y haz que estén disponibles cada vez que inicias sesión

#Comprime las carpetas lorem y lorem-copy en un archivo llamado lorem-compressed.tar.gz

#Descomprime el archivo lorem-compressed.tar.gz en la carpeta lorem-uncompressed