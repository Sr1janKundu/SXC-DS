'''
Write a program to convert all capital leters to small letters in any text file.
'''


file1 = input("Enter the input file name: ")
file2 = input("Enter the output file name: ")

fp1 = open(file1, 'rb')
fp2 = open(file2, 'wb')

#data = fp1.read()
fp2.write(fp1.read().lower())

print("Process complete!")

fp1.close()
fp2.close()