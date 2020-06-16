echo "Hello World"
mkdir new_dir
rmdir new_dir
cp -R ./lorem/sed.txt ./lorem-copy/sed.txt
cp -R ./lorem/{at.txt,lorem.txt} ./lorem-copy
cat ./lorem/sed.txt
cat ./lorem/{at.txt,lorem.txt}
head -3 ./lorem-copy/sed.txt
tail -3 ./lorem-copy/sed.txt
echo "Homo homini lupus." >> ./lorem-copy/sed.txt
cat ./lorem-copy/sed.txt
sed 's/et/ET/' ./lorem-copy/at.txt
w 
pwd
find ./lorem  -type f -name "*.txt"
wc -l ./lorem/sed.txt
ls -d */  lorem*
grep -r -F " et " ./lorem/at.txt
grep -r -F " et " ./lorem/at.txt | wc -l
grep -r -F " et " ./lorem-copy | wc -l
code . list_files.sh
#Aqui dentro escribo "#!/bin/bash ls"
bash list_files.sh