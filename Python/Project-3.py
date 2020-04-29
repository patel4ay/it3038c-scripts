import random

hidden = random.randrange(1,99)
#print(hidden)

guess = int(input("Please enter your guess from 1-99: "))
while True:
    if guess < hidden:
        print("Your guess is too low")
        guess = int(input("Guess again: "))
    elif guess > hidden:
        print("Your guess is too high")
        guess = int(input("Guess again: "))
    else:
        print("Your Guess is RIGHT!!!!")      
        break