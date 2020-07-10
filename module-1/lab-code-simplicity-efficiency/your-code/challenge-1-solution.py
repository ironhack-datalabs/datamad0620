def calculator():
    print('Welcome to this calculator!')
    print('It can add and subtract whole numbers from zero to five')
    print('You can use either numbers or letters!')

    OPERATIONS = {
        'plus':(lambda a, b: a + b),
        'minus':(lambda a, b: a - b)
    }

    # Initialize lists to store accepted values for each input
    accepted_a = [str(i) for i in range(6)]
    numberStrings = ['zero', 'one','two','three','four',
                'five']
    accepted_b = ['plus', 'minus']
    accepted_c = accepted_a

    # Ask user for inputs and validate them
    a = input('Please choose your first number (0 to 5): ')
    while (a not in accepted_a):
        if a in numberStrings:
            print(a)
            break
        else:
            a = input('Invalid Input. Please choose your first number (0 to 5): ')
    b = input('What do you want to do? plus or minus: ')
    while (b not in accepted_b):
        b = input('Invalid Input. What do you want to do? plus or minus: ')
    c = input('Please choose your second number (0 to 5): ')
    while (c not in accepted_c):
        if c in numberStrings:
            break
        else:
            c = input('Invalid Input. Please choose your second number (0 to 5): ')
        

    # Calculate and print result

    if a in numberStrings and c in numberStrings:
        #print('Word --> Word')
        operation = OPERATIONS.get(b)
        result = operation(numberStrings.index(a), numberStrings.index(c))
    elif a in numberStrings and c in accepted_c:
        #print('Word --> Number')
        operation = OPERATIONS.get(b)
        result = operation(numberStrings.index(a), int(c))
    elif a in accepted_a and c in numberStrings:
        #print('Number --> Word')
        operation = OPERATIONS.get(b)
        result = operation(int(a), numberStrings.index(c))
    else:
        #print('Number --> Number')
        operation = OPERATIONS.get(b)
        result = operation(int(a), int(c))
    print(result)
    print("Thanks for using this calculator, goodbye :)")
calculator()