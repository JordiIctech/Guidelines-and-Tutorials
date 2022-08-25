import time

print("=================================================================================================================================")
"""
learningL = ["Learning", "Python", "2", "Fun."]
combS = ""

for i in learningL:            #Loop list into string.
    combS += i + " "

print(combS)

combS2 = " ".join(learningL)   #Direct list to string.
print(combS2)

NumbL = ["Python", 2.7, "bad."]

def combineS():
    return str(" ".join(map(str, NumbL)))

print(str(combineS))



def infofill():
    diction = {"First Name": "", 
    "Last Name": "", 
    "Date of Birth": "",
    "Secondary School": "",
    "Graduation Year": ""}

    for i in diction:
        curin = input(f"PLease write {i}: ")
        diction[i] = curin
    print(diction)

infofill()


def doubler():
    list1 = input("Please provide a list separated by commas: ")
    list2 = [int(i) for i in list1.split(',')]
    listD = [i * 2 for i in list2]
    listF = list2 + listD
    print(listF)

doubler()


def palindrome(stringI):
    reverseS = stringI[::-1]
    if reverseS.lower() == stringI.lower(): print(stringI + " is a palindrome.")
    else: print(reverseS)

palindrome("nan")


palindromeL = lambda stringI: print(stringI + " is a palindrome!.") if (stringI[::-1].lower() == stringI.lower() ) else print(stringI[::-1])

palindromeL("Hoh")

def amazonprime(numb):
    if numb == 0 or numb == 1:
        print("Other")
        return

    S1 = numb // 2
    else:
        for i in range(2,S1+1):
            if numb % i == 0:
                print("Composite")
                return

        print("Prime")

amazonprime(512927377)


def checks(numb):
    modes = []
    print("Average: " + str(round(sum(numb)/len(numb),2)))
    print("Median: Null") if len(numb) % 2 == 0 else print("Median: " + str(numb[(len(numb)//2)]))
    for i in range(0,max(numb)+1): 
        modes += [numb.count(i)]
    print("Mode: Null") if modes.count(max(modes)) != 1 else print("Mode: " + str(modes.index(max(modes))))
    print("Minimum: " + str(min(numb)))
    print("Maximum: " + str(max(numb)))

checks([8,2,3,4,6,6,4])


def checks(numb):
    modes = []
    print("Average: " + str(round(sum(numb)/len(numb),2)))
    print("Median: Null") if len(numb) % 2 == 0 else print("Median: " + str(numb[(len(numb)//2)]))
    for i in range(0,max(numb)+1): 
        modes += [numb.count(i)]
    indexed = [i for i, x in enumerate(modes) if x == max(modes)]
    print("Mode: " + str(indexed))
    print("Minimum: " + str(min(numb)))
    print("Maximum: " + str(max(numb)))

checks([8,2,3,4,6,6,4])

def skipping ():
    gimme = input()
    outs = gimme[::2]
    print(outs)

skipping()


def pyramidscheme (n):
    for i in range(1,n+1):
        numb = str(i) + " "
        print(numb * i)

pyramidscheme(15)


def pyramidscheme2 (n):
    for i in range(n+1,0,-1):
        print("* " * i)

pyramidscheme2(15)


def pyramidscheme3(n):
    [print("* " * i) for i in range(n,0,-1)]

pyramidscheme3(15)
"""







