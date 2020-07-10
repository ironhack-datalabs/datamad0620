import random
import string

def BatchStringGenerator():
    a = int(input('Enter minimum string length: '))
    b = int(input('Enter maximum string length: '))
    n = int(input('How many random strings to generate? '))
    chars=string.ascii_lowercase + string.digits
    strings=[''.join(random.choice(chars) for _ in range(random.randint(a,b))) for _ in range(n)]
    print(strings)
    
BatchStringGenerator()

