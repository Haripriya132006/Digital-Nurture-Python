from math import * 

def demo(num1,num2):
    print(pi)
    print(inf)
    # there are tau e and nan
    # as there is nan there is isnan(x)

    print(ceil(num1),ceil(num2))
    # floor 

    # permutaion to compute number of ways to choode k items from n items 
    print("permutation: ",perm(5,3)) # perm(n,k) where n>k2
    print("factorial",factorial(int(num1)))# fatorial takes int val

    print((0.1+0.2)==0.3) # false as 0.1 +0.2 give 0.3000000 something
    print(isclose(0.1+0.2,0.3)) # here the val of 0.30000000 something is made to 0.3 to match

    print(pow(num1,num2)) 
    # there are sqrt -square root  
    # cbrt -cuberoot
    # log(x,base)
    # log10(x) helps to find the number of digits in a number
    print(int(log10(123))+1)
    # sin(x) cos(x) tan(x)
    # degrees(x)  - radians to degree
    # radians(x)  - degree to radians
    # dist(p,q)   - distance btwn p and q
    
num1=float(input("Enter a number: "))
num2=float(input("Enter another number: "))
demo(num1,num2)