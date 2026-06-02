f=open("file1.txt",'w') 
# resets everytime when the prigram is run
f.write("Hello Cognizant !!") 
# rewrites contents
f.close()
f=open("file1.txt") # default read mode
print(f.read())
f.close()