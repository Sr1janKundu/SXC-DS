# Insertion sort

def insertionSort(array, n):

    for step in range(1, n):
        temp = array[step]
        j = step - 1
        
        # Compare temp with each element on the left of it until an element smaller than it is found
        # For descending order, change temp<array[j] to temp>array[j].        
        while j >= 0 and temp < array[j]:
            array[j + 1] = array[j]
            j = j - 1
        
        # Place temp at after the element just smaller than it.
        array[j + 1] = temp



if __name__ == '__main__':

    data = []
    len = int(input("Enter the lenght of the array: "))
    print("Now input the array.")
    for i in range(len):
        data.append(int(input("Input: ")))
    print("The input array is: ", data)
    insertionSort(data, len)
    print('Sorted array in ascending order:')
    print(data)