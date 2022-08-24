## Input n (1~10); calculates = 1-2+3-4+5...

n = int(input("Enter any integer: "))

count = 1
sum = 0
sf = 1

while count <= n:
    sum = sum + sf * count
    sf = -sf
    count += 1

print("The sum is: ", sum)