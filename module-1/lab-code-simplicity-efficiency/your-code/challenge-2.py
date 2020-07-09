"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""
import random
import string

alph=list(string.ascii_lowercase)+[str(i) for i in range(10)]

def RandomStringGenerator(i):
    s = ""
    for x in range(i):
        s += random.choice(alph)
    return s
    
def BatchStringGenerator(a,b,n,alph=alph):
    l=[]
    if a <= b:
        for x in range(n):
            i = random.choice(range(a, b+1))
            l.append(RandomStringGenerator(i))
            n-=1
        return l
    else:
        raise Exception('Incorrect min and max string lengths. Try again.')

a = input('Enter minimum string length: ')
b = input('Enter maximum string length: ')
n = input('How many random strings to generate? ')
print(BatchStringGenerator(int(a), int(b), int(n)))
