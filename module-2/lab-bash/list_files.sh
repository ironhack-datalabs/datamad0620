
#!/bin/bash

#Imprime en consola Hello World.
printf "Hello Word"
#Crea un directorio nuevo llamado new_dir.
mkdir new_dir
#Elimina ese directorio.
rmdir new_dir
#Copia el archivo sed.txt dentro de la carpeta lorem a la carpeta lorem-copy.
cp ../lorem/at.txt  ../lorem-copy
#Copia los otros dos archivos de la carpeta lorem a la carpeta lorem-copy en una sola línea mediante ;.
MacBook-Air-de-Juan:lorem juanblanco$ cp ../lorem/*  ../lorem-copy
#Muestra el contenido del archivo sed.txt dentro de la carpeta lorem.
cat sed.txt
#Muestra el contenido de los archivos at.txt y lorem.txt dentro de la carpeta lorem.
cat sed.txt at.txt
#Visualiza las primeras 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
head -n 3 sed.txt
#Visualiza las ultimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
tail -n 3 sed.txt
#Añade Homo homini lupus. al final de archivo sed.txt dentro de la carpeta lorem-copy.
echo "Homo homini lupus" >> sed.txt
#Visualiza las últimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy. Deberías ver ahora Homo homini lupus..
tail -n 3 sed.txt
#Sustituye todas las apariciones de et por ET del archivo at.txt dentro de la carpeta lorem-copy. Deberás usar sed.
sed -E 's/et/ET/g'  at.txt
#Encuentra al usuario activo en el sistema.
who am i
#Encuentra dónde estás en tu sistema de ficheros.
pwd
#Lista los archivos que terminan por .txt en la carpeta lorem.
ls | grep .txt
#Cuenta el número de líneas que tiene el archivo sed.txt dentro de la carpeta lorem.
wc -l at.txt
#Cuenta el número de archivos que empiezan por lorem que están en este directorio y en directorios internos.
ls | grep lorem | wc -l
#Encuentra todas las apariciones de et en at.txt dentro de la carpeta lorem.
cat at.txt | grep -e "et" | wc -w
#Cuenta el número de apariciones del string et en at.txt dentro de la carpeta lorem.
grep -e "et" * | wc -w
#Cuenta el número de apariciones del string et en todos los archivos del directorio lorem-copy.
grep -e "et" ../lorem-copy/* | wc -w



#Ficheros bash
name="Juan"
printf $name
mkdir $name
rmdir $name

ls
for f in lorem/* ; do
    chrlen=${#f}
    echo "$f has $chrlen characters lenght"
done

top

ps -eo args

sysctl -n machdep.cpu.brand_string

alias py ="python3"
alias ll ="ls -all"
alias la="ls -a"

zip -r  lorem-compressed.tar.gz * /lorem, * /lorem-copy
unzip lorem-compressed.tar.gz -d lorem-uncompressed