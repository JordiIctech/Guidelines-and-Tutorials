import re
print("=====================================================================")
"""
s = "hello"
s = s[:1] + "n" + s[3:]
print(s)

s = "{2} {1} {0} {2}".format("Python", "Is", 2)
print(s)

s = "{c} {a} {b} {c}".format(a="Python", b="Is", c=2)
print(s)

for i in s:
    print(i)

print(s.index("on"))

s = "|".join(["John","Mary"])
print(s)

import csv

file = open("D4.txt","r")

for each in file:
    print(each)


from flatten_json import flatten

person = {
"firstname": "John",
"lastname": "Smith",
"adress": [{"Home": "3485 34 St", "zip": "76789"}]
}

flatJ = flatten(person)
print(person)
print(flatJ)




stringy = "Hello there people reading this, I have something important to ask Jordi: Howdy?"

research = re.findall("[A-Z]\w*", stringy) # Finds all capitalized words. Making the Z -> z would make all words starting with a letter.

print(research)

file = open("D4.txt","r")
fileinfo = []

for each in file:
    remove = re.sub("\D", "", each)
    if remove != "":
        fileinfo += [remove]

print(*fileinfo,sep="\n")
"""


file = open("D4.txt","r")
fileinfo = []

for i in file:
    fileinfo += re.findall("[\w.]+@[\w.]+.[\w]+", i)

print(*fileinfo,sep="\n")














