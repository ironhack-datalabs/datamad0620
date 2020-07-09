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


n={"zero":0, "one":1, "two":2, "three":3, "four":4, "five":5, "six":6, "seven":7, "eight":8, "nine":9, "ten":10, "negative one":-1, "negative two":-2, "negative three":-3, "negative four":-4, "negative five":-5}
if b=="plus":
    d = n[a]+n[c]
if b=="minus":
    d = n[str(a)]-n[str(c)]

for key, value in n.items(): 
         if d == value: 
             d = key 

if a not in n.keys() | b not in n.keys() | c not in n.keys(): 
    print("I am not able to answer this question. Check your input.")
    
else:
    print (f"{a} {b} {c} equals {d}") 
print("Thanks for using this calculator, goodbye :)")
