def newRandomStringGenerator(c):
    return "".join([random.choice(string.ascii_lowercase + string.digits) for letra in range(c)])

    #string contains both the alphabet and the first 10 number starting from 0

def newBatchStringGenerator(n, a=8, b=12):
    c = random.choice(range(a, b))
    return [newRandomStringGenerator(c) for palabra in range(n)]


a = input('Enter minimum string length: ')
b = input('Enter maximum string length: ')
n = input('How many random strings to generate? ')

print(newBatchStringGenerator(int(n), int(a), int(b)))