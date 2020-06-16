#Imprime en consola Hello World.
echo hello world
#Crea un directorio nuevo llamado new_dir.cd
mkadir new_dir
#Elimina ese directorio.
rmdir new_dir
#Copia el archivo sed.txt dentro de la carpeta lorem a la carpeta lorem-copy.
cp lorem/sed.txt lorem-copy
#Copia los otros dos archivos de la carpeta lorem a la carpeta lorem-copy en una sola línea mediante ;.
cp lorem/at.txt lorem-copy ; cp lorem/lorem.txt lorem-copy
#Muestra el contenido del archivo sed.txt dentro de la carpeta lorem.
cat lorem/sed.txt

#Muestra el contenido de los archivos at.txt y lorem.txt dentro de la carpeta lorem.
cat lorem/*

#Visualiza las primeras 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
cat lorem-copy/sed.txt | head -n 3


#Visualiza las ultimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy

cat lorem-copy/sed.txt | tail -n 3

#Añade Homo homini lupus. al final de archivo sed.txt dentro de la carpeta lorem-copy.
cat lorem-copy/sed.txt | tail

#Visualiza las últimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy. Deberías ver ahora Homo homini lupus..
cat lorem-copy/sed.txt | tail -n 3
#Sustituye todas las apariciones de et por ET del archivo at.txt dentro de la carpeta lorem-copy. Deberás usar sed.
sed 's/et/ET/g' lorem-copy/at.txt
#Encuentra al usuario activo en el sistema.
who am i
#Encuentra dónde estás en tu sistema de ficheros.
pwd

#Lista los archivos que terminan por .txt en la carpeta lorem.

ls lorem/*txt
#Cuenta el número de líneas que tiene el archivo sed.txt dentro de la carpeta lorem.
wc -l lorem/sed.txt

#Cuenta el número de archivos que empiezan por lorem que están en este directorio y en directorios internos.

find . -name '*.txt' | wc -l

#Encuentra todas las apariciones de et en at.txt dentro de la carpeta lorem.
fgrep -o et lorem/at.txt | wc -l
#Cuenta el número de apariciones del string et en at.txt dentro de la carpeta lorem.
lorem/at.txt | grep -c "et"
#Cuenta el número de apariciones del string et en todos los archivos del directorio lorem-co
lab-bash % less lorem-copy/*txt | grep -c "et"

name="Nerea"
echo $name
mkdir $name
rmdir Nerea





