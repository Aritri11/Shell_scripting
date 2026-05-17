price=25.50
discount=0.6
num_of_loaves=int(input("Enter the number of loaves: "))
regular_price=num_of_loaves*price
discount_amt=regular_price*discount
total=regular_price-discount_amt
print ("The regular price is: %5.2f" %regular_price)
print ("The discount amount is: %3.2f" %discount_amt)
print ("The total price is: %5.2f" %total)