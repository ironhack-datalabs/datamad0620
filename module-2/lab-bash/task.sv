# Imprime en consola Hello World.
 echo  hello world

#Crea un directorio nuevo llamado new_dir.
 
 mkdir n_dir

#Elimina ese directorio.

rmdir n_dir

# Copia el archivo sed.txt dentro de la carpeta lorem a la carpeta lorem-copy.
 
cp lorem/sed.txt lorem-copy

#Copia los otros dos archivos de la carpeta lorem a la carpeta lorem-copy en una sola línea mediante ;.

cp lorem/at.txt lorem-copy; cp lorem/lorem.txt lorem-copy

# Muestra el contenido del archivo sed.txt dentro de la carpeta lorem.

cat lorem/sed.txt

#Muestra el contenido de los archivos at.txt y lorem.txt dentro de la carpeta lorem.

cat lorem/sed.txt ; cat lorem/lorem.txt

#Visualiza las primeras 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy

cat lorem/sed.txt |head -n 3

#Visualiza las ultimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy

cat lorem/sed.txt |tail -n 3

#Añade Homo homini lupus. al final de archivo sed.txt dentro de la carpeta lorem-copy.

echo Homo Hominni Lupus >> lorem-copy/sed.txt


#Visualiza las últimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy. Deberías ver ahora Homo homini lupus..

cat lorem-copy/sed.txt 
# si que veo Homo Hommini Lopus

# Sustituye todas las apariciones de et por ET del archivo at.txt dentro de la carpeta lorem-copy. Deberás usar sed

sed ' s/et/ET/g' lorem-copy/at.txt

# Encuentra al usuario activo en el sistema.

logname / id / whoami

#Encuentra dónde estás en tu sistema de ficheros.

pwd 

#Lista los archivos que terminan por .txt en la carpeta lorem.

ls lorem/*.txt

# Cuenta el número de líneas que tiene el archivo sed.txt dentro de la carpeta lorem.

wc -l lorem/sed.txt

# Cuenta el número de archivos que empiezan por lorem que están en este directorio y en directorios internos.

ls - l lorem* 
me da los archivos y añado | wc -1 me los cuenta


#Encuentra todas las apariciones de et en at.txt dentro de la carpeta lorem.

grep 'et' in at.txt

#Cuenta el número de apariciones del string et en at.txt dentro de la carpeta lorem
sed ' s/et/ET/g' lorem-copy/at.txt | wc -l

#Cuenta el número de apariciones del string et en todos los archivos del directorio lorem-copy.

sed ' s/et/ET/g' lorem-copy/at.txt* | wc -l


BONUS 

#Almacena en una variable name tu nombre.

name=jose

#Imprime esa variable.

echo $name

#Crea un directorio nuevo que se llame como el contenido de la variable name.

mkdir $name y rmdir $name

# Muestra los procesos de forma jerárquica que se están ejecutando en tu ordenador:

top 

ps / ps -ef / ps uxa

http://persoal.citius.usc.es/tf.pena/ASR/Tema_3html/node2.html


#Comprime las carpetas lorem y lorem-copy en un archivo llamado lorem-compressed.tar.gz

tar -czf lorem-compressed.tar.gz lorem lorem-copy

#Descomprime el archivo lorem-compressed.tar.gz en la carpeta lorem-uncompressed

tar -xvf lorem-compressed.tar.gz