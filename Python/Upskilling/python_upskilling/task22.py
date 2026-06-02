def getbonus(salary):
    # bonus is 10% of salary
    return salary*0.1

salary=int(input("Enter your salary: "));
# printing the bonus
print("The bonus you'll recieve is",getbonus(salary))
# printing the total amount
print("The total Salary with Bonus is",(getbonus(salary)+salary))