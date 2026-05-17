side1=float(input("Enter the length of the side 1 : "))
side2=float(input("Enter the length of the side 2 : "))
side3=float(input("Enter the length of the side 3 : "))
if side1==side2 and side2==side3:
	print ("It is an equilateral triangle with",side1,",",side2,"and",side3,'sides')
elif side1==side2 and side2!=side3 and side3!=side1 or side2==side3 and side3!=side1 and side2!=side1 or side3==side1 and side2!=side3 and side1!=side2:
	print ("It is an isosceles triangle with",side1,",",side2,"and",side3,'sides')
else:
	print ("It is a scalene triangle")