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
            n -= 1
        return l
    else:
        raise Exception('Incorrect min and max string lengths. Try again.')
a = input('Enter minimum string length: ')
b = input('Enter maximum string length: ')
n = input('How many random strings to generate? ')
print(BatchStringGenerator(int(n), int(a), int(b)))

























"""
def RandomStringGenerator(l=12, a=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9']):
    p = 0
    s = ''
    while p<l:
        import random
        s += random.choice(a)
        p += 1
    return s

def BatchStringGenerator(n, a=8, b=12):
    r = []
    for i in range(n):
        c = None
        if a < b:
            import random
            c = random.choice(range(a, b))
        elif a == b:
            c = a
        else:
            import sys
            sys.exit('Incorrect min and max string lengths. Try again.')
        r.append(RandomStringGenerator(c))
    return r

a = input('Enter minimum string length: ')
b = input('Enter maximum string length: ')
n = input('How many random strings to generate? ')

print(BatchStringGenerator(int(n), int(a), int(b)))
"""