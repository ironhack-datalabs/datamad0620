"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.
"""


import string
import random

# Define function to generate random string of given size
def RandomStringNumberGenerator(string_size):
    string_var = ''
    for i in range (string_size):
        string_var += random.choice(string.ascii_lowercase + string.digits)
    return string_var

# Get inputs (assume its always given an integer)
min_len = int(input('Enter minimum string length: '))
max_len = int(input('Enter maximum string length: '))
while (min_len > max_len):
    print ("Invalid Input: Maximum length gust be greater than", min_len)
    max_len = int(input('Enter maximum string length: '))
num_strings = int(input('How many random strings to generate? '))

# Generate strings
string_list = []
for i in range (num_strings):
    string_list.append(RandomStringNumberGenerator(random.randint(min_len, max_len)))
print(string_list)
