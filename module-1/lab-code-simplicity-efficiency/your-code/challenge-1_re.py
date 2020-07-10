numbers={"zero":0,"one":1,"two":2,"three":3,"four":4,"five":5,"six":6,"seven":7,"eight":8,"nine":9,"ten":10}
limit=["one","two","three","four","five"]
operator = ["plus","minus"]
resultado=None

def suma(num1,num2):
    oper_suma=numbers[f"{num1}"]+numbers[f"{num2}"]
    for  number,int_number in numbers.items():
        if oper_suma==int_number:
            resultado=number
    print(f"{num1} plus {num2} equals {resultado}")

def resta(num1,num2):
    oper_resta=numbers[f"{num1}"]-numbers[f"{num2}"]
    for  number,int_number in numbers.items():
        if oper_resta==int_number:
            resultado=number
    if num1 >= num2:
        print(f"{num1} plus {num2} equals {resultado}")
        return
    print(f"{num1} plus {num2} equals minus {resultado}")

def calculadora():
    a = input('Please choose your first number (zero to five): ')
    b = input('What do you want to do? plus or minus: ')
    c = input('Please choose your second number (zero to five): ')
    if a and c not in limit:
        print("I am not able to answer this question. Check your input.")
        return
    if b not in operator:
        print("I am not able to answer this question. Check your input.")
        return
    if b == "plus":
        suma(a,c)
    if b == "minus":
        resta(a,c)
    print("Thanks for using this calculator, goodbye :)")

calculadora()