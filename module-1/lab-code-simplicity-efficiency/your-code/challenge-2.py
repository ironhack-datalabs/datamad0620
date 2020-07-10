"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""
import string
import random
import sys
def RandomStringGenerator(l, a=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9']):
    #p = 0
    #s = ''
    #while p<l:
    #    import random
    #    s += random.choice(a)
    #    p += 1
    #return s
    return "".join([random.choice(a) for x in range(l)])

"""
def inputs():
    global a
    a = input('Enter minimum string length: ')
    global b
    b = input('Enter maximum string length: ')
    global n
    n = input('How many random strings to generate? ')
    if a == '':
        a=8
    if b== '':
        b=12
    if n == '':
        n=12
    return n,a,b
"""

def BatchStringGenerator(n=12,a=5,b=5):
    r = []
    for i in range(n):
        c = None
        if a < b:
            c = random.choice(range(a, b))
        elif a == b:
            c = a
        else:
            sys.exit('Incorrect min and max string lengths. Try again.')
        r.append(RandomStringGenerator(c))
    return r

def runcode():
    print(BatchStringGenerator())

runcode()

#que horror jaja, estaba intentando hacer que si el usuario no escribiese nada nos quedamos con el valor default. 
#estoy muy picado, pero te dejo que me ilumines :)!
#la i parece tener un error, pero funciona...