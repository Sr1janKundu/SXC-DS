def bubblesort(elements):
    swapped = False
    # Looping from size of list from last index[-1] to index [0]
    for n in range(len(elements)-1, 0, -1):
        for i in range(n):
            if elements[i] > elements[i + 1]:
                swapped = True
                # swapping data if the element is less than next element in the list
                elements[i], elements[i + 1] = elements[i + 1], elements[i]       
        if not swapped:
            # exiting the function if we didn't make a single swap
            # meaning that the array is already sorted.
            return
        print("On pass:", i+1, "the list becomes: ", elements)
 
if __name__ == '__main__':
    elements = []
    n = int(input("Enter the size of the list: "))
    print("Enter the elements of the list now.")
    for i in range(n):
        elements.append(int(input()))
    print("Unsorted list is,")
    print(elements)
    bubblesort(elements)
    print("Sorted Array is, ")
    print(elements)