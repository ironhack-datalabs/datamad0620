#Example: 

eggs = (1,3,8,3,2)

my_listComprehension = [1/egg for egg in eggs]

print(my_listComprehension)


#Insert here the module/library import statements 

import math
import os
import random

#1. Calculate the square number of the first 20 numbers. Use square as the name of the list.
# Remember to use list comprehensions and to print your results
print('\n---------------------------------1--------------------------------\n')
square = [x**2 for x in range(20)]
print(square)


#2. Calculate the first 50 power of two. Use power_of_two as the name of the list.
# Remember to use list comprehensions and to print your results
print('\n---------------------------------2--------------------------------\n')
power_of_two = [2**x for x in range(50)]
print(power_of_two)


#3. Calculate the square root of the first 100 numbers. Use sqrt as the name of the list.
# You will probably need to install math library with pip and import it in this file.  
# Remember to use list comprehensions and to print your results
print('\n---------------------------------3--------------------------------\n')

sqrt = [math.sqrt(x) for x in range(100)]
print(sqrt)

#4. Create this list [-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0]. Use my_list as the name of the list.
# Remember to use list comprehensions and to print your results
print('\n---------------------------------4--------------------------------\n')

my_list = [x for x in range(-10,1)]
print(my_list)



#5. Find the odd numbers from 1-100. Use odds as the name of the list. 
# Remember to use list comprehensions and to print your results
print('\n---------------------------------5--------------------------------\n')

odds = [x for x in range(1,100,2)]
print(odds)
# or odds = [x for x in range(100) if x%2]


#6. Find all of the numbers from 1-1000 that are divisible by 7. Use divisible_by_seven as the name of the list.
# Remember to use list comprehensions and to print your results
print('\n---------------------------------6--------------------------------\n')

divisible_by_seven = [x for x in range(0,1000,7) if x != 0]
print(divisible_by_seven)
# or divisible_by_seven = [x for x in range(1000) if x%7==0 and x!=0]


#7. Remove all of the vowels in a string. Hint: make a list of the non-vowels. Use non_vowels as the name of the list.
# Remember to use list comprehensions and to print your results
# You can use the following test string but feel free to modify at your convenience
print('\n---------------------------------7--------------------------------\n')
teststring = 'Find all of the words in a string that are monosyllabic'
non_vowels = ''.join(x for x in teststring if x.lower() not in 'aeiou')
print(non_vowels)


#8. Find the capital letters (and not white space) in the sentence 'The Quick Brown Fox Jumped Over The Lazy Dog'. 
# Use capital_letters as the name of the list.  
# Remember to use list comprehensions and to print your results
print('\n---------------------------------8--------------------------------\n')
sentence = 'The Quick Brown Fox Jumped Over The Lazy Dog'
capital_letters = ''.join(x for x in sentence if x == x.upper() and x.isalpha())
print(capital_letters)


#9. Find all the consonants in the sentence 'The quick brown fox jumped over the lazy dog'.
# Use consonants as the name of the list.
# Remember to use list comprehensions and to print your results.
print('\n---------------------------------9--------------------------------\n')
sentence = 'The quick brown fox jumped over the lazy dog'
consonants = set([x for x in sentence if x.lower() not in 'aeiou'])
print(consonants)


#10. Find the folders you have in your madrid-oct-2018 local repo. Use files as name of the list.  
# You will probably need to import os library and some of its modules. You will need to make some online research.
# Remember to use list comprehensions and to print your results.
print('\n--------------------------------10--------------------------------\n')
files = [x for x in os. listdir('../../../')]
# ../../../ path relativo --- path absoluto'/home/must4in3/Desktop/datamad0620'
print(files)




#11. Create 4 lists of 10 random numbers between 0 and 100 each. Use random_lists as the name of the list. 
#You will probably need to import random module
# Remember to use list comprehensions and to print your results
print('\n--------------------------------11--------------------------------\n')

random_lists = [[random.randrange(0,100) for _ in range(10)] for _ in range(4)]
print(random_lists)

#12. Flatten the following list of lists. Use flatten_list as the name of the output.
# Remember to use list comprehensions and to print your results
print('\n--------------------------------12--------------------------------\n')
list_of_lists = [[1,2,3],[4,5,6],[7,8,9]]
flatten_list = [v for x in list_of_lists for v in x]
# se puede hacer utilizando argumentos posicionales???
print(flatten_list)




