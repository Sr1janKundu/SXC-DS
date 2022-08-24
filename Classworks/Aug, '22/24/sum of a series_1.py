## Input any integer say n (1~20). Calculate and print s = (1) + (1+2) + ... + (1 + 2 + 3 + ... + n)
## Use while loop

n = int(input("Enter any number: "))

count = 1
sum = 0     #final sum
psum = 0    #intermediate sum

while count <= n:
    psum = psum + count
    sum = sum + psum
    count += 1

print("n = ", n, "sum = ", sum)