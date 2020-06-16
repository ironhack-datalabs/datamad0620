# Ejer 1.Imprime en consola `Hello World`.
echo "Hello world"
# Ejer 2.Crea un directorio nuevo llamado `new_dir` y Elimina ese directorio.
mkdir new_dir
rmdir new_dir
# Ejer 3.Copia el archivo `sed.txt` dentro de la carpeta lorem a la carpeta lorem-copy.  
cp -R ./lorem/sed.txt ./lorem-copy/sed.txt
# Ejer 4. Copia los otros dos archivos de la carpeta lorem a la carpeta lorem-copy en una sola línea mediante `;`. 
cp -R ./lorem/{at.txt,lorem.txt} ./lorem-copy
# Ejer 5.mestra el contenido del archivo `sed.txt` dentro de la carpeta lorem.
cat ./lorem/sed.txt
# Ejer 6. Muestra el contenido de los archivos `at.txt` y `lorem.txt` dentro de la carpeta lorem. 
cat ./lorem/{at.txt,lorem.txt}
# Ejer 7. Visualiza las primeras 3 líneas del archivo `sed.txt` dentro de la carpeta lorem-copy 
head -3 ./lorem-copy/sed.txt
# Ejer 8.Visualiza las últimas 3 líneas del archivo `sed.txt` dentro de la carpeta lorem-copy 
tail -3 ./lorem-copy/sed.txt 
# Ejer 9.Añade `Homo homini lupus.` al final de archivo `sed.txt` dentro de la carpeta lorem-copy
echo "Homo homini lupus." >> ./lorem-copy/sed.txt
# Ejer 10.Visualiza las últimas 3 líneas del archivo `sed.txt` dentro de la carpeta lorem-copy. Deberías ver ahora `Homo homini lupus.`. 
tail -3 ./lorem-copy/sed.txt 
# Ejer 11.Sustituye todas las apariciones de `et` por `ET` del archivo `at.txt` dentro de la carpeta lorem-copy. Deberás usar `sed`
sed 's/et/ET/' ./lorem-copy/at.txt
# Ejer 12.Encuentra al usuario activo en el sistema.
w 
# Ejer 13.Encuentra dónde estás en tu sistema de ficheros.
pwd
# Ejer 14.Lista los archivos que terminan por `.txt` en la carpeta lorem.
find ./lorem  -type f -name "*.txt"
# Ejer 15.Cuenta el número de líneas que tiene el archivo `sed.txt` dentro de la carpeta lorem. 
wc -l ./lorem/sed.txt
# Ejer 16.Cuenta el número de **archivos** que empiezan por `lorem` que están en este directorio y en directorios internos.
ls -d */  lorem*
# Ejer 17.Encuentra todas las apariciones de `et` en `at.txt` dentro de la carpeta lorem.
grep -r -F " et " ./lorem/at.txt
# Ejer 18. Cuenta el número de apariciones del string `et` en `at.txt` dentro de la carpeta lorem. 
grep -r -F " et " ./lorem/at.txt | wc -l
# Ejer 19. Cuenta el número de apariciones del string `et` en todos los archivos del directorio lorem-copy. 
grep -r -F " et " ./lorem-copy | wc -l

