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


if __name__ == '__main__':
    arr = [5, 9, 10, 17, 23, 31, 36, 37, 99]   # sorting of the list is to be incorporated later on
    temp = 10                                  # take both these two as user-input after the aforesaid incorporation

    bin_search(arr, temp)