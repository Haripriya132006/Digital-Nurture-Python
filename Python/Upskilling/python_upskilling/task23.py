import math
def calculate_area(radius):
    return math.pi*(radius**2)

radius=float(input("Enter the radius: "))
print(f"The area of circle with radius {radius:.2f} is {calculate_area(radius):.2f}")