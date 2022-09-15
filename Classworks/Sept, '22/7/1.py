## Create a list which contains 'n' arbitary numbers where value of 'n' to be entered by the user.
## Input another number which is to be searched in the list. Display messege whether or not found.


def numfind():
    n = int(input("Enter the size of the array: "))
    a = []
    print("Now enter the numbers.")
    for i in range(n):
        a.append(int(input()))

    search = int(input("Enter the number to be searched: "))
    count = 0
    for i in range(n):
        if a[i] == search:
            print(search, "found at", i, "th index of the array.")
            count += 1

    if count == 0:
        print(search, "not found in array.")
    else:
        print(search, "was found in the array", count, "times.")

if __name__ == "__main__":
    numfind()