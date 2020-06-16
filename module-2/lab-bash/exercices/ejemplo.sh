#!/usr/bin/python3

#Imprime en consola Hello World.
echo 'Hello word'
# Crea un directorio nuevo llamado new_dir
mkdir new_dir
#Elimina ese directorio.
rmdir new_dir
# Copia el archivo sed.txt dentro de la carpeta lorem a la carpeta lorem-copy.
cp -r sed.txt ../lorem-copy
#Copia los otros dos archivos de la carpeta lorem a la carpeta lorem-copy en una sola línea mediante ;
cp -r at.txt ../lorem-copy ; cp -r lorem.txt ../lorem-copy
#Muestra el contenido del archivo sed.txt dentro de la carpeta lorem.
cat sed.txt
#Muestra el contenido de los archivos at.txt y lorem.txt dentro de la carpeta lorem.
cat sed.txt ; cat at.txt
#Visualiza las primeras 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
cat sed.txt | head -3
head -3 sed.txt
#Visualiza las ultimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
cat lorem-copy/sed.txt | tail -3
#Añade Homo homini lupus. al final de archivo sed.txt dentro de la carpeta lorem-copy.
sed -i '$a Homo homini lupus' lorem-copy/sed.txt
# Visualiza las últimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy. Deberías ver ahora Homo homini lupus..
cat lorem-copy/sed.txt | tail -3
#Sustituye todas las apariciones de et por ET del archivo at.txt dentro de la carpeta lorem-copy. Deberás usar sed.
#sed -i 's/texto-a-buscar/texto-a-reemplazar/g' "Fichero o directorio"
sed -i 's/et/ET/g' lorem-copy/at.txt
# Encuentra al usuario activo en el sistema.
who -a
w -f
#Encuentra dónde estás en tu sistema de ficheros.
pwd
# Lista los archivos que terminan por .txt en la carpeta lorem.
ls lorem/*.txt
# Cuenta el número de líneas que tiene el archivo sed.txt dentro de la carpeta lorem.
wc -l lorem/sed.txt
#Cuenta el número de archivos que empiezan por lorem que están en este directorio y en directorios internos.
# directory y files --> find . -iname "lorem*" | wc -l
find . -name "lorem*" -type f| wc -l
# Encuentra todas las apariciones de et en at.txt dentro de la carpeta lorem.
grep -r et lorem/at.txt
# Cuenta el número de apariciones del string et en at.txt dentro de la carpeta lorem.
grep -r et lorem/at.txt | wc -l # solo las 7 que están sola
grep -r et* lorem/at.txt | wc -l # todos los et aunque dentro palabras
# Cuenta el número de apariciones del string et en todos los archivos del directorio lorem-copy.'''
grep -c -r -i "et" lorem-copy/*
'''
«-r» indica que se debe realizar de forma recursiva en todos
los subdirectorios contenidos en la ubicación
proporcionada. «-i» permite omitir las mayúscula
y minúsculas, haciendo que la búsqueda sea mucho más
sencilla. «palabra o palabras» es el texto que
 queremos probar. «/home/redeszone» es la ruta sobre
 la que se realizará la búsqueda.'''

#Bonus
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
