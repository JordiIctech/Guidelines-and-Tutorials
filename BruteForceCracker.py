print("--------------------------------------------Function--------------------------------------")
import numpy as np
from numpy import random as rnd

#Password Cracker

password = input("What is the password? ")

codes = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

def crack(*args):
    givenlist = list(args)
    givenpass = givenlist[0] #Get input password into function.

    guess =""
    guesslist=[]
    x=0

    while guess != givenpass:
        x += 1
        guess =""
        guesslist=[]

        gLength=rnd.randint(1,6) # Makes random guess lengths 1 to 5 (6 not included.)

        for i in range(0,gLength):
            guesslist.append(codes[rnd.randint(len(codes)-1)]) #Picks random code
            guess =""
            guess = guess.join(guesslist)

        print(guess)
            
    print(f"Password is: {guess} and took {x} tries." )

crack(password)