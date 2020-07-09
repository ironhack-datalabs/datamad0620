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

numbers={0:"zero",1:"one",2:"two",3:"three",4:"four",5:"five",6:"six",7:"seven",
8:"eich",9:"nein",10:"ten"}
numbers1={"zero":0,"one":1,"two":2,"three":3,"four":4,"five":5}


a_num= numbers1[a]
c_num=numbers1[c]
if a_num in range(0,6) and c_num in range(0,6):
    if b=="plus":
        resultado=a_num+c_num
        print(resultado)
        print(numbers[resultado])
    elif b=="minus":
        resultado=a_num-c_num
        if resultado>0:
            print(numbers[resultado])
        else:
            print("negative "+numbers[int(str(resultado)[1:])])
    
else:
    print("I am not able to answer this question. Check your input.")

print("Thanks for using this calculator, goodbye :)")
