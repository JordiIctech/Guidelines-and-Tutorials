def equalSums(S):
    result = ""
    print(S)

    for i in range(0,len(S)-1):
        print("Current iteration is: " + str(i))
        S1 = 0
        S2 = 0
        for z in range(0,i):
            S1 += ord(S[z]) #- 96
        for y in range(i+1,len(S)):
            S2 += ord(S[y]) #- 96
        print(S1)
        print(S2)
        if S1 == S2:
            result = S[i]
            print("BREAK")
            print(result)
            break

        V1 = 0
        V2 = 0

    return result

S = "avengers"  #Answer: g                 #"abec" #Answer: e
equalSums(S)
