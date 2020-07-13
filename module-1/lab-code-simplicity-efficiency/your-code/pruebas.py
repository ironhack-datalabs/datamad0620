
import random, string

l=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9']

a = input('Enter minimum string length: ')
b = input('Enter maximum string length: ')
n = input('How many random strings to generate? ')
def RandomGenerator(a,b,n):
   return ''.join(random.choice(l) for i in range(a,b))
RandomGenerator(a, b, n)
import random, string

def random_string(length):
   return ''.join(random.choice(string.lowercase) for i in range(length))

max_length = 5
print(random_string(rando‌​m.randint(1, max_length)))
"""
def RandomStringGenerator(a, b, n):
    





import string
import random

l=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9']

def id_generator(a ,n ,b):
    return [''.join(random.choice(l) for _ in range(n)) for _ in range(a)]

a = input('Enter minimum string length: ')
b = input('Enter maximum string length: ')
n = input('How many random strings to generate? ')

print(id_generator(int(n), int(a), int(b)))

a = input('Enter minimum string length: ')
b = input('Enter maximum string length: ')

n = input('How many random strings to generate? ')

print(BatchStringGenerator(int(n), int(a), int(b)))


ef RandomStringGenerator(l=12, a=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9']):
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
    """