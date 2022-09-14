#Bubble sort in python 

def display(a, id, n):
    print("Number\tIndex\n")
    for i in range(0,n):
        print(a[i], '\t', id[i])

    ans = input("press enter key to continue...")


def bubble(a, id, n):
    flag = 0                #means the list is unsorted
    m = n
    itr = 0                 #itr = number of operations/cpomparisons
    pass1 = 0               #pass1 = number of passes
    
    while flag == 0:
        flag = 1            #assume list is sorted
        pass1 = pass1 + 1
        m = m-1
        for i in range(0, m):
            itr += 1
            if a[i] > a[i+1]:
                t = a[i]
                a[i] = a[i+1]
                a[i+1] = t
                t = id[i]
                id[i] = id[i+1]
                id[i+1] = t
                flag = 0    #if there is interchange then we set flag = 0

            print('No of pass = ', pass1, 'Step number = ', (i+1))

            display(a, id, n)   #to display partially sorted list


    print("Sorted list:")
    display(a, id, n)
    print("Total number of iterations performed: ", itr)


if __name__=='__main__':
    while True:
        a = [0,0,0,0,0,0,0,0,0,0]
        id = [0,0,0,0,0,0,0,0,0,0]
        n = int(input("Enter the size of your list(1-10)= "))
        print("Enter", n, "elements one by one...")
        for i in range(0,n):
            a[i] = int(input("Enter any number: "))
            id[i] = i+1
        print("Unsorted list")
        display(a, id, n)
        bubble(a, id, n)
        choice = input("Do you want to continue(Y/N?):")
        
        if choice != 'Y' and choice != 'y':
            break