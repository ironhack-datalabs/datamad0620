
def maxSide():
    top=int(input("What is the maximal length of the triangle side? Enter a number: "))
    if top<5:
        print("Input must be strictly larger than 1, please introduce input again.")
        return maxSide()
    else:
        result=max([max([x, y, z]) for x in range(5,top) for y in range(4,top) for z in range(3,top) if (x*x==y*y+z*z)])
        print(f"The longest side possible is {result}")
maxSide()
