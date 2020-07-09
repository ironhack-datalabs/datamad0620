print('Welcome to this calculator!')
print('It can add and subtract whole numbers from zero to five')

a = input('Please choose your first number (zero to five): ')
b = input('What do you want to do? plus or minus: ')
c = input('Please choose your second number (zero to five): ')

num_list = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
opp_list = ["plus", "minus"]

num_dict = {
"zero": 0,
"one": 1,
"two": 2,
"three": 3,
"four": 4,
"five": 5}

if (not a in num_list) or (not c in num_list) or (not b in opp_list):
    print("I am not able to answer this question. Check your input.")

if b == 'plus':
    print(a, b, c, "equals", num_list[(num_dict[a] + num_dict[c])])

if b == 'minus':
    print(a, b, c, "equals", num_list[(num_dict[a] - num_dict[c])])

print("Thanks for using this calculator, goodbye :)")