#13. Convert the numbers of the following nested list to floats. Use floats as the name of the list. 
# Remember to use list comprehensions and to print your results.
print('\n--------------------------------13--------------------------------\n')
list_of_lists = [['40', '20', '10', '30'], ['20', '20', '20', '20', '20', '30', '20'], \
['30', '20', '30', '50', '10', '30', '20', '20', '20'], ['100', '100'], ['100', '100', '100', '100', '100'], \
['100', '100', '100', '100']]

floats = [float(v) for x in list_of_lists for v in x]
print(floats)

#14. Handle the exception thrown by the code below by using try and except blocks. 
print('\n--------------------------------14--------------------------------\n')

for i in ['a','b','c']:
    try:
        print(i**2)
    except Exception as e:
        print('Error: No puede ser un string')
        

#15. Handle the exception thrown by the code below by using try and except blocks. 
#Then use a finally block to print 'All Done.'
# Check in provided resources the type of error you may use. 
print('\n--------------------------------15--------------------------------\n')
x = 5
y = 0

try:
    z = x/y
except ZeroDivisionError:
    print('Error: No se puede dividir por 0')    
print('All Done.')




#16. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 
print('\n--------------------------------16--------------------------------\n')
abc=[10,20,20]
try:
    print(abc[3])
except IndexError:
    print('Error: la lista no tiene el valor en este index')


#17. Handle at least two kind of different exceptions when dividing a couple of numbers provided by the user. 
# Hint: take a look on python input function. 
# Check in provided resources the type of error you may use. 
print('\n--------------------------------17--------------------------------\n')


while True:
    try:
        x = int(input('dime el primer valor '))
        y = int(input('dime el segundo valor '))
        break
    except ValueError:
        print('Error: hay que poner un numero, ojo!')

if y == 0:
    raise ZeroDivisionError('Error: No se puede dividir el numero por 0')
print(x/y)




#18. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 
print('\n--------------------------------18--------------------------------\n')

try:
    f = open('testfile','r')
    f.write('Test write this')
except FileNotFoundError:
    print('Error: no ha encontrado el fichero')




#19. Handle the exceptions that can be thrown by the code below using try and except blocks. 
#Hint: the file could not exist and the data could not be convertable to int
print('\n--------------------------------19--------------------------------\n')

try:
    fp = open('myfile.txt')
    line = f.readline()
    i = int(s.strip())
except FileNotFoundError:
    print('Error: no se encontró el fichero corecto')
except ValueError:
    print('Error: los datos no se pueden convertir en int')    



#20. The following function can only run on a Linux system. 
# The assert in this function will throw an exception if you call it on an operating system other than Linux. 
# Handle this exception using try and except blocks. 
# You will probably need to import sys 
print('\n--------------------------------20--------------------------------\n')

def linux_interaction():
    assert ('linux' in sys.platform), "Function can only run on Linux systems."
    print('Doing something.')
try:
    linux_interaction()
except NameError:
    print('Error: necesita importar sys')

# Bonus Questions:

# You will need to make some research on dictionary comprehension to solve the following questions

#21.  Write a function that asks for an integer and prints the square of it. 
# Hint: we need to continually keep checking until we get an integer.
# Use a while loop with a try,except, else block to account for incorrect inputs.
print('\n--------------------------------21--------------------------------\n')

while True:
    try:
        x = round(float(input('Dime un numero entero')))
        print('el quadrado del numero es:', x**2)      
        break
    except ValueError:
        print('Error: los datos no se pueden convertir en int')  

# 22. Find all of the numbers from 1-1000 that are divisible by any single digit besides 1 (2-9). 
# Use results as the name of the list 

print('\n--------------------------------22--------------------------------\n')


result = list(set([x for x in range(1000) for y in range(2,10) if x%y == 0]))
result.append(1)
print(sorted(result))




# 23. Define a customised exception to handle not accepted values. 
# You have the following user inputs and the Num_of_sections can not be less than 2.
# Hint: Create a class derived from the pre-defined Exception class in Python
print('\n--------------------------------23--------------------------------\n')

while True:
    try:
        Total_Marks = int(input("Enter Total Marks Scored: ")) 
        Num_of_Sections = int(input("Enter Num of Sections: "))
        if Num_of_Sections < 2:
            raise Exception('no puede poner un valor debajo del 2')
        else:
            break
    except ValueError:
        print('Error: los datos no se pueden convertir en int') 
    

