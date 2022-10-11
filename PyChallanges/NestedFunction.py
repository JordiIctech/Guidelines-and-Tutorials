"""
N denotes number of known clones.
H Denotes clone indexes.
Clones may do two things:
1. Clone themselves into clone #(i*2) AND clone #(i*2+1)
or
2. Do Nothing
Find how many confirmed clones there are based on the behavior.
"""

def totalShops(N, H):
    result= 0
    shops = []
    for i in H:
        if i%2 == 0:
            shops += [i+1]
            shops += [i/2]
        elif i != 1: 
            shops += [i-1]
    Cshops = set(shops + H)
    if len(Cshops) != N:
        totalShops(len(Cshops),list(Cshops))
    else:
        print(len(Cshops))

    return result


N = int(input())
A = list(map(int, input().split()))


totalShops(N, A)
