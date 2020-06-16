#1
echo "Hello World"

#2 
mkdir new_dir

#3
rmdir new_dir

#4
cp -R ./lorem/sed.txt ./lorem-copy/sed.txt

#5
cp -R ./lorem/{at.txt,lorem.txt} ./lorem-copy

#6
cat ./lorem/sed.txt

#7
cat ./lorem/{at.txt,lorem.txt}

#8
head -3 ./lorem-copy/sed.txt

#9
tail -3 ./lorem-copy/sed.txt

#10
echo "Homo homini lupus" >> ./lorem-copy/sed.txt

#11
tail -2 ./lorem-copy/sed.txt

#12
sed 's/et/ET/' ./lorem-copy/at.txt

#13
w

#14
pwd

#15
find ./lorem  -type f -name "*.txt"

#16
wc -l ./lorem/sed.txt