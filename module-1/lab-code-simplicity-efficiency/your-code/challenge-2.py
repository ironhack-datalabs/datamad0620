"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""

import random
import string

lista = []

min_len = int(input('Enter minimum string length: '))
max_len = int(input('Enter maximum string length: '))
number = int(input('How many random strings to generate? '))

def randomizer(x):
    st = ''
    for i in range (x):
        st += random.choice(string.ascii_lowercase + string.digits)
    return st

try:
    for i in range(number):
        lista.append(randomizer(random.randint(min_len, max_len)))

except:
    print('Incorrect min and max string lengths. Try again.')