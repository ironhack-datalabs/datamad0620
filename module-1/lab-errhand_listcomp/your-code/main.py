""" 
#Example: 

eggs = (1,3,8,3,2)

my_listComprehension = [1/egg for egg in eggs]

print(my_listComprehension)

#Insert here the module/library import statements 
"""
import math
import os
import random
import sys

"""

#1. Calculate the square number of the first 20 numbers. Use square as the name of the list.
# Remember to use list comprehensions and to print your results

square=[n**2 for n in range(20)]
print (square)


#2. Calculate the first 50 power of two. Use power_of_two as the name of the list.
# Remember to use list comprehensions and to print your results

power_of_two=[2**n for n in range(50)]
print (power_of_two)

#3. Calculate the square root of the first 100 numbers. Use sqrt as the name of the list.
# You will probably need to install math library with pip and import it in this file.  
# Remember to use list comprehensions and to print your results

sqrt=[math.sqrt(n) for n in range(100)]
print (sqrt)


#4. Create this list [-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0]. Use my_list as the name of the list.
# Remember to use list comprehensions and to print your results

my_list=[n for n in range(-10,1)]
print(my_list)


#5. Find the odd numbers from 1-100. Use odds as the name of the list. 
# Remember to use list comprehensions and to print your results

odds=[n for n in range(1,101) if n%2==1]
print (odds)


#6. Find all of the numbers from 1-1000 that are divisible by 7. Use divisible_by_seven as the name of the list.
# Remember to use list comprehensions and to print your results

divisible_by_seven=[n for n in range(1,1001) if n%7==0]
print(divisible_by_seven)


#7. Remove all of the vowels in a string. Hint: make a list of the non-vowels. Use non_vowels as the name of the list.
# Remember to use list comprehensions and to print your results
# You can use the following test string but feel free to modify at your convenience

teststring = 'Find all of the words in a string that are monosyllabic'
vowels= ['a','e','i','o','u']
non_vowels=[s for s in teststring if s not in vowels]
print (*non_vowels)


#8. Find the capital letters (and not white space) in the sentence 'The Quick Brown Fox Jumped Over The Lazy Dog'. 
# Use capital_letters as the name of the list.  
# Remember to use list comprehensions and to print your results

sentence = 'The Quick Brown Fox Jumped Over The Lazy Dog'
capital_letters=[l for l in sentence if str.isupper(l)==True]
print(*capital_letters)

#9. Find all the consonants in the sentence 'The quick brown fox jumped over the lazy dog'.
# Use consonants as the name of the list.
# Remember to use list comprehensions and to print your results.

vowels= ['a','e','i','o','u']
sentence = 'The Quick Brown Fox Jumped Over The Lazy Dog'
consonants=[l for l in sentence if l not in vowels]
print(*consonants)


#10. Find the folders you have in your madrid-oct-2018 local repo. Use files as name of the list.  
# You will probably need to import os library and some of its modules. You will need to make some online research.
# Remember to use list comprehensions and to print your results.

files=[f for f in os.listdir(path='/Users/adrianacoca/datamad0620')]

#11. Create 4 lists of 10 random numbers between 0 and 100 each. Use random_lists as the name of the list. 
#You will probably need to import random module
# Remember to use list comprehensions and to print your results

random_lists=[[n for n in random.sample(range(1,101),10)]for l in range(4)]
print (*random_lists)

#12. Flatten the following list of lists. Use flatten_list as the name of the output.
# Remember to use list comprehensions and to print your results

list_of_lists = [[1,2,3],[4,5,6],[7,8,9]]
flatten_list=[n for l in list_of_lists for n in l]
print (flatten_list)

#13. Convert the numbers of the following nested list to floats. Use floats as the name of the list. 
# Remember to use list comprehensions and to print your results.

list_of_lists = [['40', '20', '10', '30'], ['20', '20', '20', '20', '20', '30', '20'], \
['30', '20', '30', '50', '10', '30', '20', '20', '20'], ['100', '100'], ['100', '100', '100', '100', '100'], \
['100', '100', '100', '100']]

floats=[float(n) for f in list_of_lists for n in f]
print (floats)



#14. Handle the exception thrown by the code below by using try and except blocks. 
for i in ['a','b','c']:
    try:
        print (i**2)
    except Exception as e:
    print ("Error: a, b, c are strings,therefore they can't be squared")



#15. Handle the exception thrown by the code below by using try and except blocks. 
#Then use a finally block to print 'All Done.'
# Check in provided resources the type of error you may use. 

x = 5
y = 0
try:
    z = x/y
    print(y)
except ZeroDivisionError:
    print("Error: Cannot divide by zero")


#16. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 

abc=[10,20,20]
try:
    print(abc[3])
except IndexError:
    print("Error:The index i in print(abc[i]) is out of range")


#17. Handle at least two kind of different exceptions when dividing a couple of numbers provided by the user. 
# Hint: take a look on python input function. 
# Check in provided resources the type of error you may use. 

a=input("Enter the number you want to divide:")
b=input("Enter the number you want to divide by:")
try: 
    print(a/b)
except: 
    if ZeroDivisionError:
        print("Error: Cannot divide by zero")
    elif TypeError:
        print("Error: Both numbers have to be integers or floats")


#18. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 
try:
    f = open('testfile','r')
    f.write('Test write this')
except: 
    if FileNotFoundError: 
        print("Error: the file has not been found")


#19. Handle the exceptions that can be thrown by the code below using try and except blocks. 
#Hint: the file could not exist and the data could not be convertable to int
try: 
    fp = open('myfile.txt')
    line = f.readline()
    i = int(s.strip())
except: 
    if FileNotFoundError:
        print("Error 1: The file has not been found")
    if ValueError:
        print("Error 2: Could not convert data to an integer.")


#20. The following function can only run on a Linux system. 
# The assert in this function will throw an exception if you call it on an operating system other than Linux. 
# Handle this exception using try and except blocks. 
# You will probably need to import sys 

def linux_interaction():
    assert ('linux' in sys.platform), "Function can only run on Linux systems."
    print('Doing something.')
try: 
    linux_interaction()
except:
    if AssertionError: 
        print("ERROR: You do not have a Linux system")

# Bonus Questions:

# You will need to make some research on dictionary comprehension to solve the following questions
"""
#21.  Write a function that asks for an integer and prints the square of it. 
# Hint: we need to continually keep checking until we get an integer.
# Use a while loop with a try,except, else block to account for incorrect inputs.

def square():
    n=int(input("Enter the number you want to square:"))
    print (n**2)
try: 
    square()
except: 
    if TypeError:
        print("Number must be an integer or float")
        square()
    else: 
        square()

"""

# 22. Find all of the numbers from 1-1000 that are divisible by any single digit besides 1 (2-9). 
# Use results as the name of the list 




# 23. Define a customised exception to handle not accepted values. 
# You have the following user inputs and the Num_of_sections can not be less than 2.
# Hint: Create a class derived from the pre-defined Exception class in Python

Total_Marks = int(input("Enter Total Marks Scored: ")) 
Num_of_Sections = int(input("Enter Num of Sections: "))

"""

