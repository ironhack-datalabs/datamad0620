X = input("What is the maximal length of the triangle side? Enter a number: ")

def my_function(X):
    return max([[x, y, z] for x in range(5, X) for y in range(4, X) for z in range(3, X) if (x*x==y*y+z*z)])

print("The longest side possible is " + str(my_function(int(X))))


