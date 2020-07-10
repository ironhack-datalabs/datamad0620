"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.

The code is very long and messy. Refactor it according to what you have learned about
code simplicity and efficiency.
"""


#Aquí empezamos


def calculator():
    print('Welcome to this calculator!')
    print('It can add and subtract whole numbers from zero to five')
    a = input('Please choose your first number (zero to five): ')
    b = input('What do you want to do? plus or minus: ')
    c = input('Please choose your second number (zero to five): ')
    try:
        dicc= {'zero':0, 'one':1, 'two':2, 'three':3, 'four':4, 'five':5, 'negative one':-1, 'negative two':-2, 'negative three':-3, 'negative four':-4, 'negative five':-5}
        calc = {'plus':(lambda a, c: a + c), 'minus':(lambda a, c: a - c)}
        sign = calc.get(b)
        resultado = sign(dicc.get(str(a)), dicc.get(str(c)))
        invert = [k for k,v in dicc.items() if v == resultado]
        #return (f"{a} {b} {c} equals {resultado}")
        print('{} {} {} equals {}'.format(a, b, c, invert[0]))
    
    except:
        print("I am not able to answer this question. Check your input.")

calculator()


print("Thanks for using this calculator, goodbye :)")
