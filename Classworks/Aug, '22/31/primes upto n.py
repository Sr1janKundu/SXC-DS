from cmath import sqrt
import math
from unicodedata import name


def primecheck(n):
    count = 0
    from numpy import sqrt
    for i in range(2 , int(sqrt(n) + 1)):
        if n%i == 0:
            count += 1
    if count == 0:
        #print(n, "is a prime number.")
        return 1
    else:
        #print(n, "is not a prime number.")
        return -1


def primeslist(n):
    i = 2
    list = []
    while i <= n:
        if primecheck(i) == 1:
            list.append(i)
        i += 1

    print(list)

if __name__ == '__main__':
    n = int(input("Enter the number upto which prime numbers are to be shown: "))
    primeslist(n)
