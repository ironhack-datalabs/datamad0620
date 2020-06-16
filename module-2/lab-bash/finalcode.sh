#1. Imprime Hello World

    echo "Hello World"

#2. Crear un nuevo directirio llamado "new_dir"
    
    mkdir new_dir

#3. Borramos el directorio que acabamos de crear.

    rmdir new_dir

#4. Copiamos el archivo desde lorem a lorem.copy

    cp ~/Documents/Ironhack/datamad0620/module-2/lab-bash/lorem/lorem.txt ~/Documents/Ironhack/datamad0620/module-2/lab-bash/lorem-copy

#5. Copiamos los dos archivos restantes mediante una sola linea utilizando ;

    cp ~/Documents/Ironhack/datamad0620/module-2/lab-bash/lorem/sed.txt ~/Documents/Ironhack/datamad0620/module-2/lab-bash/lorem-copy ; cp ~/Documents/Ironhack/datamad0620/module-2/lab-bash/lorem/at.txt ~/Documents/Ironhack/datamad0620/module-2/lab-bash/lorem-copy

#6. Abrimos sed.txt dentro de la carpeta Lorem

    cat ~/Documents/Ironhack/datamad0620/module-2/lab-bash/lorem/sed.txt

#7. Abrimos at.txt y lorem.txt dentro de la carpeta lorem.

    cat ~/Documents/Ironhack/datamad0620/module-2/lab-bash/lorem/at.txt ; cat ~/Documents/Ironhack/datamad0620/module-2/lab-bash/lorem/lorem.txt

#8. Mostramos las 3 primeras lineas de sed.txt 

    head -n 3 ~/Documents/Ironhack/datamad0620/module-2/lab-bash/lorem-copy/sed.txt

#9. Mostramos las 3 últimas líneas de sed.txt

    tail -n 3  ~/Documents/Ironhack/datamad0620/module-2/lab-bash/lorem-copy/sed.txt

#10. Sustituimos et por ET en lorem-copy

    sed -i -e 's/et/ET/g' ~/Documents/Ironhack/datamad0620/module-2/lab-bash/lorem-copy/at.txt

#11. Usuario log.

    whoami

#12. Donde estoy en el sistema de ficheros.

    pwd

#13. Encontrar los archivos txt dentro de lorem.

    ls *.txt

#14. Contar lineas de sed.txt

    wc -l sed.txt
    cat sed.txt | wc
    Me cuenta una linea de menos!! 

#15. Contar los archivos que contienen lorem.

    find . -iname lorem* | wc -l

#16. Encontrar las apariciones de ET

    grep et at.txt

#17. Contar la palabra et en at.txt
    
    grep -o -i et  at.txt | wc -l

#18. Buscamos et en el directorio lorem-copy:

    grep et -r /Users/antonioortiz/Documents/Ironhack/datamad0620/module-2/lab-bash/lorem-copy

    