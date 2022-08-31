import math
term=1.0
sum=1.0
n=1
error=0.00001
x=float(input("Enter the value of x :"))
while(math.fabs(term)>error and n<=100):

    print(n," ",term," ",sum)
    term=term*float(x/n)
    sum+=term
    n+=1
if(n<100):
    print("Convergent")
else:
    print("Divergent")
print("Sum :",sum)
