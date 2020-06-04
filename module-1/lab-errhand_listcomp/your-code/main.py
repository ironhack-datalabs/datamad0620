
#Example: 

eggs = (1,3,8,3,2)

my_listComprehension = [1/egg for egg in eggs]

print(my_listComprehension)

#Insert here the module/library import statements 

import math
import random
import sys
import os
import os.path


#1. Calculate the square number of the first 20 numbers. Use square as the name of the list.
# Remember to use list comprehensions and to print your results

square=[x**2 for x in range(20)]
print(square)




#2. Calculate the first 50 power of two. Use power_of_two as the name of the list.
# Remember to use list comprehensions and to print your results

power_of_two=[2**potencia for potencia in range(50)]
print(power_of_two)



#3. Calculate the square root of the first 100 numbers. Use sqrt as the name of the list.
# You will probably need to install math library with pip and import it in this file.  
# Remember to use list comprehensions and to print your results

sqrt=[math.sqrt(x) for x in range(100)]
print(sqrt)



#4. Create this list [-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0]. Use my_list as the name of the list.
# Remember to use list comprehensions and to print your results

my_list=sorted([-x  for x in range(11)])
print(my_list)

#5. Find the odd numbers from 1-100. Use odds as the name of the list. 
# Remember to use list comprehensions and to print your results

odds=[ numero for numero in range(1,100) if numero%2!=0]
print(odds)

#6. Find all of the numbers from 1-1000 that are divisible by 7. Use divisible_by_seven as the name of the list.
# Remember to use list comprehensions and to print your results

divisible_by_seven=[ numbers for numbers in range(1,1000) if numbers %7==0 ]

print(divisible_by_seven)


#7. Remove all of the vowels in a string. Hint: make a list of the non-vowels. Use non_vowels as the name of the list.
# Remember to use list comprehensions and to print your results
# You can use the following test string but feel free to modify at your convenience

teststring = 'Find all of the words in a string that are monosyllabic'
vowels=["a","e","i","o","u"]
non_vowels=[ letras for letras in teststring if letras not in vowels]
print(non_vowels)


#8. Find the capital letters (and not white space) in the sentence 'The Quick Brown Fox Jumped Over The Lazy Dog'. 
# Use capital_letters as the name of the list.  
# Remember to use list comprehensions and to print your results
sentence="The Quick Brown Fox Jumped Over The Lazy Dog"
capital_letters=[ f"Encontrada una:{letter} " for letter in sentence if letter.isupper()]
print(capital_letters)


#9. Find all the consonants in the sentence 'The quick brown fox jumped over the lazy dog'.
# Use consonants as the name of the list.
# Remember to use list comprehensions and to print your results.
vowels=["a","e","i","o","u"]
sentence='The quick brown fox jumped over the lazy dog'
consonants=[ consonantes for consonantes in sentence if consonantes not in vowels and consonantes!= " "  ]
print(consonants)

#10. Find the folders you have in your madrid-oct-2018 local repo. Use files as name of the list.  
# You will probably need to import os library and some of its modules. You will need to make some online research.
# Remember to use list comprehensions and to print your results.

#for x in os.listdir("/Users/juanblanco/Documents/datamad0620/datamad0620/module-1/"):
#        for e in x.listdir()


files= set([ e for x in os.walk("../../../") for e in x[1]  ])
print(files)


#11. Create 4 lists of 10 random numbers between 0 and 100 each. Use random_lists as the name of the list. 
#You will probably need to import random module
# Remember to use list comprehensions and to print your results

random_lists=[ random.sample(range(100),10 ) for x in range(4) ]
print(random_lists)


#12. Flatten the following list of lists. Use flatten_list as the name of the output.
# Remember to use list comprehensions and to print your results

list_of_lists = [[1,2,3],[4,5,6],[7,8,9]]
flatten_list=[ y for x in list_of_lists for y in x]
print(flatten_list)


#13. Convert the numbers of the following nested list to floats. Use floats as the name of the list. 
# Remember to use list comprehensions and to print your results.

