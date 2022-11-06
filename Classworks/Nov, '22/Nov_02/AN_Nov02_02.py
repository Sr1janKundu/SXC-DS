'''
Write a program to split one input file to two output files.
'''

file1 = input('Enter input file name: ')
file2 = input('Enter first output file name: ')
file3 = input('Enter second output file name: ')

fp1, fp2, fp3 = open(file1, 'rb'), open(file2, 'wb'), open(file3, 'wb')

data = fp1.read()
n = len(data)

n1 = n//2
n2 = n - n1

data1 = data[0:n1]
data2 = data[n1:n]

fp2.write(data1)
fp3.write(data2)

print("File splitting is over.")
print(f"Size of {file1} is {n} bytes.")
print(f"Size of {file2} is {n1} bytes.")
print(f"Size of {file3} is {n2} bytes.")

fp1.close()
fp2.close()
fp3.close()