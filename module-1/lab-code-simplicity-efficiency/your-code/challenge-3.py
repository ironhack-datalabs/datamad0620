"""
You are presented with an integer number larger than 5. Your goal is to identify the longest side
possible in a right triangle whose sides are not longer than the number you are given.

For example, if you are given the number 15, there are 3 possibilities to compose right triangles:

1. [3, 4, 5]
2. [6, 8, 10]
3. [5, 12, 13]

The following function shows one way to solve the problem but the code is not ideal or efficient.
Refactor the code based on what you have learned about code simplicity and efficiency.

def my_function(X):
    solutions = []
    for x in range(5, X):
        for y in range(4, X):
            for z in range(3, X):
                if (x*x==y*y+z*z):
                  solutions.append([x, y, z])
    m = 0
    for solution in solutions:
        if m < max(solution):
            m = max(solution)
    return m

X = input("What is the maximal length of the triangle side? Enter a number: ")

print("The longest side possible is " + str(my_function(int(X))))
"""
#Solucion de felipe

from random_words import get_param
from math import floor


def largest_edge(n):
    for h in range(n,0,-1):
        h2 = h**2
        low_limit = floor((h2/2)**.5)
        """Since `h**2 == a**2+b**2`, the largest value possible
           for `a` and `b` is `(h**2/2)**.5`, the case in witch both
           catheti have the same size. Considering that and that no
           right triangle exists with a cathetus the same size as the
           hypothenuse, we can safely define the range bellow.""" 
        for a in range(h-1,low_limit,-1):
            b = (h2-a**2)**.5
            if b == int(b) != 0:
                return list(map(int,(h,a,b)))

if __name__ == "__main__":
    n = get_param("What is the maximal length of the triangle side? Enter a number: ")
    res = largest_edge(n)
    if res: print(f"The longest side possible is {res[0]} in triangle {res}")
    else: print("It was not possible to find such a triangle.")