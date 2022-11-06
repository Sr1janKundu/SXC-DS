'''
Reverse the content of any file and copy the bytes in another file.
'''

file1 = input("Enter the input file name: ")
file2 = input("Enter output file name: ")

fp1, fp2 = open(file1, 'rb'), open(file2, 'wb')

data = fp1.read()
n = len(data)

data1 = data[-1:-n-1:-1]       #reversing the content of input file
fp2.write(data1)

print("File reverse copy is over.")

fp1.close()
fp2.close()