list_of_lists = [['40', '20', '10', '30'], ['20', '20', '20', '20', '20', '30', '20'], \
['30', '20', '30', '50', '10', '30', '20', '20', '20'], ['100', '100'], ['100', '100', '100', '100', '100'], \
['100', '100', '100', '100']]

floats=[ float(x) for listas in list_of_lists for x in listas]
print(floats)



#14. Handle the exception thrown by the code below by using try and except blocks. 
#Porque si le quito los parentesis el error no me deja cojerlo
try:
    for i in ['a','b','c']:
        print (i**2)
        pass
except Exception:
    print("hay un error ")



#15. Handle the exception thrown by the code below by using try and except blocks. 
#Then use a finally block to print 'All Done.'
# Check in provided resources the type of error you may use. 

try:
    x = 5
    y = 0
    z = x/y
except :
    pass
finally:
    print("All done")



#16. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 
try:

    abc=[10,20,20]
    print(abc[3])
except IndexError:
    print("Index fuera de rango")


#17. Handle at least two kind of different exceptions when dividing a couple of numbers provided by the user. 
# Hint: take a look on python input function. 
# Check in provided resources the type of error you may use. 

try:
    numero1=int(input("Primer numero:"))
    numero2=int(input("Segundo numero"))
    resultado=numero2/numero1
    print(resultado)
except ValueError:
    print("La numeros tiene que ser interos")
except ZeroDivisionError:
    print("No se puede dividir el 0 prueba otro")


#18. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 

try:
    f = open('testfile','r')
    f.write('Test write this')
except FileNotFoundError:
    print("No encontramos el archivo")



#19. Handle the exceptions that can be thrown by the code below using try and except blocks. 
#Hint: the file could not exist and the data could not be convertable to int

try:
    fp = open('myfile.txt')
    line = f.readline()
    i = int(s.strip())
except FileNotFoundError:
    print("No lo encontramos")



#20. The following function can only run on a Linux system. 
# The assert in this function will throw an exception if you call it on an operating system other than Linux. 
# Handle this exception using try and except blocks. 
# You will probably need to import sys 

def linux_interaction():
    assert ('linux' in sys.platform), "Function can only run on Linux systems."
    print('Doing something.')
try:
    linux_interaction()
except AssertionError:
    print("Es un mac , sorry")


# Bonus Questions:

# You will need to make some research on dictionary comprehension to solve the following questions

#21.  Write a function that asks for an integer and prints the square of it. 
# Hint: we need to continually keep checking until we get an integer.
# Use a while loop with a try,except, else block to account for incorrect inputs.

def elcuadradode(n):
    print(n**2)


while True:
    try:
        n=int(input("Mete un numero, y te doy el cuadrado:"))
        elcuadradode(n)
        break
    except ValueError:
        print("Solo introducir numeros enteros")

# 22. Find all of the numbers from 1-1000 that are divisible by any single digit besides 1 (2-9). 
# Use results as the name of the list 

results = [  (n,[x for x in range(2,10) if n%x==0]) for n in range(1,1001) for x in range(2,10) if n%x==0]
print(results)
#print([[n,[x for x in range(2,10) if n%x==0]] for n in range(1,1001) if [x for x in range(2,10) if n%x==0]])



print({k:v for k,v in {n:[x for x in range(2,10) if n%x==0] for n in range(1,1001)}.items() if v})
 


# 23. Define a customised exception to handle not accepted values. 
# You have the following user inputs and the Num_of_sections can not be less than 2.
# Hint: Create a class derived from the pre-defined Exception class in Python



class Error(Exception):
    """"base class for other excptions"""
    pass
class Menor_de_dos(Error):
    pass

while True:
    try:
        Total_Marks = int(input("Enter Total Marks Scored: ")) 
        Num_of_Sections = int(input("Enter Num of Sections: "))
        if Total_Marks > 2 or Num_of_Sections > 2 :
            raise Menor_de_dos(" Tiene que ser numeros menores de dos")
        break
    except Menor_de_dos:
        print("Tiene que ser ambos numeros menores de dos")
