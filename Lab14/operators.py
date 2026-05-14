num1=float(input('Enter the first number: '))
num2=float(input("Enter the second number: "))
operator=input('Enter the operator for the operation you want to perform: ')
if operator=='+':
	print('You have choosen "+" operator, so the sum of',num1,'and',num2,'is',num1+num2)
if operator=='-':
	print('You have choosen "-" operator, so the difference of',num1,'and',num2,'is',num1-num2)
if operator=='*':
	print('You have choosen "*" operator, so the product of',num1,'and',num2,'is',num1*num2)
if operator=='/':
	print('You have choosen "/" operator, so the quotient of',num1,'and',num2,'is',num1/num2)
if operator=='%':
	print('You have choosen "%"  operator, so the remainder of',num1,'and',num2,'is',num1%num2)
if operator=='^':
	print('You have choosen "^" operator, so the exponential of',num1,'and',num2,'is',num1**num2)