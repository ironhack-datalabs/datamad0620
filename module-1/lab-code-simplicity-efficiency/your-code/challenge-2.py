"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.


def RandomStringGenerator(l=12, a=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9']):
    p = 0
    s = ''
    while p<l:
        import random
        s += random.choice(a)
        p += 1
    return s
 """  


def random_string_generator(l=12, letter_pool=ascii_lowercase):
    return "".join([choice(letter_pool) for p in range(l)
        
                   
                 
               





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
                    
#ojo soluciones de felipe sin repasar                 
'''                    
from random import choice
from string import ascii_lowercase

def get_param(string):
    """Checking if input is a valid `int`, otherwise
       raises a ValueError."""
    inp = input(string).strip()
    try: return int(inp)
    except: raise ValueError(f"{inp} is not a valid integer...")

def random_string_generator(num_letters, letter_pool=ascii_lowercase):
    """Returns a random word of {num_letters} size using letters given
       as {letter_pool}, lowercase ascii letters by default, but could be
       used with any list of characters."""
    return "".join([choice(letter_pool) for _ in range(num_letters)])

def batch_string_generator(mini,maxi,qtty):
    """Given a range {mini,maxi}, return {qtty} words of len in that range.
       If mini and maxi are invalid (mini>maxi), values are flipped to avoid error."""
    if mini > maxi:
        mini,maxi = maxi, mini
    return [random_string_generator(choice(range(mini,maxi+1))) for _ in range(qtty)]

if __name__ == "__main__":
    messages = ['Enter minimum string length: ',
               'Enter maximum string length: ',
               'How many random strings to generate? ']
    inputs = [get_param(mes) for mes in messages]
    print(batch_string_generator(*inputs))
    """No code except function definitions out of this `if`,
       this way we can import `get_param` for use in `right_triangles.py`"""                    
                    
                    
'''