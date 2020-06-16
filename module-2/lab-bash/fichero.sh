echo Hello World

mkdir new_dir

rm -r new_dir

cp lorem/sed.txt lorem-copy

cp lorem/*.txt lorem-copy

cat at.txt

cat lorem.txt

cat lorem/sed.txt | head -n 3

cat lorem/sed.txt | tail -n 3

echo Homo homini lupus. >> lorem/sed.txt

cat lorem/sed.txt | tail -n 3

sed -n 's/et/ET/g' lorem-copy/at.txt

whoami

pwd

ls -l lorem *.txt

wc -l lorem/sed.txt

find .|grep lorem | wc -l

cat lorem/at.txt | grep et

cat lorem/at.txt |grep et| wc -w

cat lorem-copy/* |grep et| wc -w







