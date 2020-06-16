##1st
echo 'Hello World!'

#!/bin/bash
##2nd
mkdir 'new_dir'

##3rd
rm -r 'new_dir'

##4th
#cp lorem/sed.txt lorem-copy/sed_copy.txt

##5th
#cp lorem/at.txt lorem-copy/at_copy.txt ; cp lorem/lorem.txt lorem-copy/lorem_copy.txt

##6th
#cat lorem/sed.txt

##7th
#cat lorem/at.txt ; cat lorem/lorem.txt

##8th
#head -n3 lorem-copy/sed_copy.txt

##9th
#tail -n3 lorem-copy/sed_copy.txt

##10th
#echo 'Homo homini lupus.' >> lorem-copy/sed_copy.txt

##11th
#tail -n3 lorem-copy/sed_copy.txt

##12th
#sed -i 's/et/ET/g' lorem-copy/at_copy.txt

##13th
#whoami

##14th
#pwd

##15th
#ls lorem/*.txt

##16th
#wc -l lorem/sed.txt

##17th
#ls -R lorem* | wc -l

##18th
#grep -o -i et lorem/at.txt

##19th
#grep -o -i et lorem/at.txt | wc -w

##20th
#grep -o -i et lorem-copy/* | wc -w

##FICHEROS BASH

name=German
echo $name
mkdir $name -v
rm -r $name -v

for e in lorem/*
do
    z=`echo $e | sed 's/.*\///'`
    echo $z
    echo $z | wc -m 

done

#Cant find top
ps aux

cat /proc/cpuinfo

alias la='ls -la'
alias ..='cd ..'
alias gs='echo $USER'

#tar -cvzf lorem-compressed.tar.gz lorem lorem-copy

#tar -zxvf lorem-compressed.tar.gz -C /lorem-uncompressed