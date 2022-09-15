## Input 'n' names and store in a list. Input another name to be searched in the list. If the name found then print "name found"; and if not found, then print "Name" not found.



def namefind():
    n = int(input("Enter the size of the array: "))
    a = []
    print("Now enter the names.")
    for i in range(n):
        a.append(input())

    search = input("Enter the name to be searched: ")
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
    namefind()