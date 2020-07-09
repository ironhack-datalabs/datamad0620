"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.

The code is very long and messy. Refactor it according to what you have learned about
code simplicity and efficiency.
"""

print('Welcome to this calculator!')
print('It can add and subtract whole numbers from zero to five')
a = input('Please choose your first number (zero to five): ')
b = input('What do you want to do? plus or minus: ')
c = input('Please choose your second number (zero to five): ')

def calculadora(nu1, ope, nun2):
    letras= ["zero","one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
    numeros= [0,1,2,3,4,5]
    for i in range(len(letras)):
        if nu1 in letras[i]:
            first= numeros[i]
        if nun2 in letras[i]:
            second= numeros[i]
    if ope == "plus":
        resultado= first + second
        return f'{nu1} {ope} {nun2} equals {letras[resultado]}'
    if ope == "minus":
        resultado = first - second
        if resultado >= 0:
            return f'{nu1} {ope} {nun2} equals {letras[resultado]}'
        if resultado < 0:
            return f'{nu1} {ope} {nun2} equals minus {letras[-resultado]}'
            
print(calculadora(a,b,c))

if (not a == 'zero' and not a == 'one' and not a == 'two' and not a == 'three' and not a == 'four' and not a == 'five') or (not c == 'zero' and not c == 'one' and not c == 'two' and not c == 'three' and not c == 'four' and not c == 'five') or (not b == 'plus' and not b == 'minus'):
    print("I am not able to answer this question. Check your input.")

print("Thanks for using this calculator, goodbye :)")
