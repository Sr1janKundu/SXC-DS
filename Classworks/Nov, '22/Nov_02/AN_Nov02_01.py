'''
--File handling--
Can be text file, can be binary file.

'''
'''
Question 1: 
Write a program to copy content of one file to another file.
'''

file1 = input('Enter input file name: ')
file2 = input('Enter output file name: ')

fp1, fp2 = open(file1, 'rb'), open(file2, 'wb')

data = fp1.read()      #reads the entire file and stores in 'data'
n = len(data)          #length of input data
fp2.write(data)        #transfering data from input file to output file

print('File copy is over.')
print(f"Size of {file1} = {n} bytes.")

fp1.close()
fp2.close()