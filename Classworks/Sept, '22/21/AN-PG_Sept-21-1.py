# Selection sort

def selcsort(arr, n):
    for step in range(n):
        min_idx = step

        for i in range(step + 1, n):
         
            # to sort in descending order, change > to < in this line
            # select the minimum element in each loop
            if arr[i] < arr[min_idx]:
                min_idx = i
         
        # put min at the correct position
        (arr[step], arr[min_idx]) = (arr[min_idx], arr[step])



if __name__=='__main__':
    data = []
    len = int(input("Enter the lenght of the array: "))
    print("Now input the array.")
    for i in range(len):
        data.append(int(input("Input: ")))
    print("The input arr is: ", data)
    selcsort(data, len)
    print('Sorted array in ascending order:')
    print(data)
