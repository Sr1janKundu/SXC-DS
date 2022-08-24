a = float(input("Enter the first number: "))
b = float(input("Enter the second number: "))
c = float(input("Enter the third number: "))

big = a
if b > big:
    big = b
if c > big:
    big = c


small = a
if b < small:
    small = b
if c < small:
    small = c    

print("The largest of these numbers is: ", big)
print("The smallest of these numbers is: ", small)