## Input size of a list say 'n'. Enter 'n' arbitary numbers and store in a list a[]. Apply bubble sort algorithm to sort the
# list in ascending order. Display both sorted and unsorted list.


def bubblesort():
    n = int(input("Enter the length of the list: "))
    a = []
    print("Now enter the numbers.")
    for i in range(n):
        a.append(int(input()))

    

if __name__ == "__main__":
    bubblesort()