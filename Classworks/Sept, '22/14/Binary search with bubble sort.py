def bin_search(arr, temp):
    low = 0
    high = len(arr)

    while low <= high:
        m = (low+high)//2
        if temp == arr[m]:
            print("Value found at index", m, ".")
            break
        else:
            if temp > arr[m]:
                low = m+1
            else:
                high = m-1
    if low>high:
        print("Value not found!")


def bubblesort(arr):
    swapped = False
    # Looping from size of list from last index[-1] to index [0]
    for n in range(len(arr)-1, 0, -1):
        for i in range(n):
            if arr[i] > arr[i + 1]:
                swapped = True
                # swapping data if the element is less than next element in the list
                arr[i], arr[i + 1] = arr[i + 1], arr[i]       
        if not swapped:
            # exiting the function if we didn't make a single swap
            # meaning that the array is already sorted.
            return

if __name__ == '__main__':
    arr = []
    n = int(input("Enter the size of the list: "))
    print("Enter the elements of the list now.")
    for i in range(n):
        arr.append(int(input()))
    temp = int(input("Enter the value to find in the list: "))
    bubblesort(arr)
    print("The sorted list is: ", arr)
    bin_search(arr, temp)