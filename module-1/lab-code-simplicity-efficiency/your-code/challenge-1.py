print('Welcome to this calculator!')
print('It can add and subtract whole numbers from zero to five')


def operation():
    numbers={"zero":0,"one":1,"two":2,"three":3,"four":4,"five":5,0:"zero",1:"one",2:"two",3:"three",4:"four",5:"five",6:"six",7:"seven",8:"eight",9:"nine",10:"ten"}
    a = input('Please choose your first number (zero to five): ')
    b = input('What do you want to do? plus or minus: ')
    c = input('Please choose your second number (zero to five): ')
    d=numbers[a]
    e=numbers[c]
    if d not in range(0,6) or e not in range(0,6):
        print("I am not able to answer this question. Check your input.")
    if e not in range(0,6) or e not in range(0,6):
        print("I am not able to answer this question. Check your input.")
    else:
        if b=="plus":
            result=d+e
        elif b=="minus":
            result=d-e
    if result<0:
        result=int(str(result)[1])
        neg="negative"
        result=numbers[result]
    else:
        result=numbers[result]
        neg=""
    print(f"{a} {b} {c} equals {neg} {result}")

operation()

print("Thanks for using this calculator, goodbye :)")
