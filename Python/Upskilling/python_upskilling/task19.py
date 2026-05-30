def sumodd(end):
    sum=0
    if(end<0):
        print("Enter valid end")
    else:
        for i in range(end+1):
            if(i%2==0):
                continue
            else:
                sum+=i
    return sum

print(sumodd(10))
