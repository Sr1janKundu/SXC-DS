def primecheck(n):
    count = 0
    from numpy import sqrt
    for i in range(2 , int(sqrt(n) + 1)):
        if n%i == 0:
            count += 1
    if count == 0:
        return 1
    else:
        return -1


if __name__ == '__main__':
    n = int(input("Enter number of prime fibonaccis to be calculated: "))    
    list1 = [1, 1]       #initial seed of fibonacci seed
    while sum(list1) <= n:
        i = 2
        list1.append(list1[i-1] + list1[i-2])
        i += 1

    list2 = []
    for j in range(0, len(list1)):
        if primecheck(list1[j]) == 1:
            list2.append(list1[j])
        j += 1

    print(list2)



