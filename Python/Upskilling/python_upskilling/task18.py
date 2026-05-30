def printnums(start,end):
    if(end<start):
        print("Enter valid start and end")
    else:
        i=start
        for i in range(start,end+1):
            if(i%2==0):
                break
        if (i<end+1 and i%2==0):
            print("First even number",i)
        else:
            print("No even numbers in range")
start=int(input("Enter start of range: "))
end=int(input("Enter end of the range: "))
printnums(start,end)
