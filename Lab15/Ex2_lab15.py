sides=int(input("Enter the number of sides: "))
if  sides < 3 or sides > 10:
	print ("ERROR!,Give appropriate number of sides")
elif sides==3:
	print ("It is a Triangle")
elif sides==4:
	print ("It is a Quadrilateral")
elif sides==5:
	print ("It is a Pentagon")
elif sides==6:
	print ("It is a Hexagon")
elif sides==7:
	print ("It is a Heptagon")
elif sides==8:
	print ("It is a Octagon")
elif sides==9:
	print ("It is a Nonagon")
elif sides==10:
	print ("It is a Decagon")