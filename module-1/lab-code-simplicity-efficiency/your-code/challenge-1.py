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
a = float(input('Please choose your first number (zero to five): '))
b = input('What do you want to do? plus or minus: ')
c = float(input('Please choose your second number (zero to five): '))

if a in range(6) and c in range(6):
    if b=="plus":
        sol = a + c
        print(f"{a} {b} {c} equals {sol}")
    if b=="minus":
        sol = a - c
        print(f"{a} {b} {c} equals {sol}")


else:
    print("I am not able to answer this question. Check your input.")

print("Thanks for using this calculator, goodbye :)